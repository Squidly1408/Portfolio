import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import '../auth/data.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  var loggedIn = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shadowColor: const Color(0xff10d0d6),
      titleSpacing: 0,
      actions: [
        Row(
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
            MediaQuery.of(context).size.width > 1000
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: DropdownButton(
                      items: const [
                        DropdownMenuItem(
                          value: 'portfolio',
                          child: Text(
                            'My protfolio',
                            style: TextStyle(
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                        DropdownMenuItem(
                          value: 'aac',
                          child: Text(
                            'AAC Project',
                            style: TextStyle(
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                        DropdownMenuItem(
                          value: 'raspberry-Pi',
                          child: Text(
                            'Raspberry Pi',
                            style: TextStyle(
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                        DropdownMenuItem(
                          value: 'python',
                          child: Text(
                            'Python Projects',
                            style: TextStyle(
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                        DropdownMenuItem(
                          value: 'energy-release-rate',
                          child: Text(
                            'Energy Release Rate',
                            style: TextStyle(
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                        DropdownMenuItem(
                          value: 'auslan-glove',
                          child: Text(
                            'Auslan Glove Project',
                            style: TextStyle(
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ],
                      onChanged: (value) {
                        GoRouter.of(context).go('/projects/$value');
                      },
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: Color(0xffffffff),
                      ),
                      hint: const Text(
                        'Projects',
                        style: TextStyle(
                          color: Color(0xffffffff),
                        ),
                      ),
                      dropdownColor: const Color(0xff171717),
                    ),
                  )
                : const SizedBox(
                    width: 0,
                    height: 0,
                  ),
            isLoggedIn == false
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: SizedBox(
                      width: 70,
                      child: MaterialButton(
                        onPressed: () {
                          if (mounted) {
                            GoRouter.of(context).go('/login');
                          }
                        },
                        height: 40,
                        color: const Color(0xff10d0d6),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Color(0xff171717),
                          ),
                        ),
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: SizedBox(
                      width: 70,
                      child: MaterialButton(
                        onPressed: () {},
                        height: 40,
                        color: const Color(0xff10d0d6),
                        child: const Text(
                          'Edit',
                          style: TextStyle(
                            color: Color(0xff171717),
                          ),
                        ),
                      ),
                    ),
                  ),
          ],
        ),
      ],
      automaticallyImplyLeading: false,
      backgroundColor: const Color(0xff171717),
      title: SizedBox(
        height: MediaQuery.of(context).size.height * 0.0901,
        child: Image.asset('lib/assets/images/title_image.png',
            fit: BoxFit.fitHeight),
      ),
    );
  }
}
