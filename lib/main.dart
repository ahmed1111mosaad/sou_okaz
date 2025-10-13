import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Auth/domain/repo/auth_repo.dart';
import 'package:sou_okaz/Features/Auth/presentation/cubits/reset_password_cubit/reset_password_cubit.dart';
import 'package:sou_okaz/Features/Auth/presentation/cubits/sign_in_cubit/sign_in_cubit.dart';
import 'package:sou_okaz/Features/Auth/presentation/cubits/sign_up_cubit/sign_up_cubit.dart';
import 'package:sou_okaz/core/services/service_locator.dart';
import 'package:sou_okaz/core/services/shared_preferences_singleton.dart';
import 'package:sou_okaz/core/theme/theme_data.dart';
import 'package:sou_okaz/core/utils/bloc_observer.dart';
import 'package:sou_okaz/core/utils/routes.dart';
import 'package:sou_okaz/firebase_options.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await SharedPreferencesSingleton.init();
  Bloc.observer = const SimpleBlocObserver();
  setup();

  runApp(
    DevicePreview(
      enabled:false,
      builder: (BuildContext context) {
        return const SouOkaz();
      },
    ),
  );
}

class SouOkaz extends StatelessWidget {
  const SouOkaz({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SignUpCubit(getIt<AuthRepo>())),
        BlocProvider(create: (context) => SignInCubit(getIt<AuthRepo>())),
        BlocProvider(
            create: (context) => ResetPasswordCubit(getIt<AuthRepo>())),
      ],
      child: MaterialApp(
        locale: Locale('en'),
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        theme: lightMode,
        builder: (context, child) {
          return AnnotatedRegion<SystemUiOverlayStyle>(
            value: Theme.of(context).brightness == Brightness.dark
                ? SystemUiOverlayStyle.light
                : SystemUiOverlayStyle.dark,
            child: DevicePreview.appBuilder(context, child),
          );
        },
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.homeScreen,
        routes: routes(),
      ),
    );
  }
}

bool isArabic() {
  return Intl.getCurrentLocale() == 'ar';
}
