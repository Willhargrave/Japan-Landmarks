class PagesController < ApplicationController
  def home
    @landmarks = Landmark.all
    @markers = @landmarks.geocoded.map do |landmark|
      {
        lat: landmark.latitude,
        lng: landmark.longitude,
        info_window: render_to_string(partial: "info_window", locals: { landmark: landmark })
      }
    end
  end
end
