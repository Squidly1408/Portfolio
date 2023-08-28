import '../auth/login.dart';
import '../models/mentors.dart';
import '../pages/LTI/clickk.dart';
import '../pages/LTI/saphi.dart';
import '../pages/error_page.dart';
import '../pages/profile.dart';
import '../pages/projects.dart';
import '../pages/projects/aac.dart';
import '../pages/projects/energy_realease_rate.dart';
import '../pages/projects/glove_project.dart';
import '../pages/projects/python.dart';
import '../pages/projects/raspberry_pi.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'models/comment.dart';

import 'models/costs.dart';
import 'models/project_resources.dart';
import 'pages/home.dart';
import 'pages/homepage.dart';
import 'pages/work_in_progress_project_page.dart';
import 'pages/projects/portfolio.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

GoRouter router = GoRouter(
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
            path: 'homepage',
            builder: (context, state) => const Homepage(),
          ),
          GoRoute(
            path: 'login',
            builder: (context, state) => const Login(),
          ),
          GoRoute(
            path: 'profile',
            builder: (context, state) => const Profile(),
          ),
          GoRoute(
            path: 'projects',
            builder: (context, state) => const Projects(),
            routes: [
              GoRoute(
                path: 'portfolio',
                builder: (context, state) => const Portfolio(),
              ),
              GoRoute(
                path: 'aac',
                builder: (context, state) => const AACProject(),
              ),
              GoRoute(
                path: 'raspberry-pi',
                builder: (context, state) => const RaspberryPiProjectScreen(),
              ),
              GoRoute(
                path: 'python',
                builder: (context, state) => const PythonProjects(),
              ),
              GoRoute(
                path: 'energy-release-rate',
                builder: (context, state) => const EnergyReleaseRate(),
              ),
              GoRoute(
                path: 'auslan-glove',
                builder: (context, state) => const GloveProject(),
              ),
              GoRoute(
                path: ':key',
                builder: (context, state) => ProjectPage(
                  id: state.pathParameters['key']!,
                  title: state.pathParameters['key']!,
                  cost: [
                    Costs(440.66,
                        'https://api.flutter.dev/flutter/widgets/GridView/GridView.builder.html'),
                  ],
                  description:
                      "The original idea for the glove project came from me finding out about a type of sensor called a flex sensor when scrolling an online store, essentially a resistor like electrical component that increases resistance of an electrical circuit when flexed letting you measure how much its flexed. After finding out about the flex sensor I came up with the idea of using it to measure the percentage that fingers are flexed for a sign-language conversion device. This idea came from working on an augmentative and alternative communication (AAC) program designed to help develop or replace verbal communication. The idea of using electronics to be used for assistive communication is not a new idea, neither is using a glove like device to recognise sign language. It has been done many times and I’ve done it one more time.\n\n\n", //cahnge back to login
                  stepsToComplete: const [
                    'hello0',
                    'hello1',
                    'hello2',
                    'hello3',
                    'hello4'
                  ],
                  resources: [
                    ProjectResources('Learning Plan',
                        'https://api.flutter.dev/flutter/widgets/GridView/GridView.builder.html'),
                    ProjectResources('Learning Plan',
                        'https://api.flutter.dev/flutter/widgets/GridView/GridView.builder.html'),
                    ProjectResources('Learning Plan',
                        'https://api.flutter.dev/flutter/widgets/GridView/GridView.builder.html'),
                    ProjectResources('Learning Plan',
                        'https://api.flutter.dev/flutter/widgets/GridView/GridView.builder.html'),
                    ProjectResources('Learning Plan',
                        'https://api.flutter.dev/flutter/widgets/GridView/GridView.builder.html'),
                    ProjectResources('Learning Plan',
                        'https://api.flutter.dev/flutter/widgets/GridView/GridView.builder.html'),
                    ProjectResources(
                        'Learning Planbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb',
                        'https://api.flutter.dev/flutter/widgets/GridView/GridView.builder.html'),
                  ],
                  mentors: [
                    Mentors('Dr Jacqueline Bailey ',
                        'https://www.newcastle.edu.au/profile/jacqueline-d-bailey'),
                    Mentors('Dr Jacqueline Bailey ',
                        'https://www.newcastle.edu.au/profile/jacqueline-d-bailey'),
                    Mentors('Dr Jacqueline Bailey ',
                        'https://www.newcastle.edu.au/profile/jacqueline-d-bailey'),
                    Mentors('Dr Jacqueline Bailey ',
                        'https://www.newcastle.edu.au/profile/jacqueline-d-bailey'),
                    Mentors('Dr Jacqueline Bailey ',
                        'https://www.newcastle.edu.au/profile/jacqueline-d-bailey'),
                    Mentors('Dr Jacqueline Bailey ',
                        'https://www.newcastle.edu.au/profile/jacqueline-d-bailey'),
                  ],
                  comments: [
                    Comment('Kylie',
                        'She is pretty, and beautiful and amazing and all round perfect.'),
                    Comment('Kylie',
                        'She is pretty, and beautiful and amazing and all round perfect.'),
                    Comment('Kylie',
                        'She is pretty, and beautiful and amazing and all round perfect.'),
                  ],
                ),
              ),
            ],
          ),
          GoRoute(
            path: 'internship',
            builder: (context, state) => const LTISaphi(),
            routes: [
              GoRoute(
                path: 'saphi',
                builder: (context, state) => const LTISaphi(),
              ),
              GoRoute(
                path: 'clickk',
                builder: (context, state) => const LTICLickk(),
              ),
            ],
          ),
        ],
      ),
    ]);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Squidly1408',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
