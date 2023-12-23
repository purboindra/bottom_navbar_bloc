part of 'main_bloc.dart';

sealed class MainState extends Equatable {
  const MainState(this.tabIndex);

  final int tabIndex;

  @override
  List<Object> get props => [tabIndex];
}

final class MainInitial extends MainState {
  const MainInitial(super.tabIndex);
}
