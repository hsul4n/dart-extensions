import 'dart:convert' as converter;
import 'package:http/http.dart' as http;

extension ResponseExtension on http.Response {
  bool get isSuccess => this.statusCode >= 200 && this.statusCode < 300;
  bool get isOk => this.isSuccess;
  bool get isRedirect => this.statusCode >= 300 && this.statusCode < 400;
  bool get isClientError => this.statusCode >= 400 && this.statusCode < 500;
  bool get isServerError => this.statusCode >= 500;

  dynamic get json =>
      converter.json.decode(converter.utf8.decode(this.bodyBytes));
}
