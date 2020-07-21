import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
part 'taskstore.g.dart';

class TaskStore = _TaskStore with _$TaskStore;

abstract class _TaskStore with Store {
  int i = 0;

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
    entries.add(entries.length.toString());

    if (entries.length.isOdd)
      colorCodes.add(Color.fromRGBO(255, 127, 16, 1));
    else {
      colorCodes.add(Color.fromRGBO(255, 140, 0, 1));
    }
    print('click');
    print("Quantidade de Tarefas: " + (entries.length).toString());
    title.add('Tarefa: ' + entries.length.toString());
    date.add(DateTime.now().toLocal().hour.toString()+":"+DateTime.now().toLocal().minute.toString());
  }
}
