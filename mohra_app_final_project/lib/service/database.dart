
import 'package:mohra_app_final_project/models/rates_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Database {
  final supabase = Supabase.instance.client;

  signUp({required String email, required String password, required String name}) async {
    await supabase.auth.signUp(email: email, password: password, data: {"name": name});
  }

  login({required String email, required String password}) async {
    await supabase.auth.signInWithPassword(email: email, password: password);
  }



addRates({required String title, required String image, required String message}) async {
  try {
    await supabase.from("rates").insert({
      "title": title, 
      "image": image, 
      "message": message 
    });
  } catch (e) {
    print("Error inserting data: $e");
  }
}

deleteRate(int id) async {
  await supabase.from("rates").delete().eq('id', id);
}


updateRate(int id, String newTitle) async {
  await supabase.from("rates").update({'title': newTitle}).eq('id', id);
}
  Future<List<Rates>> getRates() async {
    var response = await supabase.from("rates").select().order('id', ascending: false);
    List<Rates> ratesList = [];
    for (var item in response) {
      Rates rate = Rates();
      rate.title = item['title'];
      rate.image = item['image'];
      rate.message = item['message']; 
      ratesList.add(rate);
    }
    return ratesList;
  }
}