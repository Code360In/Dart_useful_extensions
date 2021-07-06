import 'package:flutter_test/flutter_test.dart';

import 'package:useful_extensions/useful_extensions.dart';
import 'package:tuple/tuple.dart';

void main() {
  group('iterable_operators', () {
    test('multiply', () {
      expect([1, 2].multiply(2), [2, 4]);
    });

    test('divide', () {
      expect([2, 4].divide(2), [1, 2]);
    });

    test('substract', () {
      expect([2, 4].minus(1), [1, 3]);
    });

    test('add', () {
      expect([2, 4].plus(1), [3, 5]);
    });
  });

  group('iterable_methods', () {
    test('filter', () {
      expect([1, 2, 3, 7].filter((element) => element > 2), [3, 7]);
    });

    test('filter not', () {
      expect([1, 2, 3, 5].filterNot((element) => element > 2), [1, 2]);
    });

    test('filter not null', () {
      expect([1, null, 3, null].filterNotNull(), [1, 3]);
    });

    test('any', () {
      expect([1, 2, 7].any((element) => element % 2 == 0), true);
    });

    test('all', () {
      expect([2, 4, 8].all((element) => element % 2 == 0), true);
    });

    test('element at or null', () {
      expect([1, 2, 3].elementAtOrNull(2), 3);
      expect([1, 2, 3].elementAtOrNull(3), null);
    });

    test('find', () {
      expect([1, 2, 4].find((selector) => selector % 2 == 0), 2);
    });

    test('map indexed', () {
      expect([0, 1, 2].mapIndexed((index, item) => index + item), [0, 2, 4]);
    });

    test('foreach indexed', () {
      var sumOfIndexes = 0;
      [0, 1, 2].forEachIndexed((index, item) => sumOfIndexes += index);
      expect(sumOfIndexes, 3);
    });

    test('intersect', () {
      expect([1, 2, 3].intersect([2, 3, 5]), [1, 2, 3, 5]);
    });
  });
}
