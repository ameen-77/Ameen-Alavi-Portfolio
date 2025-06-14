/// step_animated_text.dart
/// A reusable widget for step-based animated text using AnimatedTextKit.
///
/// Displays animated typewriter text and calls a callback when finished.
library;

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

/// A widget for animated typewriter text with a callback for step-based flows.
class StepAnimatedText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final Duration speed;
  final VoidCallback? onFinished;

  /// Creates a [StepAnimatedText].
  ///
  /// [text] is the text to animate, [style] is the text style, [speed] is the animation speed, and [onFinished] is called when done.
  const StepAnimatedText({
    super.key,
    required this.text,
    this.style,
    this.speed = const Duration(milliseconds: 25),
    this.onFinished,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TypewriterAnimatedText(
          text,
          textStyle: style,
          speed: speed,
          cursor: '',
        ),
      ],
      isRepeatingAnimation: false,
      totalRepeatCount: 1,
      displayFullTextOnTap: true,
      stopPauseOnTap: true,
      onFinished: onFinished,
    );
  }
}
