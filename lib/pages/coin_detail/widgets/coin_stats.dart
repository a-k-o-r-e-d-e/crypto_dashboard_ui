import 'package:crypto_dashboard_ui/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class CoinStats extends StatelessWidget {
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
                "1 BTC / USD",
                style: theme.textTheme.caption,
              ),
              SizedBox(
                height: 8
              ),
              Text(
                "\$3,432.92",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26
                ),
              ),
              Row(
                children: [
                  Text(
                    "+0.15%",
                    style: TextStyle(
                      color: kSuccessColor,
                      fontSize: 16,
                    ),
                  ),
                  Icon(
                    FlutterIcons.caret_up_faw,
                    color: kSuccessColor,
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
                  "\$1,360,647.31",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "+16.80%",
                      style: TextStyle(
                        color: kSuccessColor, fontSize: 16
                      ),
                    ),
                    Icon(FlutterIcons.caret_up_faw, color: kSuccessColor,)
                  ],
                )
              ],
          )
        ],
      ),
    );
  }
}
