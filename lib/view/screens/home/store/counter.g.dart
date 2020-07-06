// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Counter on _Counter, Store {
  final _$entriesAtom = Atom(name: '_Counter.entries');

  @override
  ObservableList<String> get entries {
    _$entriesAtom.reportRead();
    return super.entries;
  }

  @override
  set entries(ObservableList<String> value) {
    _$entriesAtom.reportWrite(value, super.entries, () {
      super.entries = value;
    });
  }

  final _$colorCodesAtom = Atom(name: '_Counter.colorCodes');

  @override
  ObservableList<Color> get colorCodes {
    _$colorCodesAtom.reportRead();
    return super.colorCodes;
  }

  @override
  set colorCodes(ObservableList<Color> value) {
    _$colorCodesAtom.reportWrite(value, super.colorCodes, () {
      super.colorCodes = value;
    });
  }

  final _$titleAtom = Atom(name: '_Counter.title');

  @override
  ObservableList<String> get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(ObservableList<String> value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$dateAtom = Atom(name: '_Counter.date');

  @override
  ObservableList<String> get date {
    _$dateAtom.reportRead();
    return super.date;
  }

  @override
  set date(ObservableList<String> value) {
    _$dateAtom.reportWrite(value, super.date, () {
      super.date = value;
    });
  }

  final _$_CounterActionController = ActionController(name: '_Counter');

  @override
  void increment() {
    final _$actionInfo =
        _$_CounterActionController.startAction(name: '_Counter.increment');
    try {
      return super.increment();
    } finally {
      _$_CounterActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
entries: ${entries},
colorCodes: ${colorCodes},
title: ${title},
date: ${date}
    ''';
  }
}
