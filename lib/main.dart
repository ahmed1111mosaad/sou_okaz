import 'package:intl/intl.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sou_okaz/core/services/shared_preferences_singleton.dart';
import 'package:sou_okaz/core/utils/routes.dart';
import 'generated/l10n.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesSingleton.init();
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
      locale: Locale('en'),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF5F5F5),
        fontFamily: 'Airbnb Cereal App',
      ),
      // locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.onboarding,
      routes: routes(),
    );
  }
}

bool isArabic() {
  return Intl.getCurrentLocale() == 'ar';
}
