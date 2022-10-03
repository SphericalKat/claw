import 'package:flutter/cupertino.dart';

extension BuildContextThemeX on BuildContext {
  TextStyle get textStyleFromTheme =>
      CupertinoTheme.of(this).textTheme.textStyle;
}
