import 'package:crypto_dashboard_ui/models/coin.dart';
import 'package:crypto_dashboard_ui/pages/coin_detail/widgets/coin_chart.dart';
import 'package:crypto_dashboard_ui/pages/coin_detail/widgets/coin_stats.dart';
import 'package:crypto_dashboard_ui/pages/coin_detail/widgets/single_coin_balance.dart';
import 'package:crypto_dashboard_ui/pages/home/widgets/notification_bell.dart';
import 'package:crypto_dashboard_ui/utils/constants.dart';
import 'package:flutter/material.dart';

class SingleCoin extends StatelessWidget {
  final Coin coin;

  SingleCoin({@required this.coin});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${coin.toString()}  (${coin.coinAbbr})"),
        centerTitle: true,
        actions: [
          NotificationBell(),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 25),
              CoinStats(),
              SizedBox(height: 30),
              CoinChart(),
              SizedBox(height: 15),
              SingleCoinBalance(),
              SizedBox(height: 15),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(child: GestureDetector(
                    onTap: (){},
                    child: Text(
                      "BUY",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 22, color: kSuccessColor),
                    ),
                  )),
                  Expanded(child: GestureDetector(
                    onTap: (){},
                    child: Text(
                      "SELL",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 22, color: kDangerColor),
                    ),
                  ))
                ],
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
