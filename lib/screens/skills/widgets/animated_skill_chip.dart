/// animated_skill_chip.dart
/// A reusable widget for an animated skill chip with icon and label.
///
/// Used in SkillsPage to show each skill with animation.
library;

import 'package:flutter/material.dart';

/// A chip widget for displaying a skill with icon and label, animated in.
class AnimatedSkillChip extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color iconColor;
  final TextStyle? textStyle;
  final int animationIndex;

  /// Creates an [AnimatedSkillChip].
  ///
  /// [icon] is the skill icon, [label] is the skill name, [iconColor] is the icon color, [textStyle] is the label style, and [animationIndex] controls animation delay.
  const AnimatedSkillChip({
    super.key,
    required this.icon,
    required this.label,
    required this.iconColor,
    this.textStyle,
    this.animationIndex = 0,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: 1),
      duration: Duration(milliseconds: 600 + animationIndex * 50),
      builder: (context, value, child) => Opacity(
        opacity: value,
        child: Transform.scale(scale: value, child: child),
      ),
      child: Chip(
        avatar: Icon(icon, size: 18, color: iconColor),
        label: Text(label, style: textStyle),
      ),
    );
  }
}
