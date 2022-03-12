// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: sort_constructors_first

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:longevity_app/features/splash/data/i_main_repository.dart';

part 'main_bloc.freezed.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final IMainRepository mainRepository;

  MainBloc({required this.mainRepository}) : super(const GetTicket()) {
    on<QueryTicketList>((event, emit) async {
      emit(const MainState.getTicket());
    });
  }
}

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.queryTicketList() = QueryTicketList;
}

@freezed
class MainState with _$MainState {
  const factory MainState.getTicket() = GetTicket;
}
