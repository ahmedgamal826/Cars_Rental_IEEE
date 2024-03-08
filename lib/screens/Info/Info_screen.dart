import 'package:car_rental/screens/Booking/booking_screen.dart';
import 'package:car_rental/screens/Top_bar/topbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Info_Screen extends StatelessWidget {
  Info_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            TopBar(),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 400,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                // Set the border radius here
                image: const DecorationImage(
                  image: AssetImage('assets/images/car.jpg'),
                  // Replace with your image URL
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          actions: [
                            Column(
                              children: [
                                Image.asset(
                                  'assets/images/car5.jpg',
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.amber),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    'Cancel',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/images/car5.jpg',
                      width: 120,
                      height: 150,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    'assets/images/car3.jpg',
                    width: 120,
                    height: 150,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    'assets/images/car2.jpg',
                    width: 120,
                    height: 150,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    'assets/images/car2.jpg',
                    width: 120,
                    height: 150,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Trip Price",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "1 day trip",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "750 total miles",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Trip TOTAL",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "SAR 70.87/day",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "SAR 70.87/day",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "FREE",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "SAR 70.87/day",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Book Now',
                    style: TextStyle(color: Colors.white, fontSize: 26),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

                       ///Ride it with appbar info
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text(
            //       "Ride It",
            //       style: TextStyle(
            //           color: Colors.black,
            //           fontSize: 35,
            //           fontWeight: FontWeight.bold),
            //     ),
            //     Icon(
            //       Icons.chat,
            //       size: 35,
            //       color: Colors.blue,
            //     )
            //   ],
            // ),
            // const SizedBox(
            //   height: 10,
            // ),
            // const Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     SizedBox(
            //       height: 50,
            //       width: 50,
            //       child: CircleAvatar(
            //         radius: 50.0,
            //         backgroundImage: AssetImage(
            //           'assets/images/7mama.jpg',
            //         ),
            //       ),
            //     ),
            //     Column(
            //       children: [
            //         Text(
            //           "Salma Alhasan",
            //           style: TextStyle(
            //             color: Colors.black,
            //             fontSize: 20,
            //           ),
            //         ),
            //         Text(
            //           "Chevrolet Camaro 2018",
            //           style: TextStyle(
            //               color: Colors.black,
            //               fontSize: 20,
            //               fontWeight: FontWeight.bold),
            //         ),
            //         Text(
            //           "86 trips",
            //           style: TextStyle(
            //               color: Colors.grey,
            //               fontSize: 10,
            //               fontWeight: FontWeight.bold),
            //         ),
            //       ],
            //     ),
            //     Row(
            //       children: [
            //         Icon(
            //           Icons.star,
            //           size: 20,
            //           color: Colors.blue,
            //         ),
            //         Text(
            //           "4.0",
            //           style: TextStyle(
            //             color: Colors.black,
            //             fontSize: 20,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ],
            // ),