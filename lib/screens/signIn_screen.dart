import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grow_app_mobile/screens/forgotPassword.dart';
import 'package:grow_app_mobile/screens/bottomNavBar.dart';
import 'package:grow_app_mobile/screens/location.dart';
import 'package:grow_app_mobile/screens/privacyPolicy_screen.dart';
import 'package:flutter/gestures.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
            title: const Text('SignIn',
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
                onPressed: () {},
                child: const Text(
                  'SignUp',
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
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        labelText: 'Email',
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
                      child: const Text('Login ')),
                  const SizedBox(height: 10),
                  RichText(
                      text: TextSpan(
                          text: 'Forgot your password?',
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              _navigateToNextScreen(context);
                            }))
                ],
              ),
            ),
          ),
        ));
  }

  static const c = '0xFF57A074';
  static const d = '0xFF24BC7C';

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const ForgotPassword()));
  }

  void _navigateToLocationScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Wrapper()));
  }

  void _saveForm() {
    final isValid = _form.currentState!.validate();
    _navigateToLocationScreen(context);
    if (!isValid) {
      return;
    }
  }
}
