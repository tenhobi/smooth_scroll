# smooth_scroll

A Dart library for smooth scroll effect on a web page.

## Usage

A simple usage example:

```dart
import 'dart:html';
import 'package:smooth_scroll/smooth_scroll.dart';

  main() {
    new SmoothScroll('.button');
  }
```

More advanced solution:

```dart
import 'dart:html';
import 'package:smooth_scroll/smooth_scroll.dart';

  main() {
    new SmoothScroll('.button', duration: 1500, diff: -50);
  }
```

Solution with animation library for change animation style:

```dart
import 'dart:html';
import 'package:smooth_scroll/smooth_scroll.dart';

  main() {
    new SmoothScroll('.button', duration: 2000, easing: Easing.Easing.CUBIC_EASY_IN_OUT);
  }
```

## Features

* Simple and quick smooth scroll via the `SmoothScroll()` object.
* Fully configurable.

## License
This library is licensed under MIT.