
// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:tasksheet_23/KW31/codingsession_Julien/profilPage.dart';
import 'push_settings_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final placeholder = const SizedBox(
    height: 100,
  );

  bool wantsPushes = true;
  TimeOfDay lastChanged = const TimeOfDay(
    hour: 08,
    minute: 20,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          'Einstellungen',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Eingestellte Sprache:',
            ),
            Text(
              'Deutsch',
            ),
            placeholder,
            Text(
              'Möchte Push-Benachrichtigungen:',
            ),
            ElevatedButton(
              onPressed: () async {
                // TODO: wie kann ich hier eine named route verwenden
                // und weiterhin auf den Rückgabewert von der PushSettingsPage
                // warten?
                final userAnswer = await Navigator.push<bool>(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PushSettingsPage(),
                  ),
                );

                if (userAnswer != null) {
                  setState(() {
                    wantsPushes = userAnswer;
                    lastChanged = TimeOfDay.now();
                  });
                }
              },
              child: Text(
                wantsPushes ? 'Ja' : 'Nein',
              ),
            ),
            placeholder,
            Text(
              'Zuletzt geändert:',
            ),
            Text(
              '${lastChanged.hour}:${lastChanged.minute} Uhr',
            ),
          ],
        ),
      ),
    );
  }
}
