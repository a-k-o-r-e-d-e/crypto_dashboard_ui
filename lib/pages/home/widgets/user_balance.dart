import 'package:crypto_dashboard_ui/pages/home/widgets/coin_card.dart';
import 'package:crypto_dashboard_ui/utils/static_data.dart';
import 'package:flutter/material.dart';

class UserBalance extends StatelessWidget {





  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Your Coins",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Text(
                "Total Amount \$378.15",
                style: theme.textTheme.caption,
              ),
            ],
          ),
          SizedBox(height: 15),
          ListView.separated(
            shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return CoinCard(coin: StaticData.userCoins[index],);
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: 15);
              },
              itemCount: StaticData.userCoins.length)
        ],
      ),
    );
  }
}
