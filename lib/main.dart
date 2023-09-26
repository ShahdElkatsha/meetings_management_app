// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:intl/intl.dart';
// import 'package:localization/localization.dart';
// import 'generated/l10n.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:meetings_app/features/splash/presentation/view/splash_view.dart';
import 'package:sizer/sizer.dart';




void main() async{
  // Needs to be called so that we can await for EasyLocalization.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
      EasyLocalization(
        supportedLocales: const [Locale('en', 'US'), Locale('ar', 'AE')],
        path: 'assets/translations',
        fallbackLocale: const Locale('en', 'US'),
        child:
        const MyApp()
  )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    // LocalJsonLocalization.delegate.directories = ['lib/l10n'];

    return Sizer(
      builder:(context,orientiation,deviceType){
        return  MaterialApp(

          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,

          // locale: const Locale('en'),
          // localizationsDelegates: [
          //   // S.delegate,
          //
          //   GlobalMaterialLocalizations.delegate,
          //   GlobalWidgetsLocalizations.delegate,
          //   GlobalCupertinoLocalizations.delegate,  // delegate from flutter_localization
          //
          //   LocalJsonLocalization.delegate,  // delegate from localization package.
          // ],
          // supportedLocales: S.delegate.supportedLocales,


          debugShowCheckedModeBanner: false,
          home: const SplashView(),

        );
      },
    );
  }

  // bool isArabic() {
  //   return Intl.getCurrentLocale() == 'ar';
  // }
}

