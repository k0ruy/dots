import requests
import datetime

# Replace YOUR_API_KEY with your actual API key from OpenWeatherMap
api_key = "key"
city = "Novaggio"

# Set the URL for the OpenWeatherMap API to fetch the current weather in Lugano
url = f"http://api.openweathermap.org/data/2.5/weather?q={city}&units=metric&appid={api_key}"

# Define a dictionary to map weather conditions to icons
icons = {
    "Clear": " ",
    "Clouds": " ",
    "Rain": " ",
    "Drizzle": " ",
    "Thunderstorm": " ",
    "Snow": " ",
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
        
    #  Wind: {wind_direction_cardinal} {wind_speed} m/s
    # Print the weather information
    print(f"{icon} {temperature:.1f}°C, {sun_icon} {sun_time.strftime('%H:%M')}")
else:
    # Print an error message if the request was unsuccessful
    print("Error fetching weather data")

