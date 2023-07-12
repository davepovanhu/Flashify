// Mocks generated by Mockito 5.4.2 from annotations
// in ankigpt/test/providers/delete_card_provider_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;

import 'package:ankigpt/src/infrastructure/session_repository.dart' as _i5;
import 'package:ankigpt/src/models/session_dto.dart' as _i7;
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:cloud_functions/cloud_functions.dart' as _i2;
import 'package:file_picker/file_picker.dart' as _i8;
import 'package:firebase_storage/firebase_storage.dart' as _i3;
import 'package:logger/src/logger.dart' as _i9;
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

class _FakeFirebaseStorage_1 extends _i1.SmartFake
    implements _i3.FirebaseStorage {
  _FakeFirebaseStorage_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeFirebaseFirestore_2 extends _i1.SmartFake
    implements _i4.FirebaseFirestore {
  _FakeFirebaseFirestore_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [SessionRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockSessionRepository extends _i1.Mock implements _i5.SessionRepository {
  @override
  _i2.FirebaseFunctions get functions => (super.noSuchMethod(
        Invocation.getter(#functions),
        returnValue: _FakeFirebaseFunctions_0(
          this,
          Invocation.getter(#functions),
        ),
        returnValueForMissingStub: _FakeFirebaseFunctions_0(
          this,
          Invocation.getter(#functions),
        ),
      ) as _i2.FirebaseFunctions);
  @override
  String get routeFunctionsUrl => (super.noSuchMethod(
        Invocation.getter(#routeFunctionsUrl),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  _i3.FirebaseStorage get storage => (super.noSuchMethod(
        Invocation.getter(#storage),
        returnValue: _FakeFirebaseStorage_1(
          this,
          Invocation.getter(#storage),
        ),
        returnValueForMissingStub: _FakeFirebaseStorage_1(
          this,
          Invocation.getter(#storage),
        ),
      ) as _i3.FirebaseStorage);
  @override
  _i4.FirebaseFirestore get firestore => (super.noSuchMethod(
        Invocation.getter(#firestore),
        returnValue: _FakeFirebaseFirestore_2(
          this,
          Invocation.getter(#firestore),
        ),
        returnValueForMissingStub: _FakeFirebaseFirestore_2(
          this,
          Invocation.getter(#firestore),
        ),
      ) as _i4.FirebaseFirestore);
  @override
  _i6.Future<String> startSession({
    required _i7.Input? input,
    required int? numberOfCards,
    required String? sessionId,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #startSession,
          [],
          {
            #input: input,
            #numberOfCards: numberOfCards,
            #sessionId: sessionId,
          },
        ),
        returnValue: _i6.Future<String>.value(''),
        returnValueForMissingStub: _i6.Future<String>.value(''),
      ) as _i6.Future<String>);
  @override
  _i6.Future<void> uploadFile({
    required String? sessionId,
    required String? userId,
    required _i8.PlatformFile? file,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #uploadFile,
          [],
          {
            #sessionId: sessionId,
            #userId: userId,
            #file: file,
          },
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> deleteCard({
    required String? sessionId,
    required String? cardId,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteCard,
          [],
          {
            #sessionId: sessionId,
            #cardId: cardId,
          },
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> undoDeleteCard({
    required String? sessionId,
    required String? cardId,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #undoDeleteCard,
          [],
          {
            #sessionId: sessionId,
            #cardId: cardId,
          },
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> editAnswer({
    required String? sessionId,
    required String? cardId,
    required String? answer,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #editAnswer,
          [],
          {
            #sessionId: sessionId,
            #cardId: cardId,
            #answer: answer,
          },
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> editQuestion({
    required String? sessionId,
    required String? cardId,
    required String? question,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #editQuestion,
          [],
          {
            #sessionId: sessionId,
            #cardId: cardId,
            #question: question,
          },
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Stream<_i7.SessionDto?> streamSession(String? sessionId) =>
      (super.noSuchMethod(
        Invocation.method(
          #streamSession,
          [sessionId],
        ),
        returnValue: _i6.Stream<_i7.SessionDto?>.empty(),
        returnValueForMissingStub: _i6.Stream<_i7.SessionDto?>.empty(),
      ) as _i6.Stream<_i7.SessionDto?>);
}

/// A class which mocks [Logger].
///
/// See the documentation for Mockito's code generation for more information.
class MockLogger extends _i1.Mock implements _i9.Logger {
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
    _i9.Level? level,
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
