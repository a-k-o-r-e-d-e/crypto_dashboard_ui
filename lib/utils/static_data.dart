import 'package:crypto_dashboard_ui/models/coin.dart';

class StaticData {
  static final List<Coin> userCoins = [
    Coin(
      amountProgress: 82.13,
      balance: 0.00692133,
      currentPrice: 3432.92,
      type: CoinType.BITCOIN,
      volume24Hr: 1360647.31,
      volume24HrChange: 16.80,
      volumeTrend: Trend.DOWN,
      percentProgress: 3,
      priceTrend: Trend.UP,
    ),
    Coin(
      amountProgress: 13.10,
      balance: 2.45670,
      currentPrice: 90.96,
      type: CoinType.ETHEREUM,
      volume24Hr: 960549.48,
      volume24HrChange: 9.22,
      volumeTrend: Trend.UP,
      percentProgress: 2.3,
      priceTrend: Trend.UP,
    ),
  ];

  static final List<Coin> otherCoins = [
    Coin(
      amountProgress: 5.25,
      balance: 0.00,
      currentPrice: 24.37,
      type: CoinType.LITECOIN,
      percentProgress: 4,
      volume24Hr: 736049.36,
      volume24HrChange: 10.65,
      volumeTrend: Trend.UP,
      priceTrend: Trend.DOWN,
    ),
    Coin(
      amountProgress: 13.10,
      balance: 0.00,
      currentPrice: 43.36,
      type: CoinType.MONERO,
      percentProgress: 2.3,
      volume24Hr: 2796042.96,
      volume24HrChange: 22.05,
      volumeTrend: Trend.UP,
      priceTrend: Trend.UP,
    ),
    Coin(
      amountProgress: 6.75,
      balance: 0.00,
      currentPrice: 0.0136,
      type: CoinType.TRON,
      percentProgress: 2.7,
      volume24Hr: 736049.36,
      volume24HrChange: 30.65,
      volumeTrend: Trend.DOWN,
      priceTrend: Trend.DOWN,
    ),
  ];
}