/// resume_action_button.dart
/// A reusable widget for the resume action buttons (view/download).
///
/// Provides a styled button with icon and label for resume actions.
library;

import 'package:flutter/material.dart';

/// A button for resume actions (view/download) with icon and label.
class ResumeActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  /// Creates a [ResumeActionButton].
  ///
  /// [icon] is the button icon, [label] is the button text, and [onPressed] is the callback.
  const ResumeActionButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: Icon(icon),
      label: Text(label),
      onPressed: onPressed,
    );
  }
}
