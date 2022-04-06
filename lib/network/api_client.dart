import 'dart:async';

import 'package:flutter_charts/model/forecast_data.dart';
import 'package:flutter_charts/model/weather_data.dart';
import 'package:http/http.dart' as http;

class ApiClient {
  static ApiClient? _instance;

  static ApiClient? getInstance() {
    _instance ??= ApiClient();
    return _instance;
  }

  Future<WeatherData> getWeather() async {
    http.Response response = await http.get(Uri.parse(Endpoints.weather),
        headers: {"Accept": "application/json"});

    return WeatherData.deserialize(response.body);
  }

  Future<ForecastData> getForecast() async {
    http.Response response = await http.get(Uri.parse(Endpoints.forecast),
        headers: {"Accept": "application/json"});

    return ForecastData.deserialize(response.body);
  }
}

class Endpoints {
  static const baseUrl = "http://api.openweathermap.org/data/2.5";
  static const weather = baseUrl +
      "/weather?lat=43.509645&lon=16.445783&APPID=86332c13b42bab21bee1a8eff79280d3&units=metric";
  static const forecast = baseUrl +
      "/forecast?lat=43.509645&lon=16.445783&APPID=86332c13b42bab21bee1a8eff79280d3&units=metric";
}
//api key : 86332c13b42bab21bee1a8eff79280d3 Deep
