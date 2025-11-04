import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final baseTheme = ThemeData.dark();
    return MaterialApp(
      title: 'Cyber App',
      debugShowCheckedModeBanner: false,
      theme: baseTheme.copyWith(
        scaffoldBackgroundColor: Colors.black,
        textTheme: GoogleFonts.orbitronTextTheme(baseTheme.textTheme).apply(
          bodyColor: Colors.white70,
          displayColor: Colors.cyanAccent,
        ),
        colorScheme: baseTheme.colorScheme.copyWith(
          primary: Colors.cyanAccent,
          secondary: Colors.purpleAccent,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: GoogleFonts.orbitron(
            color: Colors.cyanAccent,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.black45,
          shape: const CircleBorder(
            side: BorderSide(color: Colors.cyanAccent, width: 2),
          ),
          foregroundColor: Colors.cyanAccent,
        ),
      ),
      home: const CyberHomePage(),
      routes: {
        '/': (context) => const CyberHomePage(),
      },
    );
  }
}

class CyberHomePage extends StatefulWidget {
  const CyberHomePage({super.key});

  @override
  State<CyberHomePage> createState() => _CyberHomePageState();
}

class _CyberHomePageState extends State<CyberHomePage> {
  int _counter = 0;

  void _incrementCounter() => setState(() => _counter++);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DASHBOARD CYBER'),
      ),
      body: Stack(
        children: [
          // Background gradient for cyber feel
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black, Colors.grey[900]!],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'AKSES DITERIMA',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontSize: 32,
                        color: Colors.cyanAccent,
                      ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Klik: $_counter',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 20,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Tambah',
        child: const Icon(Icons.add),
      ),
    );
  }
}