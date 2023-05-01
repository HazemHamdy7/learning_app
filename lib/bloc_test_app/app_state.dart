class AppState {
  int counter;
  AppState({required this.counter});
}

class IntiState extends AppState {
  IntiState() : super(counter: 0);
}
