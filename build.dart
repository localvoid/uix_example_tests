library uix.build_file;

import 'package:uix/generator.dart';
import 'package:source_gen/source_gen.dart';

void main(List<String> args) {
  build(args, const [
    const ComponentGenerator()
  ], librarySearchPaths: ['lib/components']).then((msg) {
    print(msg);
  });
}
