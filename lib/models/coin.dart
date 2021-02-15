import 'package:crypto_dashboard_ui/utils/extensions.dart';

enum CoinType {
  BITCOIN,
  ETHEREUM,
  LITECOIN,
  MONERO,
  TRON,
}

enum Trend { UP, DOWN }

class Coin {
  final CoinType type;
  final double currentPrice, percentProgress, balance, amountProgress;
  final double volume24Hr, volume24HrChange;

  final Trend priceTrend, volumeTrend;

  Coin(
      {this.type,
      this.currentPrice,
      this.percentProgress,
      this.balance,
      this.priceTrend,
      this.volumeTrend,
      this.volume24Hr,
      this.volume24HrChange,
      this.amountProgress});

  double get balanceValue => balance * currentPrice;

  String get coinAbbr {
    switch (this.type) {
      case CoinType.BITCOIN:
        return "BTC";
        break;
      case CoinType.ETHEREUM:
        return "ETH";
        break;
      case CoinType.LITECOIN:
        return "LTC";
        break;
      case CoinType.MONERO:
        return "XMR";
        break;
      case CoinType.TRON:
        return "TRX";
        break;
      default:
        return "";
        break;
    }
  }

  String get imagePath {
    switch (this.type) {
      case CoinType.BITCOIN:
        return "assets/images/bitcoin.png";
        break;
      case CoinType.ETHEREUM:
        return "assets/images/ethereum.png";
        break;
      case CoinType.LITECOIN:
        return "assets/images/litecoin.png";
        break;
      case CoinType.MONERO:
        return "assets/images/monero.png";
        break;
      case CoinType.TRON:
        return "assets/images/tron.png";
        break;
      default:
        return "";
        break;
    }
  }

  // Lets override the 'toString' method so it returns coin name
  @override
  String toString() {
    // normally returns "CoinType.[TYPE]" so we split and take the first part
    String firstPart = this.type.toString().split(".")[1];
    return firstPart.capitalize();
  }

  String get priceProgress {
    String returnValue = "";

    switch (this.priceTrend) {
      case Trend.UP:
        returnValue += "+";
        break;
      case Trend.DOWN:
        returnValue += "-";
        break;
    }

    returnValue += "\$${this.amountProgress} (${this.percentProgress}%)";

    return returnValue;
  }

  String get volumeProgress {
    String returnValue = "";

    switch (this.volumeTrend) {
      case Trend.UP:
        returnValue += "+";
        break;
      case Trend.DOWN:
        returnValue += "-";
        break;
    }

    returnValue += "\$${this.volume24HrChange}%";

    return returnValue;
  }
}
