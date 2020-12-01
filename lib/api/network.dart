import 'dart:io';
import 'package:http/http.dart';

class Network {

  Network(this.url);
  static String error;
  final String url;
  
  Future getData() async {
    // Add error handling
    try {
      print('Calling uri: $url');
      final response = await get(url);
      if (response.statusCode == 200) {
        return response.body;
      } else {
        //error = 'Упс, похоже что-то пошло не так, повторите попытку или свяжитесь с менеджером';
        print('Response status code: ${response.statusCode}');
      }
    } on SocketException {
      error = 'Упс, нет соединения 😑';
      print('No Internet connection 😑');
    } on HttpException {
      error = "Обновите страницу или свяжитесь с менеджером 😱";
      print("Couldn't find the post 😱");
    } on FormatException {
      error = "Обновите страницу или свяжитесь с менеджером 😱";
      print('Bad response format 👎');
    }
  }
}