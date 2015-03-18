library app.components.basic;

import 'package:uix/uix.dart';

part 'basic.g.dart';

@ComponentMeta()
class Basic extends Component<String> {
  build() => vRoot()('Hello ${data}');
}
