// import 'package:flutter/material.dart';

// class IslamScreen extends StatefulWidget {
//   IslamScreen({super.key});

//   @override
//   State<IslamScreen> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<IslamScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         leading: Icon(Icons.arrow_back, color: Colors.black),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: Column(
//         children: [
//           buildingContainers("dwdwasawsdwas", Icons.ac_unit),
//           buildingContainers("dwadwas", Icons.ac_unit),
//           buildingContainers("dwadwas", Icons.ac_unit),
//           buildingContainers("dwadwas", Icons.ac_unit),
//           buildingContainers("dwadwas", Icons.ac_unit),
//         ],
//       ),
//     );
//   }

//     Widget buildingContainers(String label, IconData icon) {
//     return Column(
//       children: [
//         Icon(icon, color: Color.fromARGB(255, 194, 19, 19), size: 80),
//         SizedBox(height: 10),
//         Text(label, style: TextStyle(color: Color.fromARGB(137, 173, 40, 40), fontSize: 12)),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() => runApp(MaterialApp(home: IslamScreen()));

class IslamScreen extends StatelessWidget {
  IslamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            
            Text("                                     الدين", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            Text("                                                                        2025/22/فبراير ", style: TextStyle(color: Colors.grey)),
            SizedBox(height: 30),
            
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xFF10153D),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildInfoColumn("القبلة", Icons.explore_outlined),
                  VerticalDivider(color: Colors.white24, thickness: 1),
                  _buildInfoColumn("وقت الصلاة", Icons.access_time),
                ],
              ),
            ),
            SizedBox(height: 20),

            containerCard("القرآن الكريم", Color(0xFF3F215B), "https://cdn.discordapp.com/attachments/1373961556580368468/1474890058317299774/quran.png?ex=699b7de8&is=699a2c68&hm=6c5dda6bb58a2b7d94a5e3abe8321ba5d5f80836d9bb2d4ec2ca4bf9da161507&"),
            containerCard("الأذكار", Color.fromARGB(255, 121, 122, 180), "https://img.freepik.com/premium-vector/muslim-woman-praying-night-ramadan-vector-concept_445085-48.jpg"),
          ],
        ),
      ),
    );
  }

  Widget containerCard(String title, Color color, String imagePath) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      height: 120,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 250, top: 45),
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            // right: 0,
            bottom: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(25)),
              child: Image.network( // استبدلها بـ AssetImage عند إضافة صورك الخاصة
                '$imagePath', // ضع رابط الصورة أو المسار هنا
                height: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoColumn(String label, IconData icon) {
    return Column(
      children: [
        Icon(icon, color: Colors.white, size: 80), // مكان العناصر الرسومية
        SizedBox(height: 10),
        Text(label, style: TextStyle(color: Colors.white54, fontSize: 12)),
      ],
    );
  }
}