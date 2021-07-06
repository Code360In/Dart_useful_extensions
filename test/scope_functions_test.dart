import 'package:flutter_test/flutter_test.dart';

import 'package:useful_extensions/useful_extensions.dart';

void main() {
  group('let', () {
    test('For integer', () {
      expect(3.let((it) => it / it), 1);
    });

    test('For string', () {
      expect('hello'.let((it) => it.toUpperCase()), 'HELLO');
    });

    test('Type conversion', () {
      expect('100'.let((String x) => int.parse(x)), 100);
    });

    test('Null aware operation', () {
      expect(null?.let((it) => it * 2), null);
    });
  });

  group('also', () {
    test('for simple usage', () {
      final target = 'hello';
      late final targetLength;
      var result = target.also((it) {
        targetLength = it.length;
      });
      expect(targetLength, equals(target.length));
    });
  });
}
