module DashHelper
  def display_icon(icon_text)
    if icon_text == "clear-day"
      image_tag "weathericons/clear_crop.png"
    elsif icon_text == "clear-night"
      image_tag "weathericons/fair_night_crop.png"
    elsif icon_text == "rain"
      image_tag "weathericons/rain_crop.png"
    elsif icon_text == "snow"
      image_tag "weathericons/snow_crop.png"
    elsif icon_text == "sleet"
      image_tag "weathericons/scattered_snow_showers_crop.png"
    elsif icon_text == "wind"
      image_tag "weathericons/windy_crop.png"
    elsif icon_text == "fog"
      image_tag "weathericons/foggy_crop.png"
    elsif icon_text == "cloudy"
      image_tag "weathericons/mostly_cloudy_crop.png"
    elsif icon_text == "partly-cloudy-day"
      image_tag "weathericons/cloudy_crop.png"
    elsif icon_text == "partly-cloudy-night"
      image_tag "weathericons/clear_night_crop.png"
    else
      image_tag "weathericons/clear_crop.png"
    end
  end
  def precentage_converter(percent_in_float)
    number_to_percentage(percent_in_float.to_f * 100, precision: 0)
  end
end