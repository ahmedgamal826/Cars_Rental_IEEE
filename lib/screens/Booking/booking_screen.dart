import 'package:car_rental/screens/Booking/add_cars.dart';
import 'package:car_rental/screens/Booking/payment_model.dart';
import 'package:car_rental/screens/Booking/time_date_model.dart';
import 'package:car_rental/screens/Top_bar/topbar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BookScreen extends StatefulWidget {
  String? name;
  String? cardNumber;
  BookScreen({super.key, this.name, this.cardNumber});

  @override
  State<BookScreen> createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  bool colorIcon = false;
  bool showCardInfo = false;
  DateTime selectedDate = DateTime.now();
  DateTime selectedDate2 = DateTime.now();

  bool credit = true;
  bool debit = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TopBar(),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Address',
                    labelStyle: const TextStyle(color: Color(0xff3DA7E1)),
                    hintText: 'Enter your address',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hoverColor: Colors.blueAccent,
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff3DA7E1),
                      ),
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
              Stack(
                children: [
                  Container(
                    height: 290,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xff3DA7E1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Container(
                    height: 280,
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Depart',
                          style: TextStyle(color: Color(0xff3DA7E1)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            ),
                          ),
                          child: ListTile(
                            title: Text(
                              DateFormat('EEEE').format(selectedDate),
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            subtitle: Text(
                              '${DateFormat('d MMM ,').format(selectedDate)} ${DateFormat('h:mm a').format(selectedDate)}',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            trailing:
                                CalenderButtonDep(onDateSelected: (newDate) {
                              setState(() {
                                selectedDate = newDate;
                              });
                            }),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Arrival',
                          style: TextStyle(color: Color(0xff3DA7E1)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            ),
                          ),
                          child: ListTile(
                            title: Text(
                              DateFormat('EEEE').format(selectedDate2),
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            subtitle: Text(
                              '${DateFormat('d MMM ,').format(selectedDate2)} ${DateFormat('h:mm a').format(selectedDate2)}',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            trailing: CalenderButtonDep(
                              onDateSelected: (newDate) {
                                setState(() {
                                  selectedDate2 = newDate;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PaymentModel(
                    title: 'Credit Card',
                    onTap: () {
                      setState(() {
                        credit = true;
                        debit = false;
                      });
                    },
                    isSelected: credit,
                  ),
                  PaymentModel(
                    title: 'Debit',
                    onTap: () {
                      setState(() {
                        credit = false;
                        debit = true;
                      });
                    },
                    isSelected: debit,
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AddNewCard_Screen()),
                  ).then((value) {
                    // This callback runs when returning from AddNewCard_Screen
                    if (value != null && value) {
                      // If a new card is added, show the card info
                      setState(() {
                        showCardInfo = true;
                      });
                    }
                  });
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(width: 1),
                  ),
                  child: const Text(
                    '+      Add New Card',
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ),
              ),
              // if name = null
              if (showCardInfo ||
                  (widget.cardNumber != null && widget.name != null))
                ListTile(
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  leading: const Icon(Icons.credit_card),
                  title: Text(
                    widget.name ?? 'Name not available',
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    '************${widget.cardNumber ?? 'Card number not available'}',
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        colorIcon = !colorIcon; // Toggle the colorIcon variable
                      });
                    },
                    icon: Icon(
                        Icons.check_circle), // Change the icon as per your requirement
                    color: colorIcon
                        ? const Color(0xff3DA7E1)
                        : null,
                  ),
                ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xff3DA7E1)),
                  fixedSize: MaterialStateProperty.all<Size>(
                    const Size(400, 50), // Adjust width and height as needed
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Book Now',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    Text(
                      '150 \$',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

///old Appbar
// appBar: AppBar(
//   backgroundColor: Colors.white,
//   leading: const CircleAvatar(
//     backgroundImage: AssetImage('images/Cute dpz.jpeg'),
//     radius: 8,
//   ),
//   title: const Text(
//     'Location',
//     style: TextStyle(fontWeight: FontWeight.bold),
//   ),
//   bottom: PreferredSize(
//     preferredSize: const Size.fromHeight(15),
//     child: Container(
//       color: const Color(0xff3DA7E1),
//       height: 1,
//     ),
//   ),
// ),
