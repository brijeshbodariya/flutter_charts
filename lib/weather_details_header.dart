import 'package:flutter/material.dart';
import 'package:flutter_charts/res/res.dart';

Container weatherDetailsHeader(double statusBarHeight) {
  String _currentDate = "September 14, 3:33 PM";
  String _condition = "Clear Sky";
  String _roundedTemperature = "33°C";
  String _city = "NOIDA";

  return Container(
    color: Colors.blue,
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                _currentDate,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                  color: $Colors.textColorWeatherHeader,
                ),
              ),
            ],
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      _city,
                      style: const TextStyle(
                        fontSize: 21.0,
                        fontWeight: FontWeight.w700,
                        color: $Colors.textColorWeatherHeader,
                      ),
                    ),
                    Text(
                      _condition,
                      style: const TextStyle(
                        fontSize: 18.0,
                        color: $Colors.textColorWeatherHeader,
                      ),
                    ),
                    Text(
                      _roundedTemperature,
                      style: const TextStyle(
                        fontSize: 45.0,
                        color: $Colors.textColorWeatherHeader,
                        fontFamily: "Roboto",
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/sunny.png',
                      width: 100.0,
                      height: 100.0,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ),
    padding: EdgeInsets.only(top: statusBarHeight),
  );
}
