import 'package:crypto_dashboard_ui/models/coin.dart';
import 'package:crypto_dashboard_ui/pages/coin_detail/widgets/single_coin.dart';
import 'package:crypto_dashboard_ui/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:crypto_dashboard_ui/utils/extensions.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CoinCard extends StatelessWidget {
  final Coin coin;

  CoinCard({@required this.coin});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: .25,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => SingleCoin(coin: coin,)));
        },
        child: Container(
          color: Color.fromRGBO(55, 66, 92, .4),
          height: 90.h,
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Container(
                width: 40.w,
                child: Image.asset(coin.imagePath),
              ),
              SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${coin.toString()} (${coin.coinAbbr})",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "${coin.balance}",
                    style: theme.textTheme.caption.copyWith(fontSize: 14),
                  )
                ],
              ),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "\$${coin.currentPrice}",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        coin.progress,
                        style: TextStyle(
                            color: coin.trend == Trend.UP
                                ? kSuccessColor
                                : kDangerColor),
                      ),
                      Icon(
                        coin.trend == Trend.UP
                            ? FlutterIcons.caret_up_faw
                            : FlutterIcons.caret_down_faw,
                        size: 14,
                        color: coin.trend == Trend.UP
                            ? kSuccessColor
                            : kDangerColor,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
      // Slidable Card actions
      actions: [
        IconSlideAction(
          color: kDangerColor,
          icon: FlutterIcons.x_fea,
          foregroundColor: Colors.white,
          onTap: () => null,
        )
      ],

      secondaryActions: [
        IconSlideAction(
          color: kSuccessColor,
          icon: FlutterIcons.plus_fea,
          foregroundColor: Colors.white,
          onTap: () => null,
        )
      ],
    );
  }
}
