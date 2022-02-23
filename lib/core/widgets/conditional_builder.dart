import 'package:flutter/material.dart';

class ConditionalBuilder extends StatelessWidget {
  const ConditionalBuilder({
    Key? key,
    required this.child,
    required this.visible,
  }) : super(key: key);

  final Widget child;
  final bool visible;

  @override
  Widget build(BuildContext context) {
    return visible ? child : const SizedBox();
  }
}
