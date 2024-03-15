import 'package:doitright/views/helper.dart';
import 'package:doitright/views/main_screen/main_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _loginController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Color(0xffCCEFFC),
          ),
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: height * .3,
                      child: Image.asset(
                        'assets/images/heroimage.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: height * .3,
                      width: double.infinity,
                      color: const Color.fromARGB(255, 1, 103, 255)
                          .withOpacity(.3),
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: SafeArea(
                          child: Image.asset('assets/images/logotaek.png')),
                    ),
                  ],
                ),
                Container(
                  height: 10,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                    border: Border(
                      top: BorderSide(color: Colors.black),
                      bottom: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 32.0),
                  child: Container(
                    height: height * .7 - 32,
                    width: width - 32,
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(.3),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        TextFieldWidget(
                          width: width,
                          labelText: 'Login',
                          controller: _loginController,
                        ),
                        const SizedBox(height: 20),
                        TextFieldWidget(
                          width: width,
                          labelText: 'Password',
                          controller: _passwordController,
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        InkWell(
                          onTap: () {
                            replace(context, const MainScreen());
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff2491FE),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 32,
                              vertical: 8,
                            ),
                            child: Text(
                              'Login'.toUpperCase(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 32),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            children: [
                              Text(
                                'Embark on a journey of discipline, strength and mastery. Unleash your inner warrior with step-by-step tutorials and expert-lead lessons. Train at your own pace, anytime, anywhere. Join us on the path of self discovery, empowerment and excellence.',
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                'Let the training begin!',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Dont\'t have an account?'),
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                  foregroundColor: Color(0xff2491FE)),
                              child: const Text(
                                'Sign In',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.width,
    required this.labelText,
    required this.controller,
  });

  final double width;
  final String labelText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width * .6,
      child: TextField(
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 14,
        ),
        cursorColor: Colors.blue,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 0,
            horizontal: 16,
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 2,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 2,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 2,
              color: Colors.blue,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          label: Center(
            child: Text(labelText),
          ),
          labelStyle: const TextStyle(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
