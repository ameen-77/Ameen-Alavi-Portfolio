// resume_helper_web.dart
// Only imported on web
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

void openPdfInNewTab(String url) {
  html.window.open(url, '_blank');
}

void downloadPdf(String url, String filename) {
  final anchor = html.AnchorElement(href: url)
    ..setAttribute('download', filename)
    ..click();
}
