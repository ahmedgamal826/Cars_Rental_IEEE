import 'package:car_rental/screens/Home/homeScreen.dart';
import 'package:car_rental/screens/log_reg_spla/Register/register_screen.dart';
import 'package:car_rental/screens/log_reg_spla/widget/custom_row.dart';
import 'package:car_rental/screens/log_reg_spla/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool show = true;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: widget.formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: ListView(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Image.asset(
                  'assets/images/car_login.png',
                  width: 200,
                ),
                const Center(
                  child: Text(
                    'Login Now',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  controller: widget.emailController,
                  label: 'Email',
                  validatorMessage: 'Email is required',
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  controller: widget.passwordController,
                  label: 'Password',
                  validatorMessage: 'Password is required',
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: Colors.blue),
                      onPressed: () {
                        setState(() {
                          if (widget.formKey.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => Home_Screen()));
                          }
                        });
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      )),
                ),
                CustomRow(
                    txt: "don't have an account?",
                    buttonText: "Register Now",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterSCreen()));
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
