import 'package:dio/dio.dart';

extension ResponseExtension on Response {
  bool get isSuccess => statusCode! >= 200 && statusCode! < 300;
  bool get isOk => isSuccess;
  bool get isRedirect => statusCode! >= 300 && statusCode! < 400;
  bool get isClientError => statusCode! >= 400 && statusCode! < 500;
  bool get isServerError => statusCode! >= 500;
}
