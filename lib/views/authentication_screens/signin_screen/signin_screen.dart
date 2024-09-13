import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_project/constants/text.dart';
import 'package:sample_project/views/common_widgets/signin_signup_images.dart';
import 'package:sample_project/views/common_widgets/textfields.dart';
import '../../../providers/authProvider.dart';

class SignInScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign In')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SigninSignupImage(),
              Fields(
                controllers: _emailController,
                labelText: usernameLabel,
                hintText: usernameExample,
                obscureText: false,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  // Add more complex validation if needed
                  return null;
                },
              ),
              Fields(
                controllers: _passwordController,
                labelText: passwordLabel,
                hintText: passwordLabelExample,
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  // Add more complex validation if needed
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    final email = _emailController.text.toString();
                    final password = _passwordController.text.toString();
                    Provider.of<AuthProvider>(context, listen: false)
                        .signIn(email, password);
                  }
                },
                child: Text('Sign In'),
              ),
              TextButton(
                onPressed: () => Navigator.pushNamed(context, '/signup'),
                child: Text('Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
