import 'dart:math';

import 'package:crypto_dashboard_ui/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_candlesticks/flutter_candlesticks.dart';

class CoinChart extends StatefulWidget {
  @override
  _CoinChartState createState() => _CoinChartState();
}

class _CoinChartState extends State<CoinChart> {
  List<String> chartTimes = ["Today", "1W", "1M", "3M", "6M", "1Y"];

  // Keep track of active index
  int activeIndex = 1;

  final List sampleData = List.generate(25, (index) {
    double open = Random().nextDouble() * 100;
    double low = Random().nextDouble() * 50;
    double close = Random().nextDouble() * 150;
    double volume = Random().nextDouble() * 5000;

    return {
      "open": open,
      "high": open * 2,
      "low": low,
      "close": close,
      "volumeto": volume,
    };
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: chartTimes.map((e) {
                // get index for state changes later
                int currentIndex = chartTimes.indexOf(e);
                return InkWell(
                  onTap: () {
                    setState(() {
                      activeIndex = currentIndex;
                    });
                  },
                  child: Container(
                    color: currentIndex == activeIndex
                        ? Color.fromRGBO(55, 66, 92, 1)
                        : Colors.transparent,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Text(
                      e,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              }).toList(),
            )),
        Container(
          // container for chart
          margin: const EdgeInsets.symmetric(vertical: 20),
          height: 200,
          // Graph
          child: OHLCVGraph(
            data: sampleData,
            enableGridLines: true,
            volumeProp: 1 / sampleData.length,
            decreaseColor: kDangerColor,
            increaseColor: kSuccessColor,
          ),
        )
      ],
    );
  }
}
