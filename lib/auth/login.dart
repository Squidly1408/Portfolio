// packages
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// data
import 'data.dart';

// pages
import '../main.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // controller
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  // login command
  login() {
    var email = emailController.text;
    var password = passwordController.text;
    if (email.toLowerCase() == 'lucas.newman' && password == '1234') {
      logIn();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      // background fade decoration
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            mainColour2,
            mainColour,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        // card
        child: Card(
          color: const Color(0xff171717),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                child: SvgPicture.asset(
                  'lib/assets/image/logo.svg',
                  fit: BoxFit.contain,
                ),
              ),
              // email login details
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  style: TextStyle(
                    color: mainColour,
                  ),
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: mainColour,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: mainColour,
                        width: 3,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: mainColour,
                      ),
                    ),
                    hintText: 'Email...',
                    hintStyle: TextStyle(
                      color: mainColour,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              // password login details
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  style: TextStyle(
                    color: mainColour,
                  ),
                  controller: passwordController,
                  obscureText: true,
                  cursorColor: const Color(0xff03767b),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: mainColour,
                        width: 3,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: mainColour,
                      ),
                    ),
                    hintText: 'Password...',
                    hintStyle: TextStyle(
                      color: mainColour,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              // login button
              MaterialButton(
                onPressed: () {
                  login();
                },
                color: mainColour,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 75),
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
