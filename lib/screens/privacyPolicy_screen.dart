import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
       debugShowCheckedModeBanner: false,

      home:  Scaffold(
        body: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur diam a congue interdum. Nunc vel consectetur sapien. Nunc bibendum vel mauris ut porta. Maecenas sed nisi rhoncus, varius ipsum eget, tincidunt diam. Phasellus malesuada vestibulum mauris, a lacinia ante pellentesque nec. Aenean enim elit, iaculis et laoreet convallis, facilisis nec nibh. Nullam metus justo, sodales at tristique in, ultricies in dolor. Fusce vel accumsan est. Vivamus vel eros vitae ligula egestas hendrerit quis quis felis. Donec vel diam commodo, ornare lectus in, rhoncus tellus. Aenean molestie justo justo, nec malesuada urna porta auctor''Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse risus justo, convallis iaculis enim eget, feugiat semper risus. Suspendisse pulvinar mauris orci, sit amet consequat lectus placerat eu. Morbi ut sodales lorem. Suspendisse odio neque, dictum eu mattis at, vehicula vel tortor. Nullam ultricies elit sed est laoreet, in mollis ligula pellentesque. Cras mattis, nulla nec feugiat fermentum, diam ligula suscipit enim, id placerat est dui in purus. Nunc sagittis nibh ut quam rutrum, eu tristique arcu suscipit. Donec ut mauris vitae libero imperdiet blandit. Proin cursus ultrices commodo.'),
      )
    );
  }
}