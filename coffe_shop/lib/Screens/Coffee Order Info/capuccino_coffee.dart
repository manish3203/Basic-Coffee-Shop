import 'package:coffe_shop/Screens/Home/add_cart.dart';
import 'package:coffe_shop/Screens/Home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HorizontalListViewBuilderForCapiccino extends StatefulWidget {
  const HorizontalListViewBuilderForCapiccino({super.key});

  @override
  State<HorizontalListViewBuilderForCapiccino> createState() =>
      _HorizontalListViewBuilderForCapiccinoState();
}

//class for cappuccino
class _HorizontalListViewBuilderForCapiccinoState
    extends State<HorizontalListViewBuilderForCapiccino> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: capucinoList.length,
        itemBuilder: (BuildContext context, int index) {
          currentIndex = index;
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  height: 260,
                  width: 225,
                  child: Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(33)),
                    ),
                    //color: Colors.white,
                    elevation: 10,
                    child: Container(
                      // color: Colors.white,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(8.0),
                            height: 130,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(
                                    image: AssetImage(
                                        capucinoList[index]['image1']!),
                                    fit: BoxFit.cover)),
                            child: Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Spacer(),
                                  Row(
                                    children: [
                                      const Icon(Icons.star,
                                          color: Colors.yellow),
                                      Text(
                                        "4.9",
                                        style: GoogleFonts.lato(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
                                            color: Colors.yellow),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              const Spacer(
                                flex: 1,
                              ),
                              Text(
                                capucinoList[index]['name']!,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 23),
                              ),
                              const Spacer(
                                flex: 13,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Spacer(
                                flex: 1,
                              ),
                              Text(
                                capucinoType[index]['Name1']!,
                                style: const TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 10),
                              ),
                              const Spacer(
                                flex: 12,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Spacer(
                                flex: 1,
                              ),
                              Text(
                                capucinoType[index]['Orders']!,
                                style: const TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 19),
                              ),
                              const Spacer(
                                flex: 8,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              const AddToCart()));
                                },
                                child: Container(
                                  height: 40,
                                  decoration: const BoxDecoration(
                                    color: Colors.brown,
                                    shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        const AddToCart()));
                                      },
                                      icon: const Icon(
                                        Icons.add,
                                        size: 20,
                                        color: Colors.white,
                                      )),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
