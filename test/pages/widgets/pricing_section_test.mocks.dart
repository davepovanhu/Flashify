// Mocks generated by Mockito 5.4.2 from annotations
// in ankigpt/test/pages/widgets/pricing_section_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:ankigpt/src/infrastructure/buy_repository.dart' as _i3;
import 'package:cloud_functions/cloud_functions.dart' as _i2;
import 'package:logger/src/logger.dart' as _i5;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeFirebaseFunctions_0 extends _i1.SmartFake
    implements _i2.FirebaseFunctions {
  _FakeFirebaseFunctions_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [BuyRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockBuyRepository extends _i1.Mock implements _i3.BuyRepository {
  @override
  _i2.FirebaseFunctions get cloudFunctions => (super.noSuchMethod(
        Invocation.getter(#cloudFunctions),
        returnValue: _FakeFirebaseFunctions_0(
          this,
          Invocation.getter(#cloudFunctions),
        ),
        returnValueForMissingStub: _FakeFirebaseFunctions_0(
          this,
          Invocation.getter(#cloudFunctions),
        ),
      ) as _i2.FirebaseFunctions);
  @override
  String get routeUrl => (super.noSuchMethod(
        Invocation.getter(#routeUrl),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  _i4.Future<String> createCheckoutSessionUrl() => (super.noSuchMethod(
        Invocation.method(
          #createCheckoutSessionUrl,
          [],
        ),
        returnValue: _i4.Future<String>.value(''),
        returnValueForMissingStub: _i4.Future<String>.value(''),
      ) as _i4.Future<String>);
  @override
  _i4.Future<void> logClickedBuy() => (super.noSuchMethod(
        Invocation.method(
          #logClickedBuy,
          [],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
}

/// A class which mocks [Logger].
///
/// See the documentation for Mockito's code generation for more information.
class MockLogger extends _i1.Mock implements _i5.Logger {
  @override
  void v(
    dynamic message, [
    dynamic error,
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #v,
          [
            message,
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void d(
    dynamic message, [
    dynamic error,
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #d,
          [
            message,
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void i(
    dynamic message, [
    dynamic error,
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #i,
          [
            message,
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void w(
    dynamic message, [
    dynamic error,
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #w,
          [
            message,
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void e(
    dynamic message, [
    dynamic error,
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #e,
          [
            message,
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void wtf(
    dynamic message, [
    dynamic error,
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #wtf,
          [
            message,
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void log(
    _i5.Level? level,
    dynamic message, [
    dynamic error,
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #log,
          [
            level,
            message,
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );
  @override
  bool isClosed() => (super.noSuchMethod(
        Invocation.method(
          #isClosed,
          [],
        ),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);
  @override
  void close() => super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValueForMissingStub: null,
      );
}
