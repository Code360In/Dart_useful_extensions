import 'package:flutter_test/flutter_test.dart';

import 'package:useful_extensions/useful_extensions.dart';

void main() {
  group('valid_strings', () {
    test('email', () {
      expect('vovaklh20012@gmail.com'.isEmailValid(), true);
      expect('vovaklh20012@gmail'.isEmailValid(), false);
    });

    test('password', () {
      expect('12345678'.isPasswordLongerThan(), true);
      expect('12345'.isPasswordLongerThan(), false);
    });
  });
}
