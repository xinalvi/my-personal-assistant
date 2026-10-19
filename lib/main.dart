import 'package:flutter/material.dart';
import 'package:text_to_speech/text_to_speech.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Assistant',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextToSpeech tts = TextToSpeech();

  void speakText() async {
    await tts.setLanguage('bn-BD');
    await tts.speak('হ্যালো, আমি আপনার পার্সোনাল অ্যাসিস্ট্যান্ট। আমি এখনো তৈরি হচ্ছে।');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Personal Assistant')),
      body: Center(
        child: ElevatedButton(
          onPressed: speakText,
          child: const Text('আমাকে চাপ দিন (Test Voice)'),
        ),
      ),
    );
  }
}
