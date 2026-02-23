import 'package:flutter/material.dart';

class ClubsScreen extends StatelessWidget {
  final Map<String, dynamic> clubData;

  const ClubsScreen({super.key, required this.clubData});

  @override
  Widget build(BuildContext context) {
    var screenHight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          clubData['name'],
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF1B2B28),
        elevation: 0,
      ),
      body: Container(
        height: screenHight,
        width: screenWidth,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            //AI
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF2D4E47), Color(0xFF1B2B28)],
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    //AI
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF2D4E47),
                      Color.fromARGB(255, 102, 56, 19),
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    const Text(
                      "آخر مباراة",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildTeam(clubData['name'], clubData['logo_url']),
                        const Text(
                          "ضد",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        _buildTeam(
                          clubData['last_match']?['opponent'] ?? "Unknown",
                          "https://via.placeholder.com/50",
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "النتيجة: ${clubData['last_match']?['result'] ?? "-"}",
                      style: const TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),

              _buildInfoCard(
                "الترتيب",
                "#${clubData['league_rank']}",
                Icons.emoji_events,
              ),
              _buildInfoCard("النقاط", "${clubData['points']}", Icons.star),
              _buildInfoCard("المدرب", "${clubData['manager']}", Icons.person),
              _buildInfoCard(
                "البطولات",
                "${clubData['total_trophies']}",
                Icons.workspace_premium,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTeam(String name, String logo) {
    return Column(
      children: [
        Image.network(
          logo,
          height: 50,
          errorBuilder: (c, e, s) =>
              const Icon(Icons.shield, color: Colors.white),
        ),
        Text(name, style: const TextStyle(color: Colors.white)),
      ],
    );
  }

  Widget _buildInfoCard(String title, String value, IconData icon) {
    return Card(
      color: const Color(0xFF1A2A2D),
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: Colors.blue),
        title: Text(title, style: const TextStyle(color: Colors.white70)),
        trailing: Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
