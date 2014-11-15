// Smooth Scroll
//
// Copyright (c) 2014 Honza Bittner
// Licensed under the MIT License.
// http://www.opensource.org/licenses/mit-license.php

part of smooth_scroll;

/// Create Smooth Scroll.
class SmoothScroll {

  /// Elements selector for scroll.
  final String selector;

  /// Duration of scroll.
  int duration;

  /// Difference to scroll.
  /// _CONSIDER for subtraction menu height._
  int diff;

  /// Sets animation style.
  Easing easing;

  /// Create Smooth Scroll for all elements from [selector].
  /// _Optional named parameters_:
  ///
  /// * [duration] - sets animation duration time
  /// * [diff] - sets difference to scroll. _CONSIDER for subtraction menu height._
  /// * [easing] - sets animation style. _**DO** import 'package:animation/animation.dart' show Easing;_
  SmoothScroll(this.selector, {this.duration: 1000, this.diff: 0, this.easing: Easing.QUADRATIC_EASY_IN_OUT}) {
    querySelectorAll(this.selector)..onClick.listen(_scroll);
  }

  /// **Scroll** to element position by [target anchor].
  void _scroll(MouseEvent e) {
    // Get anchor to scroll.
    String anchor = hash(e.target);

    // Get offset to scroll.
    int offset = querySelector(anchor).offsetTop;

    // Uses animate package for smooth scrolling.
    animate(querySelector('body'), duration: this.duration, easing: this.easing, properties: {
        // Sets end scrollTop position to offset plus difference.
        'scrollTop': offset + this.diff
    });

    // Disable anchor in URL.
    e.preventDefault();
  }

  /// Returns **hash part** of any [string] or convertible [value].
  String hash(link) => link.toString().substring(link.toString().indexOf("#"));
}