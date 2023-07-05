import 'package:flutter/material.dart';

class SelectLanguagePopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Select Language'),
      content: SingleChildScrollView(
        child: ListBody(
          children: [
            LanguageOption(
              language: 'English',
              onTap: () {
                // Handle language selection for English
                Navigator.pop(context); // Close the popup
              },
            ),
            LanguageOption(
              language: 'Spanish',
              onTap: () {
                // Handle language selection for Spanish
                Navigator.pop(context); // Close the popup
              },
            ),
            LanguageOption(
              language: 'French',
              onTap: () {
                // Handle language selection for French
                Navigator.pop(context); // Close the popup
              },
            ),
            // Add more LanguageOption widgets for additional languages
          ],
        ),
      ),
    );
  }
}

class LanguageOption extends StatelessWidget {
  final String language;
  final VoidCallback onTap;

  LanguageOption({required this.language, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          language,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
