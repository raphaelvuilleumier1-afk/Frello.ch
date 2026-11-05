# frozen_string_literal: true

module Curation
  # DO-024 / PR-011 / FR-046 / AC-045 – nur lesende Ansicht.
  class AuditEntriesController < ApplicationController
    before_action :require_curation!

    def index
      @entries = AuditEntry.recent_first.limit(500)
    end
  end
end
