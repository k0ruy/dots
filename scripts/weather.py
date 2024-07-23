import requests
import datetime

# Replace YOUR_API_KEY with your actual API key from OpenWeatherMap
api_key = "e275251187aeb500b1ccfac1e171e6db"
city = "Novaggio"

# Set the URL for the OpenWeatherMap API to fetch the current weather in Lugano
url = f"http://api.openweathermap.org/data/2.5/weather?q={city}&units=metric&appid={api_key}"

# Define a dictionary to map weather conditions to icons
icons = {
    "Clear": " ",
    "Clouds": " ",
    "Rain": "  ",
    "Drizzle": "  ",
    "Thunderstorm": " ",
    "Snow": "󰼶 ",
    "Mist": "󰖑 ",
    "NightClear": " ",
    "NightClouds": " ",
    "NightRain": " ",
    "NightSnow": " ",
}

# Make a request to the API
response = requests.get(url)

# Check if the response was successful (i.e., has a status code of 200)
if response.status_code == 200:
    # Parse the JSON data from the response
    data = response.json()
    # Extract the current temperature and weather condition from the JSON data
    temperature = data["main"]["temp"]
    condition = data["weather"][0]["main"]

    sunset_time = datetime.datetime.fromtimestamp(data["sys"]["sunset"]).time()
    sunrise_time = datetime.datetime.fromtimestamp(data["sys"]["sunrise"]).time()

    # Get the current time and sunset time for the city
    current_time = datetime.datetime.now().time()
    # Determine if it's currently night or day
    is_night = current_time >= sunset_time
    # Assign an icon based on the weather condition and time of day

    print(condition)
    if is_night:
        if condition == "Clear":
            icon = icons["NightClear"]
        elif condition == "Clouds":
            icon = icons["NightClouds"]
        elif condition == "Rain":
            icon = icons["NightRain"]
        elif condition == "Drizzle":
            icon = icons["NightRain"]
        elif condition == "Snow":
            icon = icons["NightSnow"]
        elif condition == "Mist":
            icon = icons["Mist"]
        elif condition == "Haze":
            icon = icons["Mist"]
        else:
            icon = icons.get(condition, "")
        sun_time = sunrise_time
        sun_icon = " "
    else:
        icon = icons.get(condition, "")
        sun_time = sunset_time
        sun_icon = " "

    # Extract additional weather information from the JSON data
    wind_speed = data["wind"]["speed"]
    wind_direction_degrees = data["wind"]["deg"]
    # Convert wind direction from degrees to cardinal direction
    wind_direction_cardinal = ""
    if wind_direction_degrees <= 22.5 or wind_direction_degrees > 337.5:
        wind_direction_cardinal = "󰁞"
    elif 22.5 < wind_direction_degrees <= 67.5:
        wind_direction_cardinal = "󰧆"
    elif 67.5 < wind_direction_degrees <= 112.5:
        wind_direction_cardinal = "󰁕"
    elif 112.5 < wind_direction_degrees <= 157.5:
        wind_direction_cardinal = "󰦺"
    elif 157.5 < wind_direction_degrees <= 202.5:
        wind_direction_cardinal = "󰁆"
    elif 202.5 < wind_direction_degrees <= 247.5:
        wind_direction_cardinal = "󰦸"
    elif 247.5 < wind_direction_degrees <= 292.5:
        wind_direction_cardinal = "󰁎"
    elif 292.5 < wind_direction_degrees <= 337.5:
        wind_direction_cardinal = "󰧄"

else:
    print(
        "There was an error getting an OK response from the server. Check server status."
    )
    icon = None
    temperature = None
    sun_icon = None
    sun_time = datetime.datetime.now()
    wind_direction_cardinal = None
    wind_speed = None


# FORECAST
latitude = 44.34
longitude = 10.99

forecast_url = f"http://api.openweathermap.org/data/2.5/forecast?lat={latitude}&lon={longitude}&units=metric&appid={api_key}"

# Make a request to the API
response_forecast = requests.get(forecast_url)

# Check if the response was successful (i.e., has a status code of 200)
if response_forecast.status_code == 200:
    # Parse the JSON data from the response
    data = response_forecast.json()
    forecast_list = data.get("list", [])

    # Select only every 24th entry to get a 5-day forecast
    daily_forecasts = forecast_list[::8]

    # Construct a formatted string for the 5-day forecast
    forecast_text = ""
    for i, forecast in enumerate(daily_forecasts):
        dt_txt = forecast.get("dt_txt", "")
        date = datetime.datetime.strptime(dt_txt, "%Y-%m-%d %H:%M:%S").date()

        # Check if the date is today or tomorrow
        if i == 0:
            day_name = "Today"
        elif i == 1:
            day_name = "Tomorrow"
        else:
            day_name = date.strftime("%A")

        # Extract temperature data
        temp_min = forecast["main"]["temp_min"]
        temp_max = forecast["main"]["temp_max"]
        weather_description = forecast.get("weather", [{}])[0].get("description", "")
        forecast_text += (
            f"\n{day_name}: Min {temp_min}°C, Max {temp_max}°C, {weather_description}"
        )

    # Construct the XML output with the 5-day forecast
    xml_tool = f"<tool>5 Days weather forecast:\n{forecast_text}</tool>"

    command = "vivaldi --new-window https://www.meteosvizzera.admin.ch/previsioni-locali/curio/6986.html#forecast-tab=detail-view"
    # Print the weather information
    xml_out = f"<txt>{icon} {temperature:.1f}°C, {sun_icon} {sun_time.strftime('%H:%M')}</txt><txtclick>{command}</txtclick>"
    print(xml_out)
    print(xml_tool)
else:
    # Print an error message if the request was unsuccessful
    print("Error fetching weather data")
