import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_project/constants/text.dart';
import 'package:sample_project/utils/signin_signup_images.dart';
import 'package:sample_project/utils/textfields.dart';


class SignUpScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _registrationPassword = TextEditingController();

  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            margin:const EdgeInsets.only(top: 40),
            child: Column(
              children: [
                const SigninSignupImage(),
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
                      signUpToContinue,
                      maxLines: 2,
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                      ),
                      minFontSize: 20,
                      maxFontSize: 40,
                    ),
                Fields(
                    controllers: _usernameController,
                    labelText: usernameLabel,
                    hintText: usernameExample,
                    obscureText: false),
                Fields(
                    controllers: _registrationPassword,
                    labelText: registerNumber,
                    hintText: registerNumberExample,
                    obscureText: false),
                Fields(
                  controllers: _passwordController,
                  labelText: passwordLabel,
                  hintText: passwordLabelExample,
                  obscureText: true,
                  icon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.remove_red_eye_outlined,size: .7,)),
                ),
                Fields(
                  controllers: _confirmPasswordController,
                  labelText: passwordLabel,
                  hintText: confirmPasswordLabelExample,
                  obscureText: true,
                  icon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.remove_red_eye_outlined)),
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                     Navigator.of(context).pushReplacementNamed('/home');
                    // if (_passwordController.text ==
                    //     _confirmPasswordController.text) {
                    //   AuthController(context).signUp(
                    //     _usernameController.text,
                    //     _passwordController.text,
                    //   );
                     
                    // } else {
                    //   ScaffoldMessenger.of(context).showSnackBar(
                    //     const SnackBar(content: Text('Passwords do not match!')),
                    //   );
                    // }
                  },
                  style: const ButtonStyle(padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 150,vertical: 10)),
                    backgroundColor: WidgetStatePropertyAll(Colors.purple)
                  ),
                  child:  Text(signUp,style:GoogleFonts.poppins(color: Colors.white),),
                  
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/signin');
                      },
                      child: const Text(signIn,
                          style: TextStyle(color: Colors.purple)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
