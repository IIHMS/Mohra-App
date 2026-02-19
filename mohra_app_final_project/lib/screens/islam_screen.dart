import 'package:mohra_app_final_project/service/api.dart';
import 'package:flutter/material.dart';

class IslamScreen extends StatelessWidget {
  const IslamScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var screenHight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    
    return Scaffold(
      appBar: AppBar(
        title:Row(
          children: [
            ElevatedButton.icon(
                onPressed: () {},
                label: Icon(Icons.view_list_rounded),
              ),
            SizedBox(width: screenWidth * 0.6,),
            ElevatedButton.icon(
                onPressed: () {},
                label: Icon(Icons.person,),
              ),
            // Center(child: Text("", style: TextStyle(color: Colors.white),)),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 42, 2, 50), 
      ),
       body:ListView( 
              children: [
                // Container(
                //   margin: EdgeInsets.all(10),
                //   decoration: BoxDecoration(
                //     image: DecorationImage(image: AssetImage("assets/images/mainBackGround.jpeg"), fit: BoxFit.cover), //AI Fix from VS Code
                //     boxShadow: [
                //       BoxShadow(
                //         color: const Color.fromARGB(255, 84, 13, 88),
                //         blurRadius: 8,
                //       ),
                //     ],
                //     borderRadius: BorderRadius.circular(24),
                //   ),
                //   child: Image.asset("assets/images/mainBackGround.jpeg",fit: BoxFit.cover,),

                // ),

                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      width: screenWidth *0.98,
                      height: screenHight * 0.20,

                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/images/mainBackGround.jpeg"), fit: BoxFit.cover), //AI Fix from VS Code
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 117, 117, 117),
                            blurRadius: 8,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Center(
                        child: Text(                        // textAlign:,
                        "مرحبا سلطان",
                        style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic, 
                        fontSize: 20, 
                        fontWeight: FontWeight.bold,
                        )))
                    ),


                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, ),
                  height: screenHight,
                  width: screenWidth,
                  //color: const Color.fromARGB(236, 37, 4, 49),

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

                      Container(
                        margin: EdgeInsets.only(top: 5,left: 165),
                        width: screenWidth*0.50,
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
                        child:
                        Center(
                          child: Text(
                          // textAlign:,
                          "مرحبا سلطان",
                          style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontStyle: FontStyle.italic, 
                          fontSize: 35, 
                          fontWeight: FontWeight.bold,
                        )),

                        )                 
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 5,right: 165),
                        width: screenWidth*0.50,
                        height: screenHight * 0.30,
                        decoration: BoxDecoration(
                          // image: DecorationImage(image: AssetImage("assets/images/mainBackGround.jpeg"), fit: BoxFit.cover), //AI Fix from VS Code
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 1, 22, 60),
                              // blurRadius: 8,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child:                       
                          Text(
                          // textAlign:,
                          "مرحبا سلطان",
                          style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontStyle: FontStyle.italic, 
                          fontSize: 35, 
                          fontWeight: FontWeight.bold,
                        )),
                      ),
                      //   Text(
                      //   // textAlign:,
                      //   "مرحبا سلطان",
                      //   style: TextStyle(
                      //   color: const Color.fromARGB(255, 255, 255, 255),
                      //   fontStyle: FontStyle.italic, 
                      //   fontSize: 35, 
                      //   fontWeight: FontWeight.bold,
                      // )),

                      // Image.asset("assets/images/mainBackGround.jpeg",fit: BoxFit.cover,),

                    ],
                  )
                ),




                    // Container(
                    //   margin: EdgeInsets.all(20),
                    //   width: screenWidth *0.98,
                    //   height: screenHight * 0.25,

                    //   decoration: BoxDecoration(
                    //     image: DecorationImage(image: AssetImage("assets/images/mainBackGround.jpeg"), fit: BoxFit.cover), //AI Fix from VS Code
                    //     boxShadow: [
                    //       BoxShadow(
                    //         color: const Color.fromARGB(255, 84, 13, 88),
                    //         blurRadius: 8,
                    //       ),
                    //     ],
                    //     borderRadius: BorderRadius.circular(24),
                    //   ),

                    //   child: Align(
                    //     alignment: Alignment.bottomCenter,
                    //     child:Padding(
                    //       padding: const EdgeInsets.only(bottom: 16),
                    //       child: ElevatedButton(onPressed: () {

                    //       },
                    //       style: ButtonStyle(backgroundColor: WidgetStatePropertyAll<Color>(const Color.fromARGB(184, 124, 124, 124))),
                    //       child: Text("إستكشف المرايا", style: TextStyle(color: const Color.fromARGB(179, 255, 255, 255), fontStyle: FontStyle.italic, fontWeight: FontWeight.w900))),
                    //     )
                    //   )
                    // ),




              ]
            ),
          );
  }
}