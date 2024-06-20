import 'package:flutter/material.dart';
import '../models/weather_models.dart';

class WeatherWidget extends StatelessWidget {
  final Weather weather;

  const WeatherWidget({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          weather.cityName,
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        Text(
          '${weather.temperature}°C',
          style: const TextStyle(fontSize: 64),
        ),
        Text(
          weather.description,
          style: const TextStyle(fontSize: 24),
        ),
        Image.network(
          'http://openweathermap.org/img/wn/${weather.icon}@2x.png',
        ),
      ],
    );
  }
}

