import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:naxa_app/core/constants/colors.dart';
import 'package:naxa_app/core/constants/sizes.dart';
import 'package:naxa_app/gen/fonts.gen.dart';

import 'core/routes/route_names.dart';
import 'core/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: appScreenSize,
        builder: () {
          return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              brightness: Brightness.light,
              primaryColor: primaryColor,
              textTheme: TextTheme(
                headlineSmall: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
                headlineMedium: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
                headlineLarge: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
                titleLarge: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
                titleMedium: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
                titleSmall: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                ),
                bodySmall: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              iconTheme: const IconThemeData(color: primaryColor),
              scaffoldBackgroundColor: lightScaffoldBackgroundColor,
              fontFamily: FontFamily.outfit,
            ),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            locale: const Locale('es', ''),
            onGenerateRoute: Routes.generateRoute,
            initialRoute: splashRoute,
          );
        },);
  }
}
