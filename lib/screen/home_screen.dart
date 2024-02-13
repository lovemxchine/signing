import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding_screen/components/my_textfield.dart';

import '../components/my_button.dart';
// import 'package:onboarding_screen/screen/introduction_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key});

  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  
  signInWithEmailAndPassword(){
    print('Sign In');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'คนที่ต้องตรวจงาน',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Form(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              "สวัสดี, คุณพร้อมรึยัง?",
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 24,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "กรุณาเข้าสู่ระบบด้วย Email และ Password",
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                textStyle: Theme.of(context).textTheme.displaySmall,
                fontSize: 16,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MyTextField(
                controller: emailcontroller,
                hintText: 'กรุณากรอกอีเมล',
                obscureText: false,
                labelText: "Email"),
            const SizedBox(
              height: 20,
            ),
            MyTextField(
                controller: passwordcontroller,
                hintText: 'กรุณากรอกรหัสผ่าน',
                obscureText: false,
                labelText: "Password"),
                const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: GoogleFonts.lato(
                        textStyle: Theme.of(context).textTheme.displaySmall,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  
                  
                  
                ],
              ),
            ),
            SizedBox(height: 20,),
                  MyButton(
                    onTap: signInWithEmailAndPassword,
                    hintText: "Sign In",)
          ],
        ),
      ),
    );
  }
}