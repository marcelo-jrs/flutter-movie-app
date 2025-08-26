import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movieapp/constants/my_theme_data.dart';
import 'package:movieapp/enums/theme_enums.dart';
import 'package:movieapp/screens/splash_screen.dart';
import 'package:movieapp/service/init_getit.dart';
import 'package:movieapp/service/navigation_service.dart';
import 'package:movieapp/view_model/theme_provider.dart';

void main() async{
  setUpLocator();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_) async {
    await dotenv.load(fileName: "assets/.env");
    runApp(const ProviderScope(child: MyApp()));
  });
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeState = ref.watch(themeProvider);
    return MaterialApp(
      navigatorKey: getIt<NavigationService>().navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Movies App',
      theme: themeState == ThemeEnums.dark ? MyThemeData.darktTheme : MyThemeData.lightTheme,
      home: const SplashScreen(),
    );
  }
}
