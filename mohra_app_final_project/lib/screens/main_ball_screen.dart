import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mohra_app_final_project/screens/clubs_screen.dart';
import 'package:mohra_app_final_project/screens/rates_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() => runApp(MaterialApp(home: FootballMainScreen()));

class FootballMainScreen extends StatefulWidget {
  const FootballMainScreen({super.key});

  @override
  State<FootballMainScreen> createState() => _FootballMainScreenState();
}

class _FootballMainScreenState extends State<FootballMainScreen> {
  String? selectedTeam;

  List<dynamic> allClubs = [];

  @override
  void initState() {
    super.initState();
    loadAllData();
  }

  Future<void> loadAllData() async {
    try {
      final String response = await rootBundle.loadString(
        'assets/data/clubs.json',
      );
      final data = await json.decode(response);
      setState(() {
        allClubs = data['clubs'];
      });
    } catch (e) {
      print("خطأ في تحميل البيانات: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenHight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    var user = Supabase.instance.client.auth.currentUser;

    var items = ["الهلال", "النصر", "الاتحاد", "الأهلي"];

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHight,

        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF2D4E47), Color(0xFF1B2B28)],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  " ${user?.userMetadata?['name']} مرحبا",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),

              Center(
                child: Text(
                  "اختار فريقك يالذيب",
                  style: TextStyle(color: Colors.white70, fontSize: 18),
                ),
              ),
              SizedBox(height: 60),

              Text(
                "                                                                          الفرق",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 10),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.white24),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: selectedTeam,
                    isExpanded: true,
                    dropdownColor: Color(0xFF1B2B28),
                    icon: Icon(Icons.keyboard_arrow_down, color: Colors.white),
                    items: items.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        selectedTeam = newValue;
                      });
                    },
                  ),
                ),
              ),

              SizedBox(height: 30),

              SizedBox(
                width: screenWidth,
                height: screenHight * 0.06,
                child: ElevatedButton(
                  onPressed: () {
                    if (selectedTeam == items[0]) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ClubsScreen(clubData: allClubs[0]),
                        ),
                      );
                    } else if (selectedTeam == items[1]) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ClubsScreen(clubData: allClubs[1]),
                        ),
                      );
                    } else if (selectedTeam == items[2]) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ClubsScreen(clubData: allClubs[2]),
                        ),
                      );
                    } else if (selectedTeam == items[3]) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ClubsScreen(clubData: allClubs[3]),
                        ),
                      );
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll<Color>(
                      const Color.fromARGB(184, 54, 107, 73),
                    ),
                  ),
                  child: Text(
                    "تأكيد الفريق",
                    style: TextStyle(
                      color: const Color.fromARGB(179, 255, 255, 255),
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF1B2B28),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          if (index == 0) {
            // Navigator.push(context, MaterialPageRoute(builder: (context) => FootballMainScreen()));
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RatesScreen()),
            );
          }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "الرئيسية"),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "التواصل"),
        ],
      ),
    );
  }
}
