import 'package:car_rental/screens/Booking/add_cars.dart';
import 'package:car_rental/screens/Booking/booking_screen.dart';

import 'package:car_rental/screens/Home/homeScreen.dart';
import 'package:car_rental/screens/Info/Info_screen.dart';
import 'package:car_rental/screens/log_reg_spla/Splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const CarRental());
}

class CarRental extends StatelessWidget {
  const CarRental({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_Screen(),
    );
  }
}
