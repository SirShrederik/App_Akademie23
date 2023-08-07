import 'package:flutter/material.dart';
import 'package:flutter/src/material/slider.dart';

void main() {
  runApp(const DailyRoutineersApp());
}

class DailyRoutineersApp extends StatelessWidget {
  const DailyRoutineersApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DailyRoutineersHome(),
    );
  }
}

class DailyRoutineersHome extends StatefulWidget {
 
  const DailyRoutineersHome({super.key});
   @override
  _DailyRoutineersHomeState createState() => _DailyRoutineersHomeState();
}

class _DailyRoutineersHomeState extends State<DailyRoutineersHome> {
  double _sliderValue = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home") ,
        backgroundColor: const Color.fromARGB(145, 110, 23, 125),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text(
                "Daily Routineers",
                style: TextStyle(fontSize: 24),
              ),
            ),
            ListTile(
              title: const Text(
                "My Routines",
                style: TextStyle(fontSize: 22),
              ),
              onTap: () {
                // Handle navigation to "My Routines" page
              },
            ),
            ListTile(
              title: const Text(
                "Actual Success",
                style: TextStyle(fontSize: 22),
              ),
              onTap: () {
                // Handle navigation to "Actual Success" page
              },
            ),
            ListTile(
              title: const Text(
                "Diary",
                style: TextStyle(fontSize: 22),
              ),
              onTap: () {
                // Handle navigation to "Diary" page
              },
            ),
            ListTile(
              title: const Text(
                "My Profil",
                style: TextStyle(fontSize: 22),
              ),
              onTap: () {
                // Handle navigation to "My Profil" page
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const Text(
              "How do you feel today?",
              style: TextStyle(fontSize: 18),
            ),

    //         SliderTheme(
    // data: SliderTheme.of(context).copyWith(
    // activeTrackColor: Colors.white,
    // thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
    // overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
    // ),
    // child: Slider(
    //          value: _sliderValue,
    //          min: 120.0,
    //          max: 220.0,
    //          activeColor: Colors.white,
    //          inactiveColor: Color(0xFF8D8E98),
    //          onChanged: (double newValue) {
    //              setState(() {
    //                     _sliderValue = newValue.round() as double;
    //                   });
    //                 },
    //               ),
    //             ),
          
          
            Slider(
               
              thumbColor: const Color.fromARGB(255, 72, 40, 51), 
             activeColor: const Color.fromARGB(255, 72, 40, 51),
              inactiveColor: Colors.lightGreen,
              
              value: _sliderValue,
              min: 0,
              max: 100,
              onChanged: (value) {
                setState(() {
                  _sliderValue = value;
                 
                });
              },
            ),
          
            
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildColumnWithIconAndText(Icons.menu, "Routines"),
                buildColumnWithIconAndText(Icons.check_circle, "Actual Success"),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildColumnWithIconAndText(Icons.book, "Diary"),
                buildColumnWithIconAndText(Icons.account_circle, "My Profil"),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                // Handle menu button click
              },
            ),
            IconButton(
              icon: const Icon(Icons.swap_horiz),
              onPressed: () {
                // Handle left and right arrow button click
              },
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle center button click
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget buildColumnWithIconAndText(IconData iconData, String text) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          child: Icon(iconData),
        ),
        const SizedBox(height: 8),
        Text(text, style: const TextStyle(fontSize: 16)),
      ],
    );
  }
}
