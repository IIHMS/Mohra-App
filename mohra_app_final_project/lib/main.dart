import 'package:flutter/material.dart';
import 'package:mohra_app_final_project/screens/singup_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: "https://lashdohuhpdzxhyxihlx.supabase.co",
    anonKey: "sb_publishable_rOJfhhBMiRydJyCTOrJUaQ_-IbeCzEv",
  );


  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignupScreen()
    );
  }
}
