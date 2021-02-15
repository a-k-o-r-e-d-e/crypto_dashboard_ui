import 'package:crypto_dashboard_ui/models/coin.dart';
import 'package:crypto_dashboard_ui/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class CoinStats extends StatelessWidget {
  final Coin coin;

  CoinStats({@required this.coin});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "1 ${coin.coinAbbr} / USD",
                style: theme.textTheme.caption,
              ),
              SizedBox(
                height: 8
              ),
              Text(
                "\$${coin.currentPrice}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26
                ),
              ),
              Row(
                children: [
                  Text(
                    "${coin.priceProgress}%",
                    style: TextStyle(
                      color: coin.priceTrend == Trend.UP ? kSuccessColor : kDangerColor,
                      fontSize: 16,
                    ),
                  ),
                  Icon(
                    coin.priceTrend == Trend.UP ? FlutterIcons.caret_up_faw : FlutterIcons.caret_down_faw,
                    color: coin.priceTrend == Trend.UP ? kSuccessColor : kDangerColor,
                  )
                ],
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("Volume 24h USD", style: theme.textTheme.caption),
                SizedBox(height: 8,),
                Text(
                  "\$${coin.volume24Hr}",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "${coin.volumeProgress}",
                      style: TextStyle(
                          color: coin.volumeTrend == Trend.UP ? kSuccessColor : kDangerColor,
                          fontSize: 16
                      ),
                    ),
                    Icon(
                      coin.volumeTrend == Trend.UP ? FlutterIcons.caret_up_faw : FlutterIcons.caret_down_faw,
                      color: coin.volumeTrend == Trend.UP ? kSuccessColor : kDangerColor,
                    )
                  ],
                )
              ],
          )
        ],
      ),
    );
  }
}
