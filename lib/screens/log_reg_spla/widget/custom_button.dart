import 'package:car_rental/screens/log_reg_spla/Login/login_screen.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton(
      {super.key,
      required this.onPressed,
      required this.buttonText,
      required this.fontSize});

  final VoidCallback onPressed;
  final String buttonText;
  final double fontSize;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.amber,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
      onPressed: widget.onPressed,
      child: Text(
        widget.buttonText,
        style: TextStyle(
            color: Colors.black,
            fontSize: widget.fontSize,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
