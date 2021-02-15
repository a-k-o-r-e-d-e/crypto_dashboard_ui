import 'package:crypto_dashboard_ui/pages/home/widgets/coin_card.dart';
import 'package:crypto_dashboard_ui/utils/static_data.dart';
import 'package:flutter/material.dart';

class OtherCoins extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Other Coins",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 15),
          ListView.separated(
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return CoinCard(coin: StaticData.otherCoins[index],);
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: 15);
              },
              itemCount: StaticData.otherCoins.length)
        ],
      ),
    );
  }
}

