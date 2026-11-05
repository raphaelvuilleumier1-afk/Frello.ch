# frozen_string_literal: true

# PWA-Manifest als getrenntes Testpaket.
# Umfang: ausschliesslich Installierbarkeit (Manifest + HTTPS bzw. localhost).
# KEIN Service Worker, KEINE Offline-Funktion, KEIN Push, KEINE Hintergrundjobs.
# Icons sind neutrale Testicons ohne jeden Markenbezug.
class PwaController < ApplicationController
  def manifest
    render json: {
      name: "Frello Prototyp 01 (intern)",
      short_name: "Frello Proto",
      description: "Interner Katalog- und Kurationsprototyp. Keine Buchungsfunktion.",
      start_url: "/",
      scope: "/",
      display: "standalone",
      background_color: "#ffffff",
      theme_color: "#1a1a1a",
      lang: "de-CH",
      dir: "ltr",
      prefer_related_applications: false,
      icons: [
        { src: "/icons/test-icon-192.png", sizes: "192x192", type: "image/png", purpose: "any" },
        { src: "/icons/test-icon-512.png", sizes: "512x512", type: "image/png", purpose: "any" },
        { src: "/icons/test-icon-maskable-512.png", sizes: "512x512", type: "image/png", purpose: "maskable" }
      ]
    }, content_type: "application/manifest+json"
  end
end
