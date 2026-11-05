# frozen_string_literal: true

module ApplicationHelper
  COMPLETENESS_STATE = {
    present:        [ "vorhanden",                 "state-present" ],
    missing:        [ "fehlt",                     "state-missing" ],
    not_relevant:   [ "nicht einschlägig",         "state-neutral" ],
    not_provided:   [ "nicht angegeben",           "state-neutral" ],
    not_applicable: [ "nicht anwendbar (D-39)",    "state-neutral" ]
  }.freeze

  D31_KIND = {
    always:             "immer erforderlich",
    conditional:        "bedingt erforderlich",
    optional:           "freiwillig",
    not_applicable_mvp: "im MVP nicht anwendbar"
  }.freeze

  def completeness_state_tag(state)
    label, css = COMPLETENESS_STATE.fetch(state, [ state.to_s, "state-neutral" ])
    tag.span(label, class: css)
  end

  def d31_kind_label(kind) = D31_KIND.fetch(kind, kind.to_s)
end
