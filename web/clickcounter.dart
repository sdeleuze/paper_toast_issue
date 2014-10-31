import 'package:polymer/polymer.dart';
import 'dart:async';

/**
 * A Polymer click counter element.
 */
@CustomTag('click-counter')
class ClickCounter extends PolymerElement {
  @published int count = 0;

  ClickCounter.created() : super.created() {
  }

  void increment() {
    this.$['sendSnapStartToast'].show();
    new Timer(new Duration(milliseconds: 30), () => this.$['sendSnapCompletedToast'].show());
    count++;
  }
}

