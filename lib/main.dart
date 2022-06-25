import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

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
            Container(),
            //Recommended
            Container(),
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
