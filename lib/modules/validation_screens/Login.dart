import 'package:flutter/material.dart';
import 'package:e_commerce/modules/validation_screens/sign_up.dart';
import 'dart:math' as math;

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isobscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          8.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 2.0,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xff40BFFF),
                    ),
                  ),
                  Transform.rotate(
                    angle: -math.pi / 4,
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: -math.pi / 4,
                    child: Container(
                      height: 15,
                      width: 15,
                      color: const Color(0xff40BFFF),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Text(
                'Welcome to Lafyuu',
                style: TextStyle(
                  color: Color(0xff223263),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Text(
                'Sign in to continue',
                style: TextStyle(
                  color: Color(0xff9098B1),
                  fontSize: 15.0,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Colors.grey,
                  ),
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff40BFFF))),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                obscureText: isobscureText,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline),
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff40BFFF))),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.95,
                child: MaterialButton(
                  onPressed: () {},
                  height: 50,
                  color: const Color(0xff40BFFF),
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Divider(
                      color: Color(0xffEBF0FF),
                      indent: 5.0,
                      endIndent: 5.0,
                    ),
                  ),
                  Text(
                    'OR',
                    style: TextStyle(
                      color: Color(0xFF9098B1),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Color(0xffEBF0FF),
                      indent: 5.0,
                      endIndent: 5.0,
                    ),
                  ),
                ],
              ),
              // OutlinedButton.icon(
              //   onPressed: () {},
              //   icon: Image.asset('assets/images/Google.png'),
              //   label: const Text('Login With Google',
              //       style: TextStyle(
              //           color: Color(0xFF9098B1), fontWeight: FontWeight.bold)),
              //   style: ButtonStyle(
              //     shape: MaterialStateProperty.all(
              //       RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(7.0),
              //         side: const BorderSide(
              //           color: Color(0xFFEBF0FF),
              //           width: double.infinity,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              // OutlinedButton.icon(
              //   onPressed: () {},
              //   icon: Image.asset('assets/images/Facebook.png'),
              //   label: const Text('Login With Facebook Button',
              //       style: TextStyle(
              //           color: Color(0xFF9098B1), fontWeight: FontWeight.bold)),
              //   style: ButtonStyle(
              //     shape: MaterialStateProperty.all(
              //       RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(7.0),
              //         side: const BorderSide(
              //           color: Color(0xFFEBF0FF),
              //           width: double.infinity,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: 55.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    border: Border.all(
                      color: const Color(0xffEBF0FF),
                      width: 2.0,
                    ),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 20.0),
                      Image.asset('assets/images/Google.png',
                          width: 35.0, height: 35.0),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.2),
                        child: const Text('Login With Google',
                            style: TextStyle(
                                color: Color(0xFF9098B1),
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: 55.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    border: Border.all(
                      color: const Color(0xffEBF0FF),
                      width: 2.0,
                    ),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 20.0),
                      Image.asset('assets/images/Facebook.png',
                          width: 35.0, height: 35.0),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.19),
                        child: const Text('Login With Facebook',
                            style: TextStyle(
                                color: Color(0xFF9098B1),
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Color(0xff40BFFF),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don’t have a account?'),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => const SingUp(),
                        ),
                        (route) => false,
                      );
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        color: Color(0xff40BFFF),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
