import 'package:flutter/material.dart';
import 'data.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

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
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff10d0d6),
            Color(0xff03767b),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Card(
          color: const Color(0xff171717),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                child: Image.asset(
                  'lib/assets/images/logo.png',
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  style: const TextStyle(
                    color: Color(0xff03767b),
                  ),
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: const Color(0xff03767b),
                  decoration: InputDecoration(
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff03767b),
                        width: 3,
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff03767b),
                      ),
                    ),
                    hintText: 'Email...',
                    hintStyle: const TextStyle(
                      color: Color(0xff03767b),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  style: const TextStyle(
                    color: Color(0xff03767b),
                  ),
                  controller: passwordController,
                  obscureText: true,
                  cursorColor: const Color(0xff03767b),
                  decoration: InputDecoration(
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff03767b),
                        width: 3,
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff03767b),
                      ),
                    ),
                    hintText: 'Password...',
                    hintStyle: const TextStyle(
                      color: Color(0xff03767b),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  login();
                },
                color: const Color(0xff03767b),
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
