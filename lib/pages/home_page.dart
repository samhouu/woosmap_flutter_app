import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
//import 'package:third_app/pages/map_page.dart';
import 'package:third_app/pages/woosmap_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  bool showFloatingActionButton = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            //const MapPage(),
            const WoosMapPage(),
        
            //Display of BottomSheet in Way navigation bar
            if (currentIndex == 1) // Check if "Way" is selected
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: HexColor('2B2E35'), // Example color
                  ),
                  height: 200,
                  child: const Center(
                    child: Text(
                      'Bottom Sheet for "Way"',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
      // floatingActionButton: Visibility(
      //   visible: currentIndex != 1 || showFloatingActionButton,
      //   child: FloatingActionButton(
      //     onPressed: () {
      //       // Add your onPressed logic here
      //     }, // Use my_location icon for centering on location
      //     backgroundColor: HexColor('2B2E35'),
      //     foregroundColor: Colors.white,
      //     child: const Icon(Icons.my_location), // Example color
      //   ),
      // ),
      // bottomNavigationBar: Container(
      //   color: HexColor('1D1F24'),
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: BottomNavigationBar(
      //       backgroundColor: HexColor('1D1F24'),
      //       selectedItemColor: Colors.white,
      //       unselectedItemColor: Colors.grey.shade800,
      //       showUnselectedLabels: true,
      //       type: BottomNavigationBarType.fixed,
      //       elevation: 0.0,
      //       items: const [
      //         BottomNavigationBarItem(
      //           label: 'Map',
      //           icon: Icon(Icons.map_rounded),
      //         ),
      //         BottomNavigationBarItem(
      //           label: 'Way',
      //           icon: Icon(Icons.assistant_navigation),
      //         ),
      //         BottomNavigationBarItem(
      //           label: 'Recent',
      //           icon: Icon(Icons.history),
      //         ),
      //       ],
      //       currentIndex: currentIndex,
      //       onTap: (int index) {
      //         setState(() {
      //           currentIndex = index;
      //           showFloatingActionButton = index != 1;
      //         });
      //       },
      //     ),
      //   ),
      // ),
    );
  }
}
