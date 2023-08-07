import 'package:flutter/material.dart';

class PushSettingsPage extends StatelessWidget {
  const PushSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          'Pushes',
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 80,
              height: 80,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop<bool>(
                    context,
                    true,
                  );
                },
                child: Text('Ja'),
              ),
            ),
            SizedBox(
              width: 80,
              height: 80,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop<bool>(
                    context,
                    false,
                  );
                },
                child: Text('Nein'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
