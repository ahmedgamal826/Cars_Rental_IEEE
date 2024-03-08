import 'package:flutter/material.dart';

class BarButtoms extends StatelessWidget {
  const BarButtoms({super.key});
  final int _selectedIconBar = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 30,
      currentIndex: _selectedIconBar,
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      selectedFontSize: 14.0,
      unselectedFontSize: 12.0,
      showSelectedLabels: false,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_filled,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.car_rental_outlined,
          ),
          label: 'BOOkING',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_add_alt_rounded,
          ),
          label: 'Contact us',
        ),
      ],
    );
  }
}
