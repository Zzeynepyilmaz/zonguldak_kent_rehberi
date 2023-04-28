import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:zonguldak_kent_rehberi/screens/homepage.dart';
import 'package:zonguldak_kent_rehberi/screens/login.dart';

void main() {
  runApp(
    const MyApp(), // Wrap your app
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      useInheritedMediaQuery: true,
      // on below line we are hiding debug banner
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/homepage": (context) => const HomePage(),
      },
      theme: ThemeData(
        // on below line we are specifying theme
        primarySwatch: Colors.red,
      ),
      // First screen of our app
      home: const Login(),
    );
  }
}
