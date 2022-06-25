import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
        primarySwatch: Colors.blue,
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
  int currentIndex = 0;
  int currentIndexs = 0;
  final PageController controller = PageController();

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
            Container(),
            //Slide banner 1
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 160,
                    width: double.infinity,
                    child: PageView.builder(
                      controller: controller,
                      onPageChanged: (index) {
                        setState(() {
                          currentIndex = index % images.length;
                        });
                      },
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: SizedBox(
                            height: 300,
                            width: double.infinity,
                            child: Image.asset(
                              images[index % images.length],
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (var i = 0; i < images.length; i++)
                        buildIndicator(currentIndex == i)
                    ],
                  ),
                ],
              ),

            ),
            //Catagories
            Container(),
            //Slide banner 2
            SizedBox(height: 10),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 160,
                    width: double.infinity,
                    child: PageView.builder(
                      controller: controller,
                      onPageChanged: (index) {
                        setState(() {
                          currentIndexs = index % banner2.length;
                        });
                      },
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: SizedBox(
                            height: 300,
                            width: double.infinity,
                            child: Image.asset(
                              banner2[index % banner2.length],
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (var i = 0; i < banner2.length; i++)
                        Slide(currentIndexs == i)
                    ],
                  ),
                ],
              ),
            ),
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

  //Slide Banner Controller 1
  Widget buildIndicator(bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Container(
        height: isSelected ? 6 : 6,
        width: isSelected ? 6 : 6,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: isSelected ? Color(0xFFFF5A5F) : Color(0xFFD9D9D9),
        ),
      ),
    );
  }

  //Slide Banner Controller 2
  Widget Slide(bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Container(
        height: isSelected ? 6 : 6,
        width: isSelected ? 6 : 6,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: isSelected ? Color(0xFFFF5A5F) : Color(0xFFD9D9D9),
        ),
      ),
    );
  }
}
