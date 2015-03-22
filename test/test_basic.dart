import 'dart:html' as html;
import 'package:unittest/unittest.dart';
import 'package:unittest/html_enhanced_config.dart';
import 'package:uix/uix.dart';
import 'package:uix_example_tests/components/basic.dart';

void main() {
  useHtmlEnhancedConfiguration();
  initUix();

  group('Basic Component', () {
    test('Hello World', () {
      final f = new html.DocumentFragment();
      injectComponent(createBasic('World'), f);
      expect(f.innerHtml, equals('<div>Hello World</div>'));
    });
  });

  group('Component with Events', () {
    test('Init', () {
      final f = new html.DocumentFragment();
      injectComponent(createComponentWithEvents(), f);
      expect(f.innerHtml, equals('<div>0</div>'));
    });

    test('Click', () async {
      final f = new html.DocumentFragment();
      final c = createComponentWithEvents();
      injectComponent(c, f);
      c.element.click();
      await scheduler.nextFrame.after();
      expect(f.innerHtml, equals('<div>1</div>'));
    });
  });
}