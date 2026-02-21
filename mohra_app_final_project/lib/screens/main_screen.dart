import 'package:mohra_app_final_project/screens/islam_screen.dart';
import 'package:mohra_app_final_project/service/api.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      // appBar: AppBar(
      //   title:Row(
      //     children: [
      //       ElevatedButton.icon(
      //           onPressed: () {},
      //           label: Icon(Icons.view_list_rounded),
      //         ),
      //       SizedBox(width: screenWidth * 0.6,),
      //       ElevatedButton.icon(
      //           onPressed: () {},
      //           label: Icon(Icons.person,),
      //         ),
      //       // Center(child: Text("", style: TextStyle(color: Colors.white),)),
      //     ],
      //   ),
      //   backgroundColor: const Color.fromARGB(255, 42, 2, 50),
      // ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                width: screenWidth * 0.98,
                height: screenHight * 0.20,

                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/mainBackGround.jpeg"),
                    fit: BoxFit.cover,
                  ), //AI Fix from VS Code
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 117, 117, 117),
                      blurRadius: 8,
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(width: screenWidth * 0.01),
                    Align(
                      alignment: Alignment.topRight,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        label: Icon(Icons.view_list_rounded),
                      ),
                    ),

                    Center(
                      child: Container(
                        height: screenHight * 0.2,
                        width: 250,
                        child: Center(
                          child: Text(
                            "مرحبا سلطان",
                            style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: screenWidth * 0.025),
                    Align(
                      alignment: Alignment.topRight,
                      child:
                          // padding: const EdgeInsets.only(bottom: 125, left: 10),
                          ElevatedButton.icon(
                            onPressed: () {},
                            label: Icon(Icons.person),
                          ),
                    ),

                  ],
                ),
              ),
            ],
          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            height: screenHight,
            width: screenWidth,

            decoration: BoxDecoration(
              // image: DecorationImage(image: AssetImage("assets/images/mainBackGround.jpeg"), fit: BoxFit.cover), //AI Fix from VS Code
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(76, 58, 57, 58),
                  blurRadius: 8,
                ),
              ],
              borderRadius: BorderRadius.circular(24),
            ),

            child: Column(
              children: [

                GestureDetector( //AI
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => IslamScreen(),));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 5, left: 165),
                    width: screenWidth * 0.50,
                    height: screenHight * 0.30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      image: DecorationImage(
                        image: NetworkImage('https://img.freepik.com/premium-photo/silhouette-mosques-dome-crescent-moon-dark-blue-twilight-sky-background-vertical-frame_43514-1890.jpg'), // رابط الصورة الخارجية
                        fit: BoxFit.cover,
                      ),
                    ),

                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                      "الدين   ",
                      style: TextStyle(
                        color: const Color.fromARGB(172, 255, 255, 255),
                        fontStyle: FontStyle.italic,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    )
                  ),
                ),

                GestureDetector( //AI
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => IslamScreen()));
                  },
                  child: Container(
                  margin: EdgeInsets.only(top: 5, right: 165),
                  width: screenWidth * 0.50,
                  height: screenHight * 0.30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      image: DecorationImage(
                        image: NetworkImage('https://doseme-rx.com/wp-content/uploads/2021/03/3-1.png'), // رابط الصورة الخارجية
                        fit: BoxFit.cover,
                      ),
                    ),

                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                      "الأخبار   ",
                      style: TextStyle(
                        color: const Color.fromARGB(172, 73, 43, 43),
                        fontStyle: FontStyle.italic,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    )
                  ),
                ),

                // Container(
                //   margin: EdgeInsets.only(top: 5, right: 165),
                //   width: screenWidth * 0.50,
                //   height: screenHight * 0.30,
                //   decoration: BoxDecoration(
                //     // image: DecorationImage(image: AssetImage("assets/images/mainBackGround.jpeg"), fit: BoxFit.cover), //AI Fix from VS Code
                //     boxShadow: [
                //       BoxShadow(
                //         color: const Color.fromARGB(255, 1, 22, 60),
                //         // blurRadius: 8,
                //       ),
                //     ],
                //     borderRadius: BorderRadius.circular(24),
                //   ),
                //   child: Text(
                //     "مرحبا سلطان",
                //     style: TextStyle(
                //       color: const Color.fromARGB(255, 255, 255, 255),
                //       fontStyle: FontStyle.italic,
                //       fontSize: 35,
                //       fontWeight: FontWeight.bold,
                //     ),
                //   ),
                // ),
                                Container(
                  margin: EdgeInsets.only(top: 5, left: 165),
                  width: screenWidth * 0.50,
                  height: screenHight * 0.30,
                  decoration: BoxDecoration(
                    // image: DecorationImage(image: AssetImage("assets/images/mainBackGround.jpeg"), fit: BoxFit.cover), //AI Fix from VS Code
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 60, 1, 60),
                        // blurRadius: 8,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Center(
                    child: Text(
                      "مرحبا سلطان",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        fontStyle: FontStyle.italic,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
