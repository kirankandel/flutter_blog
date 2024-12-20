import 'package:blog/core/theme/app_palette.dart';
import 'package:blog/features/auth/presentation/pages/signup_page.dart';
import 'package:blog/features/auth/presentation/widgets/auth_field.dart';
import 'package:blog/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static route() => MaterialPageRoute(builder: (context) => const LoginPage());

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
          const Text(
            "Login.",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          AuthField(hintText: 'Email', controller: emailController),
          const SizedBox(height: 15),
          AuthField(hintText: 'Password', controller: passwordController, isObscureText: true),
          const SizedBox(height: 20),
          const AuthGradientButton(
            buttonText: 'Login',
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () => Navigator.push(context, SignUpPage.route()),
            child: RichText(
              text: TextSpan(
                text: "Don't have an account? ",
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
                children: [
             TextSpan(
              text:  'Sign Up',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: AppPalette.gradient2,
                fontWeight: FontWeight.bold,
              ),
             )
                ],
              ),
            ),
          ),
                ],
              ),
        ));
  }
}
