import 'package:demo_xyz/MaterialColor.dart';
import 'package:demo_xyz/Slider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: buildMaterialColor(Color(0xFFFF5A5F)),
      ),
      debugShowCheckedModeBanner: false,
      home: DemoXyz(),
    );
  }
}

class DemoXyz extends StatefulWidget {
  const DemoXyz({Key? key}) : super(key: key);

  @override
  State<DemoXyz> createState() => _DemoXyzState();
}

class _DemoXyzState extends State<DemoXyz> {
  int activeIndex = 0;
  final CarouselController controller = CarouselController();

  List<String> images = [
    "assets/Frame 4.png",
    "assets/Frame 4.png",
    "assets/Frame 4.png",
    "assets/Frame 4.png",
    "assets/Frame 4.png",
    "assets/Frame 4.png",
    "assets/Frame 4.png",
  ];
  List<String> banner2 = [
    "assets/Frame 7.png",
    "assets/Frame 7.png",
    "assets/Frame 7.png",
    "assets/Frame 7.png",
    "assets/Frame 7.png",
    "assets/Frame 7.png",
    "assets/Frame 7.png",
  ];
  Widget buildIndicator() {
   return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: images.length,
      effect: SlideEffect(
        dotHeight: 8,
        dotWidth: 4,
        dotColor: Colors.black,
        activeDotColor: Colors.red,
      ),
    );
  }

  Widget buildImage(String image, int index) {
    return Container(
      //margin: EdgeInsets.symmetric(horizontal: 3),
      child: Image.asset(image,
        fit: BoxFit.cover,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),

    );
  }

  List<Widget> generatedImagesTiles() {
    return images
        .map(
          (element) => ClipRRect(
        child: Image.asset(
          element,
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    )
        .toList();
  }
  List<Widget> generatedImagesTiles2() {
    return banner2
        .map(
          (element) => ClipRRect(
        child: Image.asset(
          element,
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Company Name',
          style: TextStyle(
            fontSize: 24,
            fontFamily: "InterR",
            color: Color(0xFFFFFFFF),
          ),
        ),
        backgroundColor: Color(0xFFFF5A5F),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Address
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Color(0xFFFF5A5F),
                    size: 40,
                  ),
                  SizedBox(width: 5),
                  RichText(
                    text: TextSpan(
                        text: "Mohammedpur\n",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFFFF5A5F),
                          fontFamily: "InterR",
                        ),
                        children: [
                          TextSpan(
                            text: "H # 211, Road # 20, Mohamm...",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "InterR",
                              color: Color(0xFF3C3C3C),
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(width: 50),
                  Icon(
                    Icons.expand_circle_down_rounded,
                    color: Color(0xFFE5E5E5),
                    size: 24,
                  ),
                ],
              ),
            ),
            //Search
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  readOnly: true,
                  showCursor: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xFF9A9A9A), width: 1.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xFFFF5A5F), width: 1.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Enter a search term',
                    prefixIcon: Icon(Icons.search_sharp),
                  ),
                ),
              ),
            ),
            //Banner Slider 1
            CustomizeSlider(images),
            //Categories
            Container(
              margin: EdgeInsets.fromLTRB(12, 20, 12, 12),
              padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        //margin: EdgeInsets.all(12.0),
                        //padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Color(0xFFFF5A5F),
                              child: ClipRRect(
                                child: Image.asset('assets/o1_Group.png'),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "AC Repair\nServices",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        //margin: EdgeInsets.all(12.0),
                        //padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Color(0xFFFF5A5F),
                              child: ClipRRect(
                                child: Image.asset('assets/o2_Group.png'),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Appliance\nRepair",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        //margin: EdgeInsets.all(12.0),
                        //padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Color(0xFFFF5A5F),
                              child: ClipRRect(
                                child: Image.asset('assets/o3_Group.png'),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Beauty \n& Salon",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        //margin: EdgeInsets.all(12.0),
                        //padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Color(0xFFFF5A5F),
                              child: ClipRRect(
                                child: Image.asset('assets/o4_Group.png'),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Trips &\nTravels",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        //margin: EdgeInsets.all(12.0),
                        //padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Color(0xFFFF5A5F),
                              child: ClipRRect(
                                child: Image.asset('assets/o5_Group.png'),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Car Care\nServices",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        //margin: EdgeInsets.all(12.0),
                        //padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Color(0xFFFF5A5F),
                              child: ClipRRect(
                                child: Image.asset('assets/o6_Group.png'),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Clenning\n& Pest",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        //margin: EdgeInsets.all(12.0),
                        //padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Color(0xFFFF5A5F),
                              child: ClipRRect(
                                child: Image.asset('assets/o7_Group.png'),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Painting &\nRenovation",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        //margin: EdgeInsets.all(12.0),
                        //padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Color(0xFFFF5A5F),
                              child: ClipRRect(
                                child: Image.asset('assets/o8_Group.png'),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Packaing & \nShifting",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  const Divider(
                    thickness: 1, // thickness of the line
                    indent: 20, // empty space to the leading edge of divider.
                    endIndent:
                    20, // empty space to the trailing edge of the divider.
                    color: Color(
                        0xFF9A9A9A), // The color to use when painting the line.
                    height: 20, // The divider's height extent.
                  ),
                  InkWell(
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            "More Categories",
                            style: TextStyle(
                              color: Color(0xFF9A9A9A),
                              fontSize: 20,
                            ),
                          ),
                          Image.asset('assets/down.png')
                        ],
                      ),
                    ),
                    onTap: () => {
                      _moreCatagoriesModal(context),
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            //Slide banner 2
            CustomizeSlider(banner2),
            //Trending
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          "Trending",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "InterS",
                            color: Color(0xFF000000),
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          "See all",
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: "InterR",
                            color: Color(0xFFFF5A5F),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 104.0,
                            width: 180.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/Frame 9.png'),
                                fit: BoxFit.fill,
                              ),
                              // shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            child: Text(
                              "AC Services",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: "InterR",
                                color: Color(0xFF3C3C3C),
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 104.0,
                            width: 180.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/Frame 10.png'),
                                fit: BoxFit.fill,
                              ),
                              // shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            child: Text(
                              "Painting & Renovation",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: "InterR",
                                color: Color(0xFF3C3C3C),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 104.0,
                            width: 180.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/Frame 11.png'),
                                fit: BoxFit.fill,
                              ),
                              // shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            child: Text(
                              "Car Services",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: "InterR",
                                color: Color(0xFF3C3C3C),
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 104.0,
                            width: 180.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/Frame 12.png'),
                                fit: BoxFit.fill,
                              ),
                              // shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            child: Text(
                              "Cleanning & Pest",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: "InterR",
                                color: Color(0xFF3C3C3C),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //Recommended
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          "Recommended",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "InterS",
                            color: Color(0xFF000000),
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          "See all",
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: "InterR",
                            color: Color(0xFFFF5A5F),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 104.0,
                            width: 180.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/Frame 9.png'),
                                fit: BoxFit.fill,
                              ),
                              // shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            child: Text(
                              "AC Services",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: "InterR",
                                color: Color(0xFF3C3C3C),
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 104.0,
                            width: 180.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/Frame 10.png'),
                                fit: BoxFit.fill,
                              ),
                              // shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            child: Text(
                              "Painting & Renovation",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: "InterR",
                                color: Color(0xFF3C3C3C),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 104.0,
                            width: 180.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/Frame 11.png'),
                                fit: BoxFit.fill,
                              ),
                              // shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            child: Text(
                              "Car Services",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: "InterR",
                                color: Color(0xFF3C3C3C),
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 104.0,
                            width: 180.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/Frame 12.png'),
                                fit: BoxFit.fill,
                              ),
                              // shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            child: Text(
                              "Cleanning & Pest",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: "InterR",
                                color: Color(0xFF3C3C3C),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //Banner 1
            Padding(
              padding:
              const EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 10),
              child: Container(
                height: 72.0,
                width: 388.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFFFF5A5F),
                      Color(0xFF087E8B),
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Basic\nServices",
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: "InterBL",
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: RichText(
                          text: TextSpan(
                            text: "40% Off\n",
                            style: TextStyle(
                              fontSize: 36,
                              fontFamily: "InterBL",
                              color: Color(0xFFFFFFFF),
                            ),
                            children: [
                              TextSpan(
                                text: "Start from 999 Tk.",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontFamily: "InterM",
                                  color: Color(0xFFD9D9D9),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            //Banner 2
            Padding(
              padding:
              const EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 10),
              child: Container(
                height: 72.0,
                width: 388.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFFFF5A5F),
                      Color(0xFF087E8B),
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Master\nServices",
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: "InterBL",
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: RichText(
                          text: TextSpan(
                            text: "50% Off\n",
                            style: TextStyle(
                              fontSize: 36,
                              fontFamily: "InterBL",
                              color: Color(0xFFFFFFFF),
                            ),
                            children: [
                              TextSpan(
                                text: "Start from 1799 Tk.",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontFamily: "InterM",
                                  color: Color(0xFFD9D9D9),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            //Banner 3
            Padding(
              padding:
              const EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 10),
              child: Container(
                height: 72.0,
                width: 388.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFFFF5A5F),
                      Color(0xFF087E8B),
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Premium\nServices",
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: "InterBL",
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: RichText(
                          text: TextSpan(
                            text: "60% Off\n",
                            style: TextStyle(
                              fontSize: 36,
                              fontFamily: "InterBL",
                              color: Color(0xFFFFFFFF),
                            ),
                            children: [
                              TextSpan(
                                text: "Start from 2599 Tk.",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontFamily: "InterM",
                                  color: Color(0xFFD9D9D9),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            //
          ],
        ),
      ),
      //Nav Bar
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          iconTheme: MaterialStateProperty.all(
            IconThemeData(
              color: Color(0xFFFFFFFF),
              size: 20,
            ),
          ),
          indicatorColor: Color(0xFFD9D9D9),
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(
                fontSize: 12,
                fontFamily: "InterR",
                fontWeight: FontWeight.normal,
                color: Color(0xFFFFFFFF)),
          ),
        ),
        child: NavigationBar(
          height: 60,
          backgroundColor: Color(0xFFFF5A5F),
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            NavigationDestination(
              icon: Icon(Icons.inbox),
              label: "Inbox",
            ),
            NavigationDestination(
              icon: Icon(Icons.add),
              label: "Order",
            ),
            NavigationDestination(
              icon: Icon(Icons.help_center_outlined),
              label: "Help",
            ),
            NavigationDestination(
              icon: Icon(Icons.menu),
              label: "More",
            ),
          ],
        ),
      ),
    );
  }
  List<Widget> indicators(imagesLength,currentIndex) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        margin: EdgeInsets.all(3),
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            color: currentIndex == index ? Colors.black : Colors.black26,
            shape: BoxShape.circle),
      );
    });
  }


  void _moreCatagoriesModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
      ),
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.80,
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topRight,
                child: InkWell(
                    child: Image.asset('assets/close-small.png'),
                    onTap: () => {Navigator.of(context).pop()}),
              ),
              Container(
                child: Text(
                  "All Categories",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                alignment: Alignment.topCenter,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(12, 20, 12, 12),
                padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          //margin: EdgeInsets.all(12.0),
                          //padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Color(0xFFFF5A5F),
                                child: ClipRRect(
                                  child: Image.asset('assets/o1_Group.png'),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "AC Repair\nServices",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          //margin: EdgeInsets.all(12.0),
                          //padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Color(0xFFFF5A5F),
                                child: ClipRRect(
                                  child: Image.asset('assets/o2_Group.png'),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Appliance\nRepair",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          //margin: EdgeInsets.all(12.0),
                          //padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Color(0xFFFF5A5F),
                                child: ClipRRect(
                                  child: Image.asset('assets/o3_Group.png'),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Beauty \n& Salon",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          //margin: EdgeInsets.all(12.0),
                          //padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Color(0xFFFF5A5F),
                                child: ClipRRect(
                                  child: Image.asset('assets/o4_Group.png'),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Trips &\nTravels",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          //margin: EdgeInsets.all(12.0),
                          //padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Color(0xFFFF5A5F),
                                child: ClipRRect(
                                  child: Image.asset('assets/o5_Group.png'),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Car Care\nServices",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          //margin: EdgeInsets.all(12.0),
                          //padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Color(0xFFFF5A5F),
                                child: ClipRRect(
                                  child: Image.asset('assets/o6_Group.png'),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Clenning\n& Pest",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          //margin: EdgeInsets.all(12.0),
                          //padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Color(0xFFFF5A5F),
                                child: ClipRRect(
                                  child: Image.asset('assets/o7_Group.png'),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Painting &\nRenovation",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          //margin: EdgeInsets.all(12.0),
                          //padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Color(0xFFFF5A5F),
                                child: ClipRRect(
                                  child: Image.asset('assets/o8_Group.png'),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Packaing & \nShifting",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                  ],
                ),
              ),
            ],
          ),
        );
        // return your layout
      },
    );
  }
}


