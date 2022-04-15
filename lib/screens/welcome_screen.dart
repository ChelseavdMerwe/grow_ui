import 'package:flutter/material.dart';
import '../screens/signup.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/welcome_screen.jpg'),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            AppBar(
              centerTitle: true,
              foregroundColor: Colors.black,
              elevation: 0,
              title: const Text('Welcome'),backgroundColor: Colors.transparent,shadowColor: null),
            const SizedBox(
              height: 200,
            ),
            const Image(
                image: AssetImage('assets/leaf_white.png'),
                fit: BoxFit.scaleDown),
            const SizedBox(
              height: 10,
            ),
            const Center(
                child: Text(
              'GROW',
              style: TextStyle(
                  color: Colors.white, fontSize: 45, fontFamily: 'Marmelad'),
            )),
            const SizedBox(
              height: 200,
            ),
            ElevatedButton(
             style: ElevatedButton.styleFrom(
              // background color
              fixedSize: const Size(343, 51),
              primary: Color(int.parse(c)),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              shape:  RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8))
            ),
                onPressed: () {
                  _navigateToNextScreen(context);
                },
                child: const Text('Get Started',
                style: TextStyle(
                  color: Colors.white, fontSize: 16, fontFamily: 'Inter'),))
          ],
        ),
      ),
    );
  }

  static const c = '0xFF57A074';

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => SignUp()));
  }
}
