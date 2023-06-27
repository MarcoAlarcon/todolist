import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Just tasks',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 34, 33, 33)),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: const Color.fromARGB(255, 19, 18, 18),
        child: const Column(
          children: [
            DashCard(),
            SizedBox(
              height: 10,
            ),
            DashList()
          ],
        ),
      ),
    );
  }
}

class DashCard extends StatelessWidget {
  const DashCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Color.fromARGB(255, 97, 97, 97),
      child: SizedBox(
        height: 200,
        width: 350,
        child: Row(
          children: [
            Column(
              children: [Text('Tasks done:')],
            ),
            SizedBox(
              width: 150,
            ),
            Column(
              children: [Text('To do')],
            )
          ],
        ),
      ),
    );
  }
}

class DashList extends StatelessWidget {
  const DashList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 500,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 97, 97, 97),
          borderRadius: BorderRadius.circular(20.0)),
    );
  }
}
