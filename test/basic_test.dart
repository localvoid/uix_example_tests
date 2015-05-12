@TestOn('browser')

import 'dart:html' as html;
import 'package:test/test.dart';
import 'package:uix/uix.dart';

class Basic extends Component<String> {
  updateView() { updateRoot(vRoot()('Hello ${data}')); }
}

class ComponentWithEvents extends Component<String> {
  int _counter = 0;

  init() {
    element.onClick.listen(_handleClick);
  }

  void _handleClick(e) {
    _counter++;
    invalidate();
  }

  updateView() { updateRoot(vRoot()(_counter.toString())); }
}

void main() {
  initUix();

  group('Basic Component', () {
    test('Hello World', () async {
      final f = new html.DocumentFragment();
      injectComponent(new Basic()..data = 'World', f);
      await scheduler.nextFrame.after();
      expect(f.innerHtml, equals('<div>Hello World</div>'));
    });
  });

  group('Component with Events', () {
    test('Init', () async {
      final f = new html.DocumentFragment();
      injectComponent(new ComponentWithEvents(), f);
      await scheduler.nextFrame.after();
      expect(f.innerHtml, equals('<div>0</div>'));
    });

    test('Click', () async {
      final f = new html.DocumentFragment();
      final c = new ComponentWithEvents();
      await injectComponent(c, f);
      await scheduler.nextTick;
      c.element.click();
      await scheduler.nextFrame.after();
      expect(f.innerHtml, equals('<div>1</div>'));
    });
  });
}
