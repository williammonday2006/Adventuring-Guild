import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'party_model.dart';
import 'guild_hall_roster.dart';
import 'quest_party_summary.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => PartyModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adventuring Guild',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Adventuring Guild'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'Guild Hall Roster',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Expanded(
              child: GuildHallRoster(),
            ),
            const QuestPartySummary(),
          ],
        ),
      ),
    );
  }
}
