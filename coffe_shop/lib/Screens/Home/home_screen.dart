
import 'package:coffe_shop/Screens/Coffee%20Order%20Info/espresso_coffee.dart';
import 'package:coffe_shop/Screens/Home/add_cart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Coffee Order Info/capuccino_coffee.dart';
import '../Coffee Order Info/coldbrew_coffee.dart';


int currentIndex = -1;

//list and Type of Capuccino Coffee
List<Map<String, dynamic>> capucinoList = [
  {
    'image1': "assets/coffeeCapucino_1.jpg", 
    'name': 'Cappuccino', 
    'index': '0'
  },
  {
    'image1': "assets/coffee2.png", 
    'name': 'Cappuccino'
  },
  {
    'image1': "assets/coffeeCapucino_1.jpg", 
    'name': 'Cappuccino'
  },
  {
    'image1': "assets/coffee2.png",
    'name': 'Cappuccino',
  }
];

List<Map<String, dynamic>> capucinoType = [
  {'Name1': "With Chocolate", 'Orders': '190rs'},
  {'Name1': "With Low Fat Milk", 'Orders': '150rs'},
  {'Name1': "With Low Fat Milk", 'Orders': '299rs'},
  {'Name1': "With Low Fat Milk", 'Orders': '50rs'}
];


//list and Type of cold brew Coffee
List<Map<String, dynamic>> coldbrewList = [
  {
    'image2': "assets/coldbrew_assets/ColdBrew1.jpg", 
    'name1': 'coldBrew'
  },
  {
    'image2': "assets/coldbrew_assets/ColdBrew2jpg.jpeg", 
    'name1': 'coldBrew'
  },
  {
    'image2': "assets/coldbrew_assets/ColdBrew3.jpg", 
    'name1': 'coldBrew'
  },
  {
    'image2': "assets/coldbrew_assets/ColdBrew4.jpg",
    'name1': 'coldBrew',
  }
];

List<Map<String, dynamic>> coldBrewType = [
  {'Name2': "With Chocolate", 'Orders2': '1500rs'},
  {'Name2': "With Low Fat Milk", 'Orders2': '150rs'},
  {'Name2': "with Extra Milk", 'Orders2': '299rs'},
  {'Name2': "With Low Fat Milk with Chocolate", 'Orders2': '50k'}
];


//list and Type of espresso Coffee
List<Map<String, dynamic>> espressoList = [
  {
    'image3': "assets/Espresso/Espresso1.webp", 
    'name1': 'Espresso'
  },
  {
    'image3': "assets/Espresso/Espresso2.jpg", 
    'name1': 'Espresso'
  },
  {
    'image3': "assets/Espresso/Espresso3.webp", 
    'name1': 'Espresso'
  },
  {
    'image3': "assets/Espresso/Espresso4.jpeg",
    'name1': 'Espresso',
  },
  {
    'image3': "assets/Espresso/Espresso5.jpeg",
    'name1': 'Espresso',
  }
];

