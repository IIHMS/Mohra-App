import 'package:mohra_app_final_project/extension/nav.dart';
import 'package:mohra_app_final_project/screens/main_ball_screen.dart';
// import 'package:mohra_app_final_project/screens/home_screen.dart';
import 'package:mohra_app_final_project/screens/singup_screen.dart';
import 'package:mohra_app_final_project/service/database.dart';
import 'package:mohra_app_final_project/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      // appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            //AI
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF2D4E47), Color(0xFF1B2B28)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              height: height * 0.5,
            decoration: BoxDecoration(
              color:  Color.fromARGB(255, 183, 183, 183),
              boxShadow: [BoxShadow(color: Colors.black, blurRadius: 10,)],
              borderRadius: BorderRadius.circular(20),
            ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "الدخول",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  TextFieldWidget(
                    hint: "أدخل البريد الإلكتروني",
                    icon: Icon(Icons.email),
                    controller: emailController,
                  ),
                  TextFieldWidget(
                    hint: "أدخل كلمة المرور",
                    icon: Icon(Icons.password),
                    controller: passwordController,
                    isObscure: true,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      try {
                        await Database().login(
                          email: emailController.text,
                          password: passwordController.text,
                        );

                        if (context.mounted) {
                          context.push(FootballMainScreen());
                        }
                      } catch (e) {
                        ScaffoldMessenger.of(
                          context,
                        ).showSnackBar(SnackBar(content: Text(e.toString())));
                      }
                    },
                    child: Text("دخول", style: TextStyle(fontSize: 18)),
                  ),
                  TextButton(
                    onPressed: () async {
                      context.pushAndDelete(SignupScreen());
                    },
                    child: Text("لا تملك حساب؟ سجل الآن", style: TextStyle(fontSize: 18)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
