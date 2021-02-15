import 'package:crypto_dashboard_ui/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class NotificationBell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 16, top: 20),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Icon(
            FlutterIcons.bell_fea
          ),
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kDangerColor
            ),
          )
        ],
      ),
    );
  }
}
