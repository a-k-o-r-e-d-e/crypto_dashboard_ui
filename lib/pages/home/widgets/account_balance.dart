import 'package:crypto_dashboard_ui/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class AccountBalance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Balance",
            style: theme.textTheme.caption,
          ),
          SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$378.15",
                style: TextStyle(color: Colors.white, fontSize: 26),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(55, 66, 92, .78),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      "+ Add Bank",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 3),
          Row(
            children: [
              Text("+2.14%",
                style: TextStyle(
                  color: kSuccessColor,
                  fontSize: 16
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
    );
  }
}
