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
            Container(),
            //Catagories
            Container(),
            //Slide banner 2
            Container(),
            //Trending
            Container(),
            //Recommended
            Container(),
          ],
        ),
      ),
      //Navbar
      // bottomNavigationBar: Container(
      //   color: Colors.black,
      //   child: Padding(
      //     padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      //     child: GNav(
      //       gap: 8,
      //       backgroundColor: Colors.black,
      //       color: Colors.white,
      //       activeColor: Color(0xFFdab3e6),
      //       tabBackgroundColor: Color(0xFF726875),
      //       padding: EdgeInsets.all(16),
      //       tabs: [
      //         GButton(
      //           icon: Icons.home,
      //           text: "Home",
      //         ),
      //         GButton(
      //           icon: Icons.inbox,
      //           text: "Inbox",
      //         ),
      //         GButton(
      //           icon: Icons.add,
      //           text: "Orders",
      //         ),
      //         GButton(
      //           icon: Icons.help_center_outlined,
      //           text: "help",
      //         ),
      //         GButton(
      //           icon: Icons.line_style_sharp,
      //           text: "More",
      //         ),
      //       ],
      //     ),
      //   ),
      // ),

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
              color: Color(0xFFFFFFFF)
            ),

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
}
