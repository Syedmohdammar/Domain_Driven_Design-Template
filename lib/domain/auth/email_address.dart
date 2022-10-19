import 'package:dartz/dartz.dart';

import 'package:checkingout/core/value_objects.dart';
import 'package:flutter/cupertino.dart';

import '../../core/failures.dart';
import '../../core/value_validators.dart';

@immutable
class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    // ignore: unnecessary_null_comparison
    assert(input != null);
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }
  // ignore: unnecessary_null_comparison
  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    // ignore: unnecessary_null_comparison
    assert(input != null);
    return Password._(
      validatePassword(input),
    );
  }
  // ignore: unnecessary_null_comparison
  const Password._(this.value);
}
