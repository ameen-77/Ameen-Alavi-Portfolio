import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600;
    final iconColor = Theme.of(context).colorScheme.primary;
    return Padding(
      padding: EdgeInsets.all(isMobile ? 16 : 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Contact Me', style: Theme.of(context).textTheme.headlineLarge),

          const SizedBox(height: 24),
          Row(
            children: [
              Icon(FontAwesomeIcons.phone, color: iconColor),
              const SizedBox(width: 8),
              SelectableText(
                '+971 58 244 2741',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
          const SizedBox(height: 16),

          Row(
            children: [
              Icon(Icons.email, color: iconColor),
              const SizedBox(width: 8),
              SelectableText(
                'ameenalavi30@gmail.com',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Icon(FontAwesomeIcons.linkedin, color: iconColor),
              const SizedBox(width: 8),
              SelectableText(
                'linkedin.com/in/Ameen-Alavi',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Icon(FontAwesomeIcons.github, color: iconColor),
              const SizedBox(width: 8),
              SelectableText(
                'github.com/ameen-77',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
