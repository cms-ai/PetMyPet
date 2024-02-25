// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on $HomeController, Store {
  late final _$currentTabHomeIndexAtom =
      Atom(name: '$HomeController.currentTabHomeIndex', context: context);

  @override
  int get currentTabHomeIndex {
    _$currentTabHomeIndexAtom.reportRead();
    return super.currentTabHomeIndex;
  }

  @override
  set currentTabHomeIndex(int value) {
    _$currentTabHomeIndexAtom.reportWrite(value, super.currentTabHomeIndex, () {
      super.currentTabHomeIndex = value;
    });
  }

  late final _$$HomeControllerActionController =
      ActionController(name: '$HomeController', context: context);

  @override
  void handleChangeTabHomeIndex(int newIndex) {
    final _$actionInfo = _$$HomeControllerActionController.startAction(
        name: '$HomeController.handleChangeTabHomeIndex');
    try {
      return super.handleChangeTabHomeIndex(newIndex);
    } finally {
      _$$HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentTabHomeIndex: ${currentTabHomeIndex}
    ''';
  }
}
