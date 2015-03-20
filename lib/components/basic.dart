library app.components.basic;

import 'package:uix/uix.dart';

part 'basic.g.dart';

@ComponentMeta()
class Basic extends Component<String> {
  build() => vRoot()('Hello ${data}');
}

@ComponentMeta()
class ComponentWithEvents extends Component<String> {
  int _counter = 0;

  init() {
    element.onClick.listen(_handleClick);
  }

  void _handleClick(e) {
    _counter++;
    invalidate();
  }

  build() => vRoot()(_counter.toString());
}
