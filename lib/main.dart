import 'package:flutter/material.dart';

void main() => runApp(const BehemothApp());

class BehemothApp extends StatelessWidget {
  const BehemothApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: const Color(0xFF0B0F14),
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFFEF4444),
        brightness: Brightness.dark,
      ),
      fontFamily: 'Roboto',
    );

    return MaterialApp(
      title: 'Behemoth Slayer',
      theme: theme,
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Behemoth Slayer'),
        backgroundColor: const Color(0xFF111722),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Today’s Battle', style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 12),
            _Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('XP', style: TextStyle(color: Colors.white70)),
                  const SizedBox(height: 6),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: LinearProgressIndicator(
                      value: .1, minHeight: 10, backgroundColor: const Color(0xFF1F2A44),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text('Behemoth HP', style: TextStyle(color: Colors.white70)),
                  const SizedBox(height: 6),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: LinearProgressIndicator(
                      value: .6, minHeight: 10, color: Colors.green, backgroundColor: const Color(0xFF1F2A44),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text('This is the scaffold. We’ll add habits, reminders, avatar, seasons, halls, etc. in phases.',
                      style: TextStyle(color: Colors.white60)),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: _Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Habits', style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(height: 8),
                        Text('Wake • Sleep • Shower • Laundry • Groceries • Car • Hair • Gym (Fri/Sat)',
                            style: TextStyle(color: Colors.white70)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(padding: const EdgeInsets.symmetric(vertical: 14)),
                onPressed: () {},
                child: const Text('This is a demo build • More coming'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Card extends StatelessWidget {
  final Widget child;
  const _Card({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFF0D1420),
        border: Border.all(color: const Color(0xFF1B2230)),
        borderRadius: BorderRadius.circular(14),
      ),
      child: child,
    );
  }
}
