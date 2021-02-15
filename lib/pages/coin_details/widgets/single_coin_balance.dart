import 'package:flutter/material.dart';
import 'package:crypto_dashboard_ui/utils/extensions.dart';

class CoinBalance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Container(
      height: 90.h,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 16),
      color: Color.fromRGBO(55, 66, 92, .4),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Your BTC Balance",
                  style: theme.textTheme.caption,
                ),
                SizedBox(height: 8),
                Text(
                    "0.006992133 BTC",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                  ),
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "USD",
                style: theme.textTheme.caption,
              ),
              SizedBox(height: 8),
              Text("\$23.35", style: TextStyle(color: Colors.white, fontSize: 18),)
            ],
          )
        ],
      ),
    );
  }
}
