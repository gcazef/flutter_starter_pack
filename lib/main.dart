import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';

import 'ui/app.dart';

void main() async {
  final delegate = await LocalizationDelegate.create(
    fallbackLocale: 'en_US',
    supportedLocales: ['en_US', 'fr_FR'],
  );

  runApp(LocalizedApp(delegate, App()));
}
