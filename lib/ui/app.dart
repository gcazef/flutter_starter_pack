import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../ui/theme.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:flutter_translate/localization_provider.dart';
import 'package:flutter_translate/localized_app.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final delegate = LocalizedApp.of(context).delegate;
    
    return LocalizationProvider(
      state: LocalizationProvider.of(context).state,
      child: MaterialApp(
        title: 'MyApp',
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          delegate
        ],
        supportedLocales: delegate.supportedLocales,
        locale: delegate.currentLocale,
        theme: lightTheme,
        home: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text('MyApp'),
            ),
            body: Center(
              child: Text(translate('home.hello_world')),
            ),
          ),
        ),
      ),
    );
  }
}
