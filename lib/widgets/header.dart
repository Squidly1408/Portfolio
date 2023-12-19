// packages
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

// pages
import '../main.dart';

class Header extends StatefulWidget {
  const Header({
    super.key,
    required this.homePage,
  });

  // If homepage key
  final bool homePage;

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  var month = DateTime.now().month;
  var day = DateTime.now().day;

  @override
  Widget build(BuildContext context) {
    // app bar
    return AppBar(
      shadowColor: mainColour,
      titleSpacing: 0,
      actions: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // discord link
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                onPressed: () {
                  launchUrl(
                    Uri.parse(
                        'https://discord.com/users/squidly1408'), // add link to discord
                  );
                },
                icon: FaIcon(
                  FontAwesomeIcons.discord,
                  color: secondaryColour3,
                ),
              ),
            ),

            // LinkedIn link
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                onPressed: () {
                  launchUrl(
                    Uri.parse(
                        'https://www.linkedin.com/in/squidly1408'), // add link to discord
                  );
                },
                icon: FaIcon(
                  FontAwesomeIcons.linkedinIn,
                  color: secondaryColour3,
                ),
              ),
            ),

            // GitHub link
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                onPressed: () {
                  launchUrl(
                    Uri.parse(
                        'https://github.com/Squidly1408'), // add link to discord
                  );
                },
                icon: FaIcon(
                  FontAwesomeIcons.github,
                  color: secondaryColour3,
                ),
              ),
            ),

            // Email link
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                onPressed: () async {
                  String? encodeQueryParameters(Map<String, String> params) {
                    return params.entries
                        .map((MapEntry<String, String> e) =>
                            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                        .join('&');
                  }

                  final Uri emailUri = Uri(
                    scheme: 'mailto',
                    path: 'lucas.newman140@gmail.com',
                    query: encodeQueryParameters(<String, String>{
                      'subject': '',
                      'body': '',
                    }),
                  );
                  if (await canLaunchUrl(emailUri)) {
                    launchUrl(emailUri);
                  } else {
                    throw Exception('Could not launch $emailUri');
                  }
                },
                icon: FaIcon(
                  FontAwesomeIcons.at,
                  color: secondaryColour3,
                ),
              ),
            ),
          ],
        ),
      ],
      automaticallyImplyLeading: false,
      backgroundColor: secondaryColour, // black

      // logo
      title: SizedBox(
        height: 50,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: MaterialButton(
                splashColor: mainColour,
                highlightColor: const Color(0x00000000),
                onLongPress: () {
                  setState(
                    () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Padding(
                            padding: const EdgeInsets.all(16.0),
                            // card
                            child: Card(
                              color: secondaryColour,
                              child: Center(
                                child: SingleChildScrollView(
                                  child: Center(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        // logo
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.3,
                                          child: SvgPicture.asset(
                                            'lib/assets/images/logo.svg',
                                          ),
                                        ),
                                        // Text
                                        Text(
                                          'Thankyou!!!',
                                          style: TextStyle(
                                            color: secondaryColour3,
                                            fontSize: 50,
                                          ),
                                        ),
                                        Text(
                                          '- Lucas P.E Newman',
                                          style: TextStyle(
                                            color: secondaryColour3,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  );
                },
                onPressed: () {
                  GoRouter.of(context).go('/');
                },
                child: widget.homePage
                    ? SvgPicture.asset(
                        month == 2 && day == 14
                            ? 'lib/assets/images/logo_heart.svg'
                            : 'lib/assets/images/logo.svg',
                        fit: BoxFit.fitHeight,
                        alignment: Alignment.centerLeft)
                    : Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(
                          Icons.home,
                          color: mainColour2,
                        ),
                      ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
