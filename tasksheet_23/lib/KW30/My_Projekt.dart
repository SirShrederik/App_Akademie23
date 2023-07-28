import 'package:flutter/material.dart';

void main() {
  runApp(const DailyRoutineersApp());
}

class DailyRoutineersApp extends StatelessWidget {
  const DailyRoutineersApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        title: Text("Daily Routineers"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                "Daily Routineers",
                style: TextStyle(fontSize: 24),
              ),
            ),
            ListTile(
              title: Text(
                "My Routines",
                style: TextStyle(fontSize: 22),
              ),
              onTap: () {
                // Handle navigation to "My Routines" page
              },
            ),
            ListTile(
              title: Text(
                "Actual Success",
                style: TextStyle(fontSize: 22),
              ),
              onTap: () {
                // Handle navigation to "Actual Success" page
              },
            ),
            ListTile(
              title: Text(
                "Diary",
                style: TextStyle(fontSize: 22),
              ),
              onTap: () {
                // Handle navigation to "Diary" page
              },
            ),
            ListTile(
              title: Text(
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
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "How do you feel today?",
              style: TextStyle(fontSize: 18),
            ),
            Slider(
              value: _sliderValue,
              min: 0,
              max: 100,
              onChanged: (value) {
                setState(() {
                  _sliderValue = value;
                });
              },
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildColumnWithIconAndText(Icons.menu, "Routines"),
                buildColumnWithIconAndText(Icons.check_circle, "Actual Success"),
              ],
            ),
            SizedBox(height: 16),
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
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                // Handle menu button click
              },
            ),
            IconButton(
              icon: Icon(Icons.swap_horiz),
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
        child: Icon(Icons.add),
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
        SizedBox(height: 8),
        Text(text, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
