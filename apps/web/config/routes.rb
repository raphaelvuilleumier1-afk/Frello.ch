# frozen_string_literal: true

Rails.application.routes.draw do
  # Besuchersicht: interner Katalog (FR-001..FR-004). Keine Buchungsroute.
  root "catalog#index"
  get  "/katalog",           to: "catalog#index",  as: :catalog
  get  "/katalog/:id",       to: "catalog#show",   as: :catalog_event

  # Interne Anmeldung (Prototyp-Hilfsmittel, keine Selbstregistrierung).
  get    "/anmeldung", to: "sessions#new",     as: :sign_in
  post   "/anmeldung", to: "sessions#create"
  delete "/abmeldung", to: "sessions#destroy", as: :sign_out

  # Namensraum heisst ProviderPortal, damit er nicht mit dem Modell Provider
  # kollidiert. Die Routenhelfer bleiben provider_* (as: "provider").
  namespace :provider_portal, path: "anbieter", as: "provider" do
    # ST-001: der zugeordnete Anbieter reicht seine Verifikation ein.
    resource :verification, path: "verifikation", only: %i[create]
    resources :events, path: "events", except: %i[destroy] do
      member { post :submit }
    end
  end

  namespace :curation, path: "kuration" do
    resources :providers, path: "anbieter", only: %i[index new create show] do
      member { post :decide }
    end
    resources :events, path: "events", only: %i[index show] do
      member { post :decide }
    end
    resources :audit_entries, path: "audit", only: %i[index]
  end

  # PWA-Manifest (getrenntes Testpaket, neutrale Testicons).
  # Bewusst KEIN Service Worker: weder Offline- noch Push-Funktionen.
  get "/manifest.webmanifest", to: "pwa#manifest", as: :pwa_manifest

  get "up", to: "rails/health#show", as: :rails_health_check
end
