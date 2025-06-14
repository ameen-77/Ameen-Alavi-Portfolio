/// projects_page.dart
/// Lists and animates the user's featured projects.
library;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'widgets/project_card.dart';

/// ProjectsPage displays a list of projects with fade-in animations.
class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    // This line ensures the widget rebuilds on theme change
    final brightness = Theme.of(context).brightness;
    // Use brightness in a dummy way to avoid unused variable warning
    // ignore: unused_local_variable
    final _ = brightness;
    final List<Map<String, Object>> projects = [
      {
        'icon': FontAwesomeIcons.heartPulse,
        'title': 'NURA App',
        'description':
            'Contributed to a health screening app that lets users view reports, grade summaries, and book screenings.\n• Integrated REST APIs\n• Designed intuitive UI',
      },
      {
        'icon': FontAwesomeIcons.comments,
        'title': 'NURA Insider',
        'description':
            'Contributed to a professional communication app for radiographers and radiologists.\n• Login for both roles\n• Chat, media sharing, case submission\n• Built chat UI & managed state',
      },
      {
        'icon': FontAwesomeIcons.qrcode,
        'title': 'OneDesk',
        'description':
            'Fully developed guest check-in/out tool using QR wristbands with real-time tracking.\n• Designed UI\n• Integrated APIs\n• Guest details, room status\n• Manual entry & real-time status',
      },
      {
        'icon': FontAwesomeIcons.cartShopping,
        'title': 'E-Commerce App',
        'description':
            'Full-featured app with Flutter frontend, Django backend, and SQL Server.\n• Cart, payments, auth\n• Reliable data management',
      },
      {
        'icon': FontAwesomeIcons.laptopCode,
        'title': 'Developer Portfolio',
        'description':
            'A personal portfolio built using Flutter Web with dark/light themes.\n• Animated layout\n• Responsive UI\n• Custom tab navigation',
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: ListView.builder(
        itemCount: projects.length,
        itemBuilder: (context, index) {
          final project = projects[index];
          return ProjectCard(
            icon: project['icon'] as IconData,
            title: project['title'] as String,
            description: project['description'] as String,
            animationIndex: index,
          );
        },
      ),
    );
  }
}
