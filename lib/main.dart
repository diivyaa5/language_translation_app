import 'package:flutter/material.dart';
import 'package:language_translation_app/language_translator.dart';
import 'package:translator/translator.dart';

void main() => runApp(TranslatorApp());

class TranslatorApp extends StatelessWidget {
  const TranslatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Translator App',
      theme: ThemeData.dark(),
      home: LanguageTranslationPage(),
    );
  }
}
