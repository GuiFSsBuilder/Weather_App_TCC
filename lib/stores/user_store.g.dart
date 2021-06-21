// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserStore on _UserStoreBase, Store {
  final _$userCoordinatesAtom = Atom(name: '_UserStoreBase.userCoordinates');

  @override
  Coordinates get userCoordinates {
    _$userCoordinatesAtom.reportRead();
    return super.userCoordinates;
  }

  @override
  set userCoordinates(Coordinates value) {
    _$userCoordinatesAtom.reportWrite(value, super.userCoordinates, () {
      super.userCoordinates = value;
    });
  }

  final _$fetchUserCoordinatesAsyncAction =
      AsyncAction('_UserStoreBase.fetchUserCoordinates');

  @override
  Future<void> fetchUserCoordinates() {
    return _$fetchUserCoordinatesAsyncAction
        .run(() => super.fetchUserCoordinates());
  }

  @override
  String toString() {
    return '''
userCoordinates: ${userCoordinates}
    ''';
  }
}
