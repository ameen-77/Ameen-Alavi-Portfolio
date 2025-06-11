import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({Key? key}) : super(key: key);

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
            'A health screening app that lets users view reports, grade summaries, and book screenings.\n• Integrated REST APIs\n• Designed intuitive UI',
      },
      {
        'icon': FontAwesomeIcons.comments,
        'title': 'NURA Insider',
        'description':
            'Professional communication app for radiographers and radiologists.\n• Login for both roles\n• Chat, media sharing, case submission\n• Built chat UI & managed state',
      },
      {
        'icon': FontAwesomeIcons.qrcode,
        'title': 'OneDesk',
        'description':
            'Guest check-in/out tool using QR wristbands with real-time tracking.\n• Guest details, room status\n• Manual entry & real-time status',
      },
      {
        'icon': FontAwesomeIcons.shoppingCart,
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
          return TweenAnimationBuilder<double>(
            tween: Tween(begin: 0, end: 1),
            duration: Duration(milliseconds: 600 + index * 100),
            builder: (context, value, child) => Opacity(
              opacity: value,
              child: Transform.scale(
                scale: value,
                child: child,
              ),
            ),
            child: Card(
              margin: const EdgeInsets.symmetric(vertical: 12),
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 16,
                ),
                leading: FaIcon(
                  project['icon'] as IconData,
                  size: 30,
                  color: Theme.of(context).colorScheme.primary,
                ),
                title: Text(
                  project['title'] as String,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    project['description'] as String,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
