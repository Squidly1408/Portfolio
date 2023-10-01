// packages
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// pages / models
import '../auth/login.dart';
import '../pages/error_page.dart';
import '../pages/projects/aac.dart';
import '../pages/projects/glove_project.dart';
import 'pages/home.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

// colour scheming
Color mainColour = const Color(0xff03767b);
Color mainColour2 = const Color(0xff10d0d6);

Color secondaryColour = const Color(0xff171717);
Color secondaryColour2 = const Color(0xffa6a6a6);
Color secondaryColour3 = const Color(0xffffffff);

// routing - by go router - need to make work
final GoRouter _router = GoRouter(
  errorBuilder: (context, state) {
    return ErrorPage(
      error: state.uri.toString(),
    );
  },
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Home(),
      routes: [
        GoRoute(
          path: 'login',
          builder: (context, state) => const Login(),
        ),
        GoRoute(
          path: 'projects',
          routes: [
            GoRoute(
              path: 'aac',
              builder: (context, state) => const AACProject(),
            ),
            GoRoute(
              path: 'auslan-glove',
              builder: (context, state) => const GloveProject(),
            ),
          ],
        ),
      ],
    ),
  ],
);

// my app
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => const Home(),
      title: 'Squidly1408',
      debugShowCheckedModeBanner: false,

      // theming
      theme: ThemeData(
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: MaterialStatePropertyAll(mainColour),
        ),
      ),
    );
  }
}
