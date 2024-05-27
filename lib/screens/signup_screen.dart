import 'package:flutter/material.dart';
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
  final _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Use MediaQuery to get the size of the screen
    final size = MediaQuery.of(context).size;

    Color filteredColor = Colors.white.withOpacity(0.5); // Adjust opacity as needed
    ColorFilter colorFilter = ColorFilter.mode(filteredColor, BlendMode.srcATop);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up', style: TextStyle(color: Colors.black, fontSize: 18)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Back', style: TextStyle(color: Colors.green)),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              _navigateToSignIn(context);
            },
            child: const Text(
              'Login',
              style: TextStyle(color: Colors.green),
            ),
          ),
        ],
      ),
      body: Form(
        key: _form,
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: size.width,
              height: size.height,
              decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/welcome_screen.jpg'), 
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(Color.fromARGB(92, 102, 101, 101), BlendMode.srcATop)
                  ), 
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: size.height * 0.05),
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
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        labelText: 'Name',
                        filled: true,
                        fillColor: Colors.white70,
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
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        labelText: 'Email',
                        filled: true,
                        fillColor: Colors.white70,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: txtPassword,
                      validator: (text) {
                        if (text!.isEmpty) {
                          return "Invalid Input";
                        }
                        return null;
                      },
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        labelText: 'Password',
                        filled: true,
                        fillColor: Colors.white70,
                        suffixIcon: IconButton(
                          icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: size.height * 0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                          value: privacyPolicySet,
                          focusColor: const Color(0xFFF6F6F6),
                          checkColor: const Color(0xFF50555C),
                          activeColor: const Color(0xFFF6F6F6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          onChanged: (value) {
                            setState(() {
                              privacyPolicySet = !privacyPolicySet;
                            });
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                const TextSpan(
                                  text: 'I would like to receive your newsletter and \nother promotional information.',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontFamily: 'Inter',
                                  ),
                                ),
                                TextSpan(
                                  text: 'Privacy Policy',
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.green,
                                    decoration: TextDecoration.underline,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      _navigateToNextScreen(context);
                                    },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(size.width * 0.9, 51),
                      backgroundColor: const Color(0xFF57A074),
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      textStyle: const TextStyle(fontSize: 16, fontFamily: 'Inter'),
                    ),
                    onPressed: () {
                      setState(() {
                        name = txtName.text;
                        email = txtEmail.text;
                        password = txtPassword.text;
                        _saveForm();
                      });
                    },
                    child: const Text('Register'),
                  ),
                  SizedBox(height: size.height * 0.05),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const PrivacyPolicyScreen()),
    );
  }

  void _navigateToSignIn(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const SignIn()),
    );
  }

  void _saveForm() {
    final isValid = _form.currentState!.validate();
    if (isValid) {
      // Implement the registration logic here
    }
  }
}

