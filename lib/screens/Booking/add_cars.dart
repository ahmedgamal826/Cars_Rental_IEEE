import 'package:car_rental/screens/Booking/booking_screen.dart';
import 'package:car_rental/screens/log_reg_spla/widget/custom_button.dart';
import 'package:car_rental/screens/log_reg_spla/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddNewCard_Screen extends StatefulWidget {
  GlobalKey<FormState> fkey = GlobalKey<FormState>();
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController vailThruController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController personNameController = TextEditingController();
  AddNewCard_Screen({super.key});
  @override
  State<AddNewCard_Screen> createState() => _AddNewCard_ScreenState();
}

class _AddNewCard_ScreenState extends State<AddNewCard_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ADD CARD'),
        centerTitle: true,
      ),
      body: Form(
        key: widget.fkey,
        child: Center(
          child: ListView(
            children: [
              const SizedBox(
                height: 150,
              ),
              CustomTextField(
                controller: widget.cardNumberController,
                label: 'Card Number',
                validatorMessage: 'Card Number is required',
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextField(
                controller: widget.passController,
                label: 'Password',
                validatorMessage: 'password is required',
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextField(
                controller: widget.personNameController,
                label: ' Name',
                validatorMessage: ' Name is required',
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextField(
                controller: widget.vailThruController,
                label: 'VAILD THRU',
                validatorMessage: 'vaild thru is required',
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70.0),
                child: CustomButton(
                  buttonText: 'Done',
                  fontSize: 28,
                  onPressed: () {
                    if (widget.fkey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => BookScreen(
                            cardNumber: widget.cardNumberController.text,
                            name: widget.personNameController.text,
                          ),
                        ),
                      );
                    }
                    // Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
