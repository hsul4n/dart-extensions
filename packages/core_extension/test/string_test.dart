import 'package:test/test.dart';
import 'package:core_extension/core_extension.dart' show StringExtension;

main() {
  test('camel case', () {
    expect('HelloWorld'.toCamelCase(), equals('hello_world'));
  });
}
