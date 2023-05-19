// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class AppEvent {
  const AppEvent();
}

class TriggerAppEvent extends AppEvent {
  final int index;
  TriggerAppEvent(this.index) : super();
}
