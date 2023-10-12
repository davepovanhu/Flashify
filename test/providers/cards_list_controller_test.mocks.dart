// Mocks generated by Mockito 5.4.2 from annotations
// in ankigpt/test/providers/cards_list_controller_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;
import 'dart:ui' as _i8;

import 'package:flutter/animation.dart' as _i5;
import 'package:flutter/src/widgets/scroll_context.dart' as _i7;
import 'package:flutter/src/widgets/scroll_controller.dart' as _i3;
import 'package:flutter/src/widgets/scroll_physics.dart' as _i6;
import 'package:flutter/src/widgets/scroll_position.dart' as _i2;
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

class _FakeScrollPosition_0 extends _i1.SmartFake
    implements _i2.ScrollPosition {
  _FakeScrollPosition_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [ScrollController].
///
/// See the documentation for Mockito's code generation for more information.
class MockScrollController extends _i1.Mock implements _i3.ScrollController {
  @override
  bool get keepScrollOffset => (super.noSuchMethod(
        Invocation.getter(#keepScrollOffset),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  double get initialScrollOffset => (super.noSuchMethod(
        Invocation.getter(#initialScrollOffset),
        returnValue: 0.0,
        returnValueForMissingStub: 0.0,
      ) as double);

  @override
  Iterable<_i2.ScrollPosition> get positions => (super.noSuchMethod(
        Invocation.getter(#positions),
        returnValue: <_i2.ScrollPosition>[],
        returnValueForMissingStub: <_i2.ScrollPosition>[],
      ) as Iterable<_i2.ScrollPosition>);

  @override
  bool get hasClients => (super.noSuchMethod(
        Invocation.getter(#hasClients),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  _i2.ScrollPosition get position => (super.noSuchMethod(
        Invocation.getter(#position),
        returnValue: _FakeScrollPosition_0(
          this,
          Invocation.getter(#position),
        ),
        returnValueForMissingStub: _FakeScrollPosition_0(
          this,
          Invocation.getter(#position),
        ),
      ) as _i2.ScrollPosition);

  @override
  double get offset => (super.noSuchMethod(
        Invocation.getter(#offset),
        returnValue: 0.0,
        returnValueForMissingStub: 0.0,
      ) as double);

  @override
  bool get hasListeners => (super.noSuchMethod(
        Invocation.getter(#hasListeners),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  _i4.Future<void> animateTo(
    double? offset, {
    required Duration? duration,
    required _i5.Curve? curve,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #animateTo,
          [offset],
          {
            #duration: duration,
            #curve: curve,
          },
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);

  @override
  void jumpTo(double? value) => super.noSuchMethod(
        Invocation.method(
          #jumpTo,
          [value],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void attach(_i2.ScrollPosition? position) => super.noSuchMethod(
        Invocation.method(
          #attach,
          [position],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void detach(_i2.ScrollPosition? position) => super.noSuchMethod(
        Invocation.method(
          #detach,
          [position],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i2.ScrollPosition createScrollPosition(
    _i6.ScrollPhysics? physics,
    _i7.ScrollContext? context,
    _i2.ScrollPosition? oldPosition,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #createScrollPosition,
          [
            physics,
            context,
            oldPosition,
          ],
        ),
        returnValue: _FakeScrollPosition_0(
          this,
          Invocation.method(
            #createScrollPosition,
            [
              physics,
              context,
              oldPosition,
            ],
          ),
        ),
        returnValueForMissingStub: _FakeScrollPosition_0(
          this,
          Invocation.method(
            #createScrollPosition,
            [
              physics,
              context,
              oldPosition,
            ],
          ),
        ),
      ) as _i2.ScrollPosition);

  @override
  void debugFillDescription(List<String>? description) => super.noSuchMethod(
        Invocation.method(
          #debugFillDescription,
          [description],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void addListener(_i8.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void removeListener(_i8.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #removeListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void notifyListeners() => super.noSuchMethod(
        Invocation.method(
          #notifyListeners,
          [],
        ),
        returnValueForMissingStub: null,
      );
}
