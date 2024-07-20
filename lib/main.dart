import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasko/models/notes_model.dart';
import 'package:tasko/pages/loginpage.dart';
import 'pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NotesModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          fontFamily: 'Pacifico',
        ),
        home: const LoginPage(),
      ),
    );
  }
}
