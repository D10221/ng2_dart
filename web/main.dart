import 'package:angular2/bootstrap.dart';
import 'components/whatTime.dart';

@Component(
    selector: 'my-app'
)
@View(
    templateUrl: 'main.html',
    directives: const [WhatTime]
)
class AppComponent {
  String name = 'My App';
}

main() {
  bootstrap(AppComponent);
}