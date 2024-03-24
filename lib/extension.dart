import 'package:flutter/material.dart';

extension NumExt on num {
  SizedBox get hBox => SizedBox(height: toDouble());
  SizedBox get wBox => SizedBox(width: toDouble());
}

extension ContextExt on BuildContext {
  ThemeData get theme => Theme.of(this);

  double get width => MediaQuery.sizeOf(this).width;
  double get height => MediaQuery.sizeOf(this).height;
}

extension WidgetConxt on Widget {
  Padding pad(EdgeInsetsGeometry padding) =>
      Padding(padding: padding, child: this);
}
