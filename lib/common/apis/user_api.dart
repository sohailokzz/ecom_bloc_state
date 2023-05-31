import 'dart:developer';

import 'package:ecom_bloc/common/entities/entities.dart';
import 'package:ecom_bloc/common/utils/http_utils.dart';

class UserAPI {
  static login({LoginRequestEntity? param}) async {
    var response = await HttpUtils().post(
      'api/login',
      queryParameters: param?.toJson(),
    );

    log(response.toString());
  }
}
