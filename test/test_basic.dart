import 'dart:html' as html;
import 'package:unittest/unittest.dart';
import 'package:unittest/html_enhanced_config.dart';
import 'package:uix/uix.dart';
import 'package:uix_example_tests/components/basic.dart';

void main() {
  useHtmlEnhancedConfiguration();

  group('Basic Component', () {
    test('Hello World', () {
      final c = new html.DocumentFragment();
      injectComponent(createBasic('World'), c);
      expect(c.innerHtml, equals('<div>Hello World</div>'));
    });
  });
}