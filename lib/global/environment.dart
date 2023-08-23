import 'dart:io';

class Environment {
  static String apiUrl = Platform.isAndroid
      //? 'http://172.20.20.20:3000/api'
      ? 'http://10.0.2.2:3000/api'
      : 'http://localhost:3000/api';
  static String socketUrl = Platform.isAndroid
      //? 'http://172.20.20.20:3000'
      ? 'http://10.0.2.2:3000'
      : 'http://localhost:3000';
}
