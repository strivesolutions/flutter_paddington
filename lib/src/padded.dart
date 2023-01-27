import 'package:flutter/widgets.dart';

import 'no_padding.dart';

List<Widget> padded(
    {required List<Widget> children,
    EdgeInsets padding = const EdgeInsets.all(8.0)}) {
  return children.map((e) => _getPadding(e, padding: padding)).toList();
}

Widget _getPadding(Widget widget, {required EdgeInsets padding}) {
  if (widget is Flexible) {
    return widget;
  } else if (widget is Spacer) {
    return widget;
  } else if (widget is NoPadding) {
    return widget.child;
  }

  return Padding(
    key: widget.key,
    padding: padding,
    child: widget,
  );
}

extension ListExtensions on List<Widget> {
  List<Widget> withPadding({required EdgeInsets padding}) =>
      padded(children: this, padding: padding);
}
