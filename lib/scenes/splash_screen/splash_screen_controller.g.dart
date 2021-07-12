// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_screen_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SplashScreenController on _SplashScreenControllerBase, Store {
  Computed<bool>? _$permissionGrantedComputed;

  @override
  bool get permissionGranted => (_$permissionGrantedComputed ??= Computed<bool>(
          () => super.permissionGranted,
          name: '_SplashScreenControllerBase.permissionGranted'))
      .value;

  final _$loadingAtom = Atom(name: '_SplashScreenControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$errorMessageAtom =
      Atom(name: '_SplashScreenControllerBase.errorMessage');

  @override
  String get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  final _$serviceEnabledAtom =
      Atom(name: '_SplashScreenControllerBase.serviceEnabled');

  @override
  bool get serviceEnabled {
    _$serviceEnabledAtom.reportRead();
    return super.serviceEnabled;
  }

  @override
  set serviceEnabled(bool value) {
    _$serviceEnabledAtom.reportWrite(value, super.serviceEnabled, () {
      super.serviceEnabled = value;
    });
  }

  final _$permissionAtom = Atom(name: '_SplashScreenControllerBase.permission');

  @override
  LocationPermission get permission {
    _$permissionAtom.reportRead();
    return super.permission;
  }

  @override
  set permission(LocationPermission value) {
    _$permissionAtom.reportWrite(value, super.permission, () {
      super.permission = value;
    });
  }

  final _$checkInitialPermissionsAsyncAction =
      AsyncAction('_SplashScreenControllerBase.checkInitialPermissions');

  @override
  Future<void> checkInitialPermissions() {
    return _$checkInitialPermissionsAsyncAction
        .run(() => super.checkInitialPermissions());
  }

  final _$checkPermissionAsyncAction =
      AsyncAction('_SplashScreenControllerBase.checkPermission');

  @override
  Future<void> checkPermission() {
    return _$checkPermissionAsyncAction.run(() => super.checkPermission());
  }

  final _$checkServiceEnabledAsyncAction =
      AsyncAction('_SplashScreenControllerBase.checkServiceEnabled');

  @override
  Future<void> checkServiceEnabled() {
    return _$checkServiceEnabledAsyncAction
        .run(() => super.checkServiceEnabled());
  }

  final _$_SplashScreenControllerBaseActionController =
      ActionController(name: '_SplashScreenControllerBase');

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$_SplashScreenControllerBaseActionController
        .startAction(name: '_SplashScreenControllerBase.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$_SplashScreenControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setServiceEnabled(bool value) {
    final _$actionInfo = _$_SplashScreenControllerBaseActionController
        .startAction(name: '_SplashScreenControllerBase.setServiceEnabled');
    try {
      return super.setServiceEnabled(value);
    } finally {
      _$_SplashScreenControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPermission(LocationPermission value) {
    final _$actionInfo = _$_SplashScreenControllerBaseActionController
        .startAction(name: '_SplashScreenControllerBase.setPermission');
    try {
      return super.setPermission(value);
    } finally {
      _$_SplashScreenControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
errorMessage: ${errorMessage},
serviceEnabled: ${serviceEnabled},
permission: ${permission},
permissionGranted: ${permissionGranted}
    ''';
  }
}
