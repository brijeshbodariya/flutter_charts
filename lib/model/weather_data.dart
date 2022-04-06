import 'dart:convert';

import 'package:flutter_charts/model/condition.dart';

class WeatherData {
  String temperature;
  Condition condition;

  WeatherData(this.temperature, this.condition);

  static WeatherData deserialize(String json) {
    JsonDecoder decoder = const JsonDecoder();
    var map = decoder.convert(json);

    String description = map["weather"][0]["description"];
    int id = map["weather"][0]["id"];
    Condition condition = Condition(id, description);

    double temperature = map["main"]["temp"].toDouble();

    return WeatherData(temperature.toString(), condition);
  }
}
