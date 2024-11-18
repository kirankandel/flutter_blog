import 'package:blog/core/theme/app_palette.dart';
import 'package:blog/features/auth/presentation/pages/login_page.dart';
import 'package:blog/features/auth/presentation/widgets/auth_field.dart';
import 'package:blog/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});
  static route() => MaterialPageRoute(builder: (context) => const SignUpPage());


  @override
  State<SignUpPage> createState() => _SignUpPageState();


}

class _SignUpPageState extends State<SignUpPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
          const Text(
            "SignUp.",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          AuthField(hintText: 'Name', controller: nameController,),
          const SizedBox(height: 15),
          AuthField(hintText: 'Email', controller: emailController),
          const SizedBox(height: 15),
          AuthField(hintText: 'Password', controller: passwordController, isObscureText: true),
          const SizedBox(height: 20),
          const AuthGradientButton(
            buttonText: 'Sign Up',
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () => Navigator.pop(context, LoginPage.route()),
            child: RichText(
              text: TextSpan(
                text: 'Already have an account? ',
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
                children: [
             TextSpan(
              text:  'Login',
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
