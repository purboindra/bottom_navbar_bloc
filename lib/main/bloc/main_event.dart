part of 'main_bloc.dart';

sealed class MainEvent extends Equatable {
  const MainEvent(this.tabIndex);

  final int tabIndex;

  @override
  List<Object> get props => [tabIndex];
}

final class ChangeTabEvent extends MainEvent {
  const ChangeTabEvent(super.tabIndex);
}