List<Map<String, dynamic>> espressoType = [
  {'Name3': "With Chocolate", 'Orders2': '1500rs'},
  {'Name3': "With Low Fat Milk", 'Orders2': '150rs'},
  {'Name3': "with Extra Milk", 'Orders2': '299rs'},
  {'Name3': "With Low Fat Milk with Chocolate", 'Orders2': '50k'}
];


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  //============ TAB CONTROLLER ===================
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.brown),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(Icons.notifications_active_outlined),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Good morning, Aditya",
              style: GoogleFonts.lato(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: const Color.fromRGBO(0, 0, 0, 1)),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.only(top: 4),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                prefixIcon: Icon(Icons.search_rounded,
                    color: Color.fromRGBO(166, 166, 170, 1), weight: 19),
              ),
            ),
            const SizedBox(height: 10),
            Text("Categories",
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: const Color.fromRGBO(1, 1, 1, 1))),
            const SizedBox(height: 10),
            DefaultTabController(
              length: 3,
              child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  isScrollable: false,
                  unselectedLabelColor: const Color.fromRGBO(1, 1, 1, 1),
                  labelColor: Colors.black,
                  indicatorPadding: const EdgeInsets.only(top: 10, bottom: 10),
                  indicator: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color.fromRGBO(132, 96, 70, 1)),
                  controller: _tabController,
                  tabs: [
                    Tab(
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/Cappuccino.png",
                            color: Colors.white,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            "Cappuccino",
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              //color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/Cold Brew.png",
                            color: Colors.white,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            "Cold Brew",
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              //color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/Expresso.png",
                            color: Colors.white,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            "Expresso",
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              //color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
            Expanded(
              child: TabBarView(controller: _tabController, children: const [
                CappucinoCoffee(),
                ColdBrewCoffee(),
                Espresso(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}


//========================= CappucinoCoffee Class ===============================
class CappucinoCoffee extends StatefulWidget {
  const CappucinoCoffee({super.key});

  @override
  State<CappucinoCoffee> createState() => _CappucinoCoffeeState();
}

class _CappucinoCoffeeState extends State<CappucinoCoffee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            child: HorizontalListViewBuilderForCapiccino(),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Special Offer",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Image.asset(
                  "assets/fire.png",
                  height: 40,
                  width: 40,
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const AddToCart()));
            },
            child: Card(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(23))),
              elevation: 10,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                      height: 150,
                      width: 170,
                      child: Image.asset(
                        fit: BoxFit.contain,
                        "assets/specialOffer.png",
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      height: 140,
                      width: 180,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 4,
                          ),
                          Container(
                            height: 30,
                            width: 80,
                            decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                color: Colors.brown),
                            child: const Row(
                              children: [
                                Spacer(
                                  flex: 1,
                                ),
                                Text(
                                  "Limited",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Spacer(
                                  flex: 1,
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            height: 100,
                            width: 150,
                            child: const Text(
                              "Buy 1 get 1 free if you buy with Gopay",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}


//========================= ColdCoffee Class ===============================
class ColdBrewCoffee extends StatefulWidget {
  const ColdBrewCoffee({super.key});

  @override
  State<ColdBrewCoffee> createState() => _ColdBrewCoffeeState();
}

class _ColdBrewCoffeeState extends State<ColdBrewCoffee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            child: HorizontalListViewBuilderForColBrew(),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Special Offer",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Image.asset(
                  "assets/fire.png",
                  height: 40,
                  width: 40,
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const AddToCartColdBrew()));
            },
            child: Card(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(23))),
              elevation: 10,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                      height: 150,
                      width: 170,
                      child: Image.asset(
                        fit: BoxFit.contain,
                        "assets/specialOffer.png",
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      height: 140,
                      width: 180,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 4,
                          ),
                          Container(
                            height: 30,
                            width: 80,
                            decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                color: Colors.brown),
                            child: const Row(
                              children: [
                                Spacer(
                                  flex: 1,
                                ),
                                Text(
                                  "Limited",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Spacer(
                                  flex: 1,
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            height: 100,
                            width: 150,
                            child: const Text(
                              "Buy 1 get 1 free if you buy with Gopay",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}


//========================= Expresso Class ===============================
class Espresso extends StatefulWidget {
  const Espresso({super.key});

  @override
  State<Espresso> createState() => _EspressoState();
}

class _EspressoState extends State<Espresso> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            child: HorizontalListViewBuilderEspresso(),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Special Offer",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Image.asset(
                  "assets/fire.png",
                  height: 40,
                  width: 40,
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Card(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(23))),
              elevation: 10,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                      height: 150,
                      width: 170,
                      child: Image.asset(
                        fit: BoxFit.contain,
                        "assets/specialOffer.png",
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      height: 140,
                      width: 180,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 4,
                          ),
                          Container(
                            height: 30,
                            width: 80,
                            decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                color: Colors.brown),
                            child: const Row(
                              children: [
                                Spacer(
                                  flex: 1,
                                ),
                                Text(
                                  "Limited",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Spacer(
                                  flex: 1,
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            height: 100,
                            width: 150,
                            child: const Text(
                              "Buy 1 get 1 free if you buy with Gopay",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}




