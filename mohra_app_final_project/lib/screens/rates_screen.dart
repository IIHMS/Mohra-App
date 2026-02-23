import 'package:mohra_app_final_project/screens/main_ball_screen.dart';
import 'package:mohra_app_final_project/service/database.dart';
import 'package:mohra_app_final_project/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

class RatesScreen extends StatefulWidget {
  const RatesScreen({super.key});

  @override
  State<RatesScreen> createState() => _RatesScreenState();
}

class _RatesScreenState extends State<RatesScreen> {
  var titleController = TextEditingController();
  var imageController = TextEditingController();
  var messageController = TextEditingController();

  @override
  void dispose() {
    titleController.dispose();
    imageController.dispose();
    messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2D4E47),
        title: Text("التقييمات"),
      ),
      body: Container(
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

     child:  SafeArea(
        child: FutureBuilder(
          future: Database().getRates(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }
            return GridView.builder(
              itemCount: snapshot.data!.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                final course = snapshot.data![index];
                return Card(
                  child: Column(
                    children: [
                      
                      SizedBox(child: Image.network(course.image ?? ""), height: 100, width: double.infinity, ),
                      Text("${course.title!} :الموضوع"),
                      SizedBox(height: 8),
                      Text(course.message!),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),

      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 24,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("add rate"),
                      SizedBox(height: 24),
                      TextFieldWidget(
                        hint: "العنوان",
                        icon: Icon(Icons.book),
                        controller: titleController,
                      ),
                      const SizedBox(height: 24),
                      TextFieldWidget(
                        hint: "رابط الصورة",
                        icon: Icon(Icons.image),
                        controller: imageController,
                      ),
                      const SizedBox(height: 24),
                      TextFieldWidget(
                        hint: "الرسالة",
                        icon: Icon(Icons.textsms_outlined),
                        controller:
                            messageController, 
                      ),
                      SizedBox(height: 24),
                      ElevatedButton(
                        onPressed: () async {
                          
                          await Database().addRates(
                            title: titleController.text,
                            image: imageController.text,
                            message: messageController.text, 
                          );

                          Navigator.pop(context); 

                          setState(
                            () {},
                          );

                          titleController.clear();
                          imageController.clear();
                          messageController.clear();
                        },
                        child: Text("أرسل"),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
