import 'package:flutter/material.dart';

class BioProfile extends StatelessWidget {
  const BioProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Computer Engineer have no crush but only crash",
      style: TextStyle(
        fontFamily: 'Poppins-Light.ttf',
        fontSize: 16.0,
        color: Colors
            .black, // Set text color to black or any color you prefer
        fontWeight: FontWeight.w400,
        decoration: TextDecoration.none,
      ),
    );
  }
}