import 'package:flutter/material.dart';
import 'package:prototype/my_app_bar.dart';

class LanguageSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(Colors.white, "Language selection", context),
      body: Container(
        margin: const EdgeInsets.only(bottom: 50),
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            LanguageOption(
              language: 'English',
              flagAsset: 'assets/kenya.png',
            ),
            LanguageOption(
              language: 'Swahili',
              flagAsset: 'assets/kenya.png',
            ),
            LanguageOption(
              language: 'Spanish',
              flagAsset: 'assets/kenya.png',
            ),
            LanguageOption(
              language: 'French',
              flagAsset: 'assets/kenya.png',
            ),
            LanguageOption(
              language: 'German',
              flagAsset: 'assets/kenya.png',
            ),
            LanguageOption(
              language: 'Chinese',
              flagAsset: 'assets/kenya.png',
            ),
            LanguageOption(
              language: 'Japanese',
              flagAsset: 'assets/kenya.png',
            ),
            LanguageOption(
              language: 'Korean',
              flagAsset: 'assets/kenya.png',
            ),
            LanguageOption(
              language: 'Arabic',
              flagAsset: 'assets/kenya.png',
            ),
            LanguageOption(
              language: 'Hindi',
              flagAsset: 'assets/kenya.png',
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        color: Colors.black,
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: TextButton(
            onPressed: () {
              // Handle language selection confirmation
              Navigator.pop(context); // Close the bottom sheet
            },
            child: const Text(
              'Confirm',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LanguageOption extends StatelessWidget {
  final String language;
  final String flagAsset;

  LanguageOption({required this.language, required this.flagAsset});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        flagAsset,
        width: 32,
        height: 32,
      ),
      title: Text(
        language,
        style: const TextStyle(fontSize: 18),
      ),
      onTap: () {
        // Handle language selection
      },
    );
  }
}
