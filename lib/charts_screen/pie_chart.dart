import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_charts/charts_widgets/simple_pie_chart.dart';
import 'package:flutter_charts/weather_details_header.dart';

Widget getPieChart(double statusBarHeight) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      AspectRatio(
        aspectRatio: 100 / 70,
        child: weatherDetailsHeader(statusBarHeight),
      ),
      Expanded(child: tabBarControllerHome()),
    ],
  );
}

tabBarControllerHome() {
  return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: TabBar(
            tabs: [
              Tab(
                text: "Day",
              ),
              Tab(
                text: "Week",
              ),
              Tab(
                text: "Month",
              ),
              Tab(
                text: "Year",
              )
            ],
            labelColor: Colors.white,
            unselectedLabelColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BubbleTabIndicator(
                indicatorColor: Colors.blue,
                indicatorHeight: 25.0,
                tabBarIndicatorSize: TabBarIndicatorSize.tab),
          ),
        ),
        body: TabBarView(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 250.0,
              child: SimplePieChart.withRandomData(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 250.0,
              child: SimplePieChart.withRandomData(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 250.0,
              child: SimplePieChart.withRandomData(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 250.0,
              child: SimplePieChart.withRandomData(),
            ),
          ),
        ]),
      ));
}
