/// project_card.dart
/// A reusable widget for displaying a project with icon, title, and description.
///
/// Used in the ProjectsPage to show each project with animation.
library;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// A card widget for displaying a project with icon, title, and description.
class ProjectCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final int animationIndex;

  /// Creates a [ProjectCard].
  ///
  /// [icon] is the project icon, [title] is the project name, [description] is the details, and [animationIndex] controls animation delay.
  const ProjectCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    this.animationIndex = 0,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: 1),
      duration: Duration(milliseconds: 600 + animationIndex * 100),
      builder: (context, value, child) => Opacity(
        opacity: value,
        child: Transform.scale(scale: value, child: child),
      ),
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 12),
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 16,
          ),
          leading: FaIcon(
            icon,
            size: 30,
            color: Theme.of(context).colorScheme.primary,
          ),
          title: Text(
            title,
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              description,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ),
      ),
    );
  }
}
