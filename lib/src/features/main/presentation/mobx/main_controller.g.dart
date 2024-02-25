// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MainController on $MainController, Store {
  late final _$currentNavbarIndexAtom =
      Atom(name: '$MainController.currentNavbarIndex', context: context);

  @override
  int get currentNavbarIndex {
    _$currentNavbarIndexAtom.reportRead();
    return super.currentNavbarIndex;
  }

  @override
  set currentNavbarIndex(int value) {
    _$currentNavbarIndexAtom.reportWrite(value, super.currentNavbarIndex, () {
      super.currentNavbarIndex = value;
    });
  }

  late final _$$MainControllerActionController =
      ActionController(name: '$MainController', context: context);

  @override
  void handleChangeNavbar(int newIndex) {
    final _$actionInfo = _$$MainControllerActionController.startAction(
        name: '$MainController.handleChangeNavbar');
    try {
      return super.handleChangeNavbar(newIndex);
    } finally {
      _$$MainControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentNavbarIndex: ${currentNavbarIndex}
    ''';
  }
}
