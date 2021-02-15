import 'package:crypto_dashboard_ui/pages/home/widgets/account_balance.dart';
import 'package:crypto_dashboard_ui/pages/home/widgets/notification_bell.dart';
import 'package:crypto_dashboard_ui/pages/home/widgets/other_coins.dart';
import 'package:crypto_dashboard_ui/pages/home/widgets/user_balance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(FlutterIcons.menu_fea),
        ),
        title: Text("My Money"),
        actions: [NotificationBell()],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              AccountBalance(),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Divider(color: Color.fromRGBO(97, 99, 119, 1)),
              ),
              SizedBox(height: 15),
              UserBalance(),
              OtherCoins()
            ],
          ),
        ),
      ),
    );
  }
}
