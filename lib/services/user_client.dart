import 'dart:convert';

import 'package:get/get.dart';
import 'package:kilimall/services/client.dart';

import 'api_routes.dart';

class UserClient {
  static createUser(Map<String, dynamic> userdata) async {
    print(userdata);
    var response = await DbBase()
        .databaseRequest(create_user, DbBase().postRequestType, body: userdata);
    var data = jsonDecode(response);
    return data;
  }

  static loginUser(Map<String, dynamic> userdata) async {
    print(userdata);
    var response = await DbBase()
        .databaseRequest(login_user, DbBase().postRequestType, body: userdata);
    var data = jsonDecode(response);
    return data;
  }
}
