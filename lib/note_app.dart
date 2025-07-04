import 'package:flutter/cupertino.dart';
import 'package:note_app/screens/login_screen.dart';
import 'package:note_app/screens/splash_screen.dart';

class NoteApp extends StatefulWidget {
  const NoteApp({super.key});

  @override
  State<NoteApp> createState() => _NoteAppState();
}

class _NoteAppState extends State<NoteApp> {
  bool _showSplash = true;

  void _onSplashCompleted() {
    setState(() {
      _showSplash = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _showSplash ? SplashScreen(onSplashComplete: _onSplashCompleted,) : LoginScreen();
  }
}
