import 'dart:convert';

import 'package:flutter_charts/model/condition.dart';

class ForecastData {
  List<ForecastWeather> forecastList;

  ForecastData(this.forecastList);

  static ForecastData deserialize(String json) {
    JsonDecoder decoder = const JsonDecoder();
    var map = decoder.convert(json);

    var list = map["list"];
    List<ForecastWeather> forecast = [];

    for (var weatherMap in list) {
      forecast.add(ForecastWeather._deserialize(weatherMap));
    }

    return ForecastData(forecast);
  }
}

class ForecastWeather {
  String temperature;
  Condition condition;
  DateTime dateTime;

  double pressure;
  double humidity;
  double wind;

  //Wind, rain, etc.

  ForecastWeather(this.temperature, this.condition, this.dateTime,
      this.pressure, this.humidity, this.wind);

  static ForecastWeather _deserialize(Map<String, dynamic> map) {
    String description = map["weather"][0]["description"];
    int conditionId = map["weather"][0]["id"];
    Condition condition = Condition(conditionId, description);

    double temperature = map["main"]["temp"].toDouble();
    double humidity = map["main"]["humidity"].toDouble();
    double pressure = map["main"]["pressure"].toDouble();
    double wind = map["wind"]["speed"].toDouble();
    int epochTimeMs = map["dt"] * 1000;
    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(epochTimeMs);

    return ForecastWeather(
        temperature.toString(), condition, dateTime, pressure, humidity, wind);
  }
}
