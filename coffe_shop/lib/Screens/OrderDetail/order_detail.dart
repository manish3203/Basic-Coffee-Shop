import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State {
  int _noOfCoffee = 1;

  //add cofee
  void addCoffee() {
    _noOfCoffee++;
    setState(() {});
  }

  //min cofee
  void minCoffee() {
    _noOfCoffee--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //const Spacer(flex: 1),
                GestureDetector(
                    child: const Icon(Icons.arrow_back_ios_outlined)),
                const Spacer(flex: 7),
                Text("Order",
                    style: GoogleFonts.sora(
                        fontWeight: FontWeight.w600, fontSize: 18)),
                const Spacer(flex: 7)
              ],
            ),
            const SizedBox(height: 50),
            Text(
              "Delivery Address",
              style: GoogleFonts.sora(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: const Color.fromRGBO(47, 45, 44, 1)),
            ),
            const SizedBox(height: 10),
            Text(
              "Jl. Kpg Sutoyo",
              style: GoogleFonts.sora(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: const Color.fromRGBO(48, 51, 54, 1)),
            ),
            Text(
              "Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.",
              style: GoogleFonts.sora(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: const Color.fromRGBO(128, 128, 128, 1)),
            ),
            const SizedBox(height: 30),
            SizedBox(
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/coffeeCapucino_1.jpg"))),
                  ),
                  Column(
                    children: [
                      Text(
                        "Cappucino",
                        style: GoogleFonts.sora(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: const Color.fromRGBO(47, 45, 44, 1)),
                      ),
                      Text(
                        "with Chocolate",
                        style: GoogleFonts.sora(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: const Color.fromRGBO(155, 155, 155, 1)),
                      )
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            minCoffee();
                          },
                          child: const Text(
                            "-",
                            style: TextStyle(
                                fontSize: 55,
                                color: Color.fromRGBO(1, 1, 1, 1)),
                          )),
                      Container(
                        margin: const EdgeInsets.only(right: 10, left: 10),
                        child: Text("$_noOfCoffee"),
                      ),
                      GestureDetector(
                          onTap: () {
                            addCoffee();
                          },
                          child: const Text(
                            "+",
                            style: TextStyle(
                                fontSize: 25,
                                color: Color.fromRGBO(1, 1, 1, 1)),
                          )),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Payment Summary",
              style: GoogleFonts.sora(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: const Color.fromRGBO(47, 45, 44, 1)),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "Price",
                  style: GoogleFonts.sora(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: const Color.fromRGBO(155, 155, 155, 1)),
                ),
                const Spacer(),
                Text(
                  "50",
                  style: GoogleFonts.sora(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: const Color.fromRGBO(155, 155, 155, 1)),
                ),
              ],
            ),
            Row(children: [
              Text(
                "GST",
                style: GoogleFonts.sora(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: const Color.fromRGBO(155, 155, 155, 1)),
              ),
              const Spacer(),
              Text(
                "30",
                style: GoogleFonts.sora(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: const Color.fromRGBO(155, 155, 155, 1)),
              ),
            ]),
            const Center(
              child: Text(
                "---------------------------------------",
                style: TextStyle(
                  color: Color.fromRGBO(223, 216, 216, 1)
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  "Total Payment",
                  style: GoogleFonts.sora(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: const Color.fromRGBO(155, 155, 155, 1)),
                ),
                const Spacer(),
                Text(
                  "80",
                  style: GoogleFonts.sora(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: const Color.fromRGBO(155, 155, 155, 1)),
                ),
              ],
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: (){},
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(198, 124, 78, 1)),
                minimumSize: MaterialStatePropertyAll(Size(double.infinity,50))
              ), 
              child: Text(
                "Order",
                style: GoogleFonts.sora(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: const Color.fromRGBO(255, 255, 255, 1)
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
