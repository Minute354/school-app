import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_project/constants/text.dart';
import 'package:sample_project/views/signup_screen/signup_screen.dart';
import '../../controllers/authcontroller.dart';
import '../../utils/signin_signup_images.dart';
import '../../utils/textfields.dart';

class SignInScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:    Colors.white,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            margin: const EdgeInsets.only(top: 70, left: 25, right: 25),
            child: Column(
              children: [
                const SigninSignupImage(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AutoSizeText(
                      welcomeback,
                      maxLines: 2,
                      style: GoogleFonts.poppins(
                          fontSize: 30,
                          color: Colors.purple,
                          fontWeight: FontWeight.bold),
                      minFontSize: 20,
                      maxFontSize: 40,
                    ),
                    AutoSizeText(
                      logintoContinue,
                      maxLines: 2,
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                      ),
                      minFontSize: 20,
                      maxFontSize: 40,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                      labelText: usernameLabel,
                      hintText: usernameExample,
                      hintStyle: TextStyle(
                          color: Color.fromARGB(255, 150, 149, 149),
                          fontSize: 15),
                      labelStyle: TextStyle(color: Colors.purple)),
                ),
                const SizedBox(
                  height: 15,
                ),
                Fields(
                    controllers: _passwordController,
                    labelText: passwordLabel,
                    hintText: passwordLabelExample,
                    obscureText: true),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(forgetPassword)),
                ),
                const SizedBox(height: 50),
                ElevatedButton(
                  style: const ButtonStyle(
                      padding: WidgetStatePropertyAll(
                          EdgeInsets.symmetric(horizontal: 150, vertical: 10)),
                      backgroundColor: WidgetStatePropertyAll(Colors.purple)),
                  onPressed: () {
                    AuthController(context).signIn(
                      _usernameController.text,
                      _passwordController.text,
                    );
                    // Navigator.of(context).pushReplacementNamed('/home');
                  },
                  child: const Text(
                    signIn,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.of(context).pushNamed('/signup');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(dontHaveAnAccount,
                          style: TextStyle(color: Colors.black)),
                      InkWell(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen())),
                        child: const Text(signUp,
                            style: TextStyle(color: Colors.purple)),
                      )
                    ],
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
