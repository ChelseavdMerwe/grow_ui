import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grow_app_mobile/screens/privacyPolicy_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:grow_app_mobile/screens/signIn_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String name = '';
  String email = '';
  String password = '';
  bool privacyPolicySet = false;
  bool _isObscure = true;
  final TextEditingController txtName = TextEditingController();
  final TextEditingController txtEmail = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();
  static bool validate = false;
  final _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('SignUp',
                style: TextStyle(color: Colors.black, fontSize: 18)),
            centerTitle: true,
            elevation: 0,
            titleSpacing: 0,
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.black,
            leading: null,
            // leading: TextButton(
            //     onPressed: () {},
            //     child: const Text('Back',  style: TextStyle(color: Colors.green)),
            //   ) ,
            actions: <Widget>[
              TextButton(
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.only(right: 40)),
                onPressed: () {
                  _navigateToSignIn(context);
                },
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.green),
                ),
              )
            ]),
        body: Form(
          key: _form,
          child: Center(
            child: SizedBox(
              width: 343,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: txtName,
                      validator: (text) {
                        if (text!.isEmpty) {
                          return "Invalid Input";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        labelText: 'Name',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: txtEmail,
                      validator: (text) {
                        if (text!.isEmpty) {
                          return "Invalid Input";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        labelText: 'Email',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      validator: (text) {
                        if (text!.isEmpty) {
                          return "Invalid Input";
                        }
                        return null;
                      },
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                                  
                          labelText: 'Password',
                          suffixIcon: IconButton(
                              icon: Icon(_isObscure
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              })),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(top: 55),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                              value: privacyPolicySet,
                              focusColor: Color(int.parse('0xFFF6F6F6')),
                              checkColor: Color(int.parse('0xFF50555C')),
                              activeColor: Color(int.parse('0xFFF6F6F6')),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                              onChanged: (value) {
                                setState(() {
                                  privacyPolicySet = !privacyPolicySet;
                                });
                              }),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: RichText(
                                text: TextSpan(children: [
                              const TextSpan(
                                  text:
                                      'I would like to receive your newsletter and \nother promotional information.',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontFamily: 'Inter')),
                              TextSpan(
                                  text: 'Privacy Policy',
                                  style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.green,
                                      decoration: TextDecoration.underline),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      _navigateToNextScreen(context);
                                    })
                            ])),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 27,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(343, 51),
                        primary: Color(int.parse(c)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 15),
                        textStyle:
                            const TextStyle(fontSize: 16, fontFamily: 'Inter'),
                      ),
                      onPressed: () {
                        setState(() {
                          name = txtName.text;
                          email = txtEmail.text;
                          password = txtPassword.text;
                          _saveForm();
                        });
                      },
                      child: const Text('Register'))
                ],
              ),
            ),
          ),
        ));
  }

  static const c = '0xFF57A074';
  static const d = '0xFF24BC7C';

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const PrivacyPolicyScreen()));
  }

  void _navigateToSignIn(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const SignIn()));
  }

  void _saveForm() {
    final isValid = _form.currentState!.validate();
    if (!isValid) {
      return;
    }
  }
}
