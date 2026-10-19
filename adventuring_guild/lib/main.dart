import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'party_model.dart';
import 'guild_hall_roster.dart';

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
        body: const GuildHallRoster(),
      ),
    );
  }
}
