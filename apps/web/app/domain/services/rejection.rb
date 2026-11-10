# frozen_string_literal: true

module Services
  # Kontrollierte Abweisung innerhalb einer Transaktion. Wird im Dienst selbst
  # wieder gefangen und in ein Result uebersetzt; die Transaktion wird dabei
  # zurueckgerollt, ohne dass ein Zwischenstand gespeichert wird.
  class Rejection < StandardError
    attr_reader :missing

    def initialize(message, missing: nil)
      super(message)
      @missing = missing
    end
  end
end
