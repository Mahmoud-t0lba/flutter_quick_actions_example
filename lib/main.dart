// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:quick_actions/quick_actions.dart';
import 'package:quickactions_example/shortcuts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  final String title = '';

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: title),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final quickActions = const QuickActions();
  String shortcut = 'no action set';

  @override
  void initState() {
    initQuickActions();
    super.initState();
  }

  void initQuickActions() {
    quickActions.initialize((type) {
      if (type == null) return;
      if (type == ShortcutItems.actionSearch.type) {
        print('Pressed: Search');
      } else if (type == ShortcutItems.actionTask.type) {
        print('Pressed: Task');
      }
      setState(() => shortcut = type);
    });
    quickActions.setShortcutItems(ShortcutItems.items);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0),
      body: Center(
        child: Text(
          'No quick action set' ?? shortcut,
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
