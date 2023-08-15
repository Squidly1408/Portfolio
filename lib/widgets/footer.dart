import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shadowColor: const Color(0xff2ba84a),
      color: const Color(0xff171717),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: IconButton(
              onPressed: () {
                if (mounted) {
                  GoRouter.of(context).go('/');
                }
              },
              icon: const Icon(
                Icons.home_rounded,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: IconButton(
              onPressed: () {
                if (mounted) {
                  GoRouter.of(context).go('/projects-list');
                }
              },
              icon: const Icon(
                Icons.table_rows_rounded,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 1.0, vertical: 1.0),
            child: MaterialButton(
              onPressed: () {
                if (mounted) {
                  GoRouter.of(context).go('/profile');
                }
              },
              child: const CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage:
                    AssetImage('lib/assets/images/profile_picture.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
