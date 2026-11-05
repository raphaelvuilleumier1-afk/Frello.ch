# frozen_string_literal: true

module Curation
  # Frello-Kuration: manuelle Eventfreigabe (FR-035, BR-004, D-33, ST-002,
  # AC-035, EXC-013, EXC-014) sowie der Kurationsteil des Adminbereichs (FR-038).
  class EventsController < ApplicationController
    before_action :require_curation!
    before_action :load_event, only: %i[show decide]

    def index
      @pending = Event.where(status: "in_review").order(:updated_at)
      @others  = Event.where.not(status: "in_review").order(updated_at: :desc)
    end

    def show
      @completeness = @event.completeness
    end

    def decide
      result = Services::DecideEventReview.new(
        event: @event, actor: current_internal_user,
        outcome: params[:outcome], note: params[:note]
      ).call

      if result.ok?
        redirect_to curation_event_path(@event), notice: "Entscheid erfasst und protokolliert."
      else
        @completeness = @event.completeness
        flash.now[:alert] = result.error
        render :show, status: :unprocessable_entity
      end
    end

    private

    def load_event
      @event = Event.find_by(id: params[:id])
      render "shared/not_found", status: :not_found if @event.nil?
    end
  end
end
