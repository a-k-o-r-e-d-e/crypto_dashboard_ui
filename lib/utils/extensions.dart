import 'package:flutter_screenutil/flutter_screenutil.dart';

extension AdaptiveSize on num {
  double get h => ScreenUtil().setHeight(this);
  double get w => ScreenUtil().setWidth(this);
}

extension StringExtension on String {
  String capitalize () {
    return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
  }
}