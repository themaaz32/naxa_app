import 'package:flutter/material.dart';

class FeatureItem {
  const FeatureItem({
    required this.label,
    required this.icon,
    required this.onPressed,
  });

  final String label;
  final String icon;
  final Function(BuildContext context) onPressed;
}