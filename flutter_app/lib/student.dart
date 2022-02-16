import 'dart:convert';
import 'package:http/http.dart' as http;

class Student {
  String baseURL = "http://127.0.0.1:8000/api/student/";
  Future<List> getAllStudent() async{
    try{
      var response = await http.get(Uri.parse(baseURL));
      if(response.statusCode == 200){
        return jsonDecode(response.body);
      }else{
        return Future.error("Server Error");
      }
    }
    catch (e) {
      return Future.error(e);
    }
  }



//"http://localhost:8000/api/student/"