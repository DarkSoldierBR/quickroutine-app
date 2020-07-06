import 'package:mobx/mobx.dart';
part 'counter.g.dart';

class Counter = _Counter with _$Counter;

abstract class _Counter with Store {
  int i=0;

  @observable
  ObservableList<String> entries = ObservableList();

  @observable
  ObservableList<int> colorCodes = ObservableList();

  @observable
  ObservableList<String> title = ObservableList();

  @observable
  ObservableList<String> date = ObservableList();

  @action
  void increment() {
    i++;
    entries.add(i.toString());

    if (entries.length.isOdd)
      colorCodes.add(400);
    else {
      colorCodes.add(200);
    }
    print('click');
    title.add('Tarefa: '+i.toString());
    date.add('18:00');
  }
}
