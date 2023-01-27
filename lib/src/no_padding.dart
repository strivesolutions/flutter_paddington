import 'package:flutter/widgets.dart';

class NoPadding extends StatelessWidget {
  final Widget child;
  const NoPadding({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return child;
  }
}

extension WidgetExtensions on Widget {
  Widget noPadding() => NoPadding(child: this);
}
