import 'package:flutter/material.dart';

class AnnouncementItem {
  AnnouncementItem({
    required this.onPressed,
    required this.actionLabel,
    required this.body,
    this.icon,
  });

  final Function(BuildContext context) onPressed;
  final String actionLabel;
  final String body;
  final String? icon;
}
