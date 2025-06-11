import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  int _step = 0;

  void _nextStep() {
    setState(() {
      _step++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                'About Me',
                textStyle: textTheme.headlineLarge,
                speed: const Duration(milliseconds: 40),
                cursor: '',
              ),
            ],
            isRepeatingAnimation: false,
            totalRepeatCount: 1,
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
            onFinished: _nextStep,
          ),
          if (_step > 0) ...[
            const SizedBox(height: 30),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'I am a Software Engineer with a strong foundation in building cross-platform mobile applications using Flutter, combined with backend development using Django.',
                  textStyle: textTheme.bodyLarge,
                  speed: const Duration(milliseconds: 25),
                  cursor: '',
                ),
              ],
              isRepeatingAnimation: false,
              totalRepeatCount: 1,
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
              onFinished: _nextStep,
            ),
          ],
          if (_step > 1) ...[
            const SizedBox(height: 8),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'With 6 months of professional experience, I’ve contributed to real-world health-tech and e-commerce projects. My role spanned full-stack responsibilities — from designing intuitive UI and integrating RESTful APIs to managing backend logic and deployment. I’m passionate about writing clean, scalable code and delivering seamless user experiences.',
                  textStyle: textTheme.bodyLarge,
                  speed: const Duration(milliseconds: 25),
                  cursor: '',
                ),
              ],
              isRepeatingAnimation: false,
              totalRepeatCount: 1,
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
              onFinished: _nextStep,
            ),
          ],
          if (_step > 2) ...[
            const SizedBox(height: 25),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Work Experience',
                  textStyle: textTheme.headlineSmall,
                  speed: const Duration(milliseconds: 40),
                  cursor: '',
                ),
              ],
              isRepeatingAnimation: false,
              totalRepeatCount: 1,
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
              onFinished: _nextStep,
            ),
          ],
          if (_step > 3) ...[
            const SizedBox(height: 12),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Software Engineer – SOXO (Dec 2024 – May 2025)',
                  textStyle: textTheme.titleMedium,
                  speed: const Duration(milliseconds: 25),
                  cursor: '',
                ),
              ],
              isRepeatingAnimation: false,
              totalRepeatCount: 1,
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
              onFinished: _nextStep,
            ),
          ],
          if (_step > 4) ...[
            const SizedBox(height: 8),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Worked in a product-based health tech company focused on building mobile apps with Flutter. Responsible for API integration, UI development, cross-platform testing, and collaborating with backend and design teams in an agile environment.',
                  textStyle: textTheme.bodyLarge,
                  speed: const Duration(milliseconds: 25),
                  cursor: '',
                ),
              ],
              isRepeatingAnimation: false,
              totalRepeatCount: 1,
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
              onFinished: _nextStep,
            ),
          ],
          if (_step > 5) ...[
            const SizedBox(height: 32),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Certifications',
                  textStyle: textTheme.headlineSmall,
                  speed: const Duration(milliseconds: 40),
                  cursor: '',
                ),
              ],
              isRepeatingAnimation: false,
              totalRepeatCount: 1,
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
              onFinished: _nextStep,
            ),
          ],
          if (_step > 6) ...[
            const SizedBox(height: 12),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Mobile App Development with Flutter & Django – FINEDGE (May 2024 – Nov 2024)',
                  textStyle: textTheme.titleMedium,
                  speed: const Duration(milliseconds: 25),
                  cursor: '',
                ),
              ],
              isRepeatingAnimation: false,
              totalRepeatCount: 1,
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
              onFinished: _nextStep,
            ),
          ],
          if (_step > 7) ...[
            const SizedBox(height: 8),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Completed extensive training covering cross-platform UI design with Flutter, backend development using Django, user authentication, database management, and deploying full-stack mobile apps.',
                  textStyle: textTheme.bodyLarge,
                  speed: const Duration(milliseconds: 25),
                  cursor: '',
                ),
              ],
              isRepeatingAnimation: false,
              totalRepeatCount: 1,
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
          ],
        ],
      ),
    );
  }
}
