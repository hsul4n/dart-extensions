import 'package:test/test.dart';
import 'package:core_extension/core_extension.dart' show IterableExtension;

main() {
  test('flatten', () {
    final data = [
      [
        'a',
        'b',
      ],
      ['c', 'd'],
      [
        ['e', 'f'],
        ['g', 'h'],
      ],
    ];

    expect(data.flatten, ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h']);
  });
}
