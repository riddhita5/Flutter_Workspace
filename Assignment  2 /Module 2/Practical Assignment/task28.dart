import 'dart:async';

Future<void> fetchWeather() async {
  print("Fetching weather data...");

  await Future.delayed(Duration(seconds: 2));
  print("Connecting to weather server...");

  await Future.delayed(Duration(seconds: 2));
  print("Loading weather report...");

  await Future.delayed(Duration(seconds: 2));
  print("Weather data loaded successfully.");
}

void main() async {
  print("Please wait...\n");

  await fetchWeather();

  print("\nToday's Weather:");
  print("Temperature: 32°C");
  print("Condition: Sunny");
}
