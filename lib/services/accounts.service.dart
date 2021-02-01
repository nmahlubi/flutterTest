import 'dart:convert';
import 'package:test_assessment/model/model.page.dart';
import 'package:http/http.dart' as http;
//up

class Service {
  static const String url =
      'http://us-central1-momentumtest-bfdef.cloudfunctions.net/app/api/v1/account/findByUserId?userId=UZyMgwSApiN0b148VDrZSAeWkfb2';

  static Future<List<Account>> getAccounts() async {
    try {
      //getting the url and storing in response
      final response = await http.get(url);
      //checking if the response is 200/successful
      List<Account> list = parseAccount(response.body);
      return list;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static List<Account> parseAccount(String responseBody) {
    //return a list to users
    //convert json to string and map it
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    //call user from json and return the list
    return parsed.map<Account>((json) => Account.fromJson(json)).toList();
  }
}
