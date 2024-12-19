import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_app/shared/local/cach_helper.dart';
import 'package:gym_app/utills/colors.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'controller/languag_cubit/loce_cubit.dart';
import 'controller/languag_cubit/loce_state.dart';
import 'view/home/home.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LanguageCubit()..getSavedLanguage(),),
      ],
      child: BlocBuilder <LanguageCubit, languageStates>(
        builder: (context, state) {
      if (state is changeLanguageState) {
         return MaterialApp(
            builder: (context, child) => ResponsiveBreakpoints.builder(
              breakpoints: [
                const Breakpoint(start: 0, end: 450, name: MOBILE),
                const Breakpoint(start: 451, end: 800, name: TABLET),
                const Breakpoint(start: 801, end: 1920, name: DESKTOP),
                const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
              ],
              child: child!,
            ),
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                scaffoldBackgroundColor: ColorManager.backgroundColor
            ),
           localizationsDelegates: [
             AppLocalizations.delegate,
             GlobalMaterialLocalizations.delegate,
             GlobalWidgetsLocalizations.delegate,
             GlobalCupertinoLocalizations.delegate,
           ],
           supportedLocales: AppLocalizations.supportedLocales,
           locale: state.locale,
            home: HomeScreen(),
          );
      };
      return const SizedBox();
        }
      ),
    );
  }
}
