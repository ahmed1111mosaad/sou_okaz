import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/splash/presentation/views/splash_screen.dart';
import 'package:sou_okaz/core/utils/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (BuildContext context) {
        return const SouOkaz();
      },
    ),
  );
}

class SouOkaz extends StatelessWidget {
  const SouOkaz({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // locale: Locale('ar'),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(scaffoldBackgroundColor: Color(0xFFF5F5F5)),
      // locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splash,
      routes: routes(),
    );
  }
}
