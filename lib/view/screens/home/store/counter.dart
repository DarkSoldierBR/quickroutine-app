import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
part 'counter.g.dart';

class Counter = _Counter with _$Counter;

abstract class _Counter with Store {
  int i=0;

  @observable
  ObservableList<String> entries = ObservableList();

  @observable
  ObservableList<Color> colorCodes = ObservableList();

  @observable
  ObservableList<String> title = ObservableList();

  @observable
  ObservableList<String> date = ObservableList();

  @action
  void increment() {
    i++;
    entries.add(i.toString());

    if (entries.length.isOdd)
      colorCodes.add(Color.fromRGBO(255, 127, 16, 1));
    else {
      colorCodes.add(Color.fromRGBO(255, 140, 0, 1));
    }
    print('click');
    title.add('Tarefa: '+i.toString());
    date.add('18:00');
  }
}
