import 'package:test/test.dart';
import 'package:core_extension/core_extension.dart' show MapExtension;

main() {
  test('nest', () {
    final data = <String, dynamic>{
      'id': 32,
      'userId': 32,
      'title': 'Hello World!',
      'completed': 0,
      'user_id': 32,
      'user_name': 'Sam'
    };

    expect(
        data..nest('user'),
        equals({
          'id': 32,
          'userId': 32,
          'title': 'Hello World!',
          'completed': 0,
          'user': {'id': 32, 'name': 'Sam'},
        }));
  });
}
