import 'package:flutter/material.dart';
import 'package:grow_app_mobile/screens/forgotPassword.dart';
import 'package:grow_app_mobile/screens/bottomNavBar.dart';
import 'package:flutter/gestures.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String email = '';
  String password = '';
  bool _isObscure = true;
  final TextEditingController txtEmail = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();
  final _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login', style: TextStyle(color: Colors.black, fontSize: 18)),
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
            onPressed: () {},
            child: const Text(
              'Sign Up',
              style: TextStyle(color: Colors.green),
            ),
          ),
        ],
      ),
      body: Form(
        key: _form,
        child: Center(
          child: SingleChildScrollView(
            child: SizedBox(
              width: 343,
              child: Column(
                children: [
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: txtPassword,
                      obscureText: _isObscure,
                      validator: (text) {
                        if (text!.isEmpty) {
                          return "Invalid Input";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        labelText: 'Password',
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscure ? Icons.visibility : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 27,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(343, 51),
                      backgroundColor: const Color(0xFF57A074),
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      textStyle: const TextStyle(fontSize: 16, fontFamily: 'Inter'),
                    ),
                    onPressed: () {
                      setState(() {
                        email = txtEmail.text;
                        password = txtPassword.text;
                        _saveForm();
                      });
                    },
                    child: const Text('Login'),
                  ),
                  const SizedBox(height: 10),
                  RichText(
                    text: TextSpan(
                      text: 'Forgot your password?',
                      style: const TextStyle(fontSize: 14, color: Colors.grey),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          _navigateToNextScreen(context);
                        },
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text('Or', style: TextStyle(color: Colors.grey)),
                  const SizedBox(height: 10),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF3B5998),
                      fixedSize: const Size(343, 51),
                    ),
                    icon: const Icon(Icons.facebook, color: Colors.white),
                    onPressed: () {},
                    label: const Text('Sign In with Facebook', style: TextStyle(color: Colors.white)),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: const BorderSide(color: Colors.grey),
                      fixedSize: const Size(343, 51),
                    ),
                    icon: const Icon(Icons.g_translate, color: Colors.grey),
                    onPressed: () {},
                    label: const Text('Sign In with Google', style: TextStyle(color: Colors.grey)),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      fixedSize: const Size(343, 51),
                    ),
                    icon: const Icon(Icons.apple, color: Colors.white),
                    onPressed: () {},
                    label: const Text('Sign In with Apple', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const ForgotPassword()));
  }

  void _navigateToLocationScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const Wrapper()));
  }

  void _saveForm() {
    final isValid = _form.currentState!.validate();
    if (isValid) {
      _navigateToLocationScreen(context);
    }
  }
}

void main() {
  runApp(MaterialApp(
    home: SignIn(),
  ));
}
