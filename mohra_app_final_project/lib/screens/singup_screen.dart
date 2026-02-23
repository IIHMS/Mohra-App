import 'package:mohra_app_final_project/extension/nav.dart';
import 'package:mohra_app_final_project/screens/login_screen.dart';
import 'package:mohra_app_final_project/screens/main_ball_screen.dart';
import 'package:mohra_app_final_project/service/database.dart';
import 'package:flutter/material.dart';
import 'package:mohra_app_final_project/widgets/text_field_widget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var NameController = TextEditingController();

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
      body:Container(
          decoration: BoxDecoration(
          gradient: LinearGradient( 
            begin: Alignment.topCenter, 
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF2D4E47),
              Color(0xFF1B2B28), 
            ],
          ),
        ),

        child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
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
                  "تسجيل حساب جديد",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),

                TextFieldWidget(
                  hint: "أدخل اسمك",
                  icon: Icon(Icons.person),
                  controller: NameController,
                ),
                TextFieldWidget(
                  hint: "أدخل ايميلك",
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
                      await Database().signUp(
                        email: emailController.text,
                        password: passwordController.text,
                        name: NameController.text,
                      );
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FootballMainScreen()),
                      );
                    } catch (error) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("حدث خطأ أثناء التسجيل: $error")),
                      );
                    }
                  },
                  child: Text("سجل", style: TextStyle(fontSize: 18)),
                ),
                TextButton(
                  onPressed: () {
                    context.pushAndDelete(LoginScreen());
                  },
                  child: Text(
                    "هل لديك حساب؟ تسجيل الدخول",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      ) 
    );
  }
}
