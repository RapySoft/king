import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:king/ui/home/domain/repository/home_repository.dart';

part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._repository) : super(const HomeState());

  final HomeRepository _repository;

/*Future<void> getData(bool showRefreshIndicator) async {
    await Future.delayed(const Duration(milliseconds: 1));

    final status = showRefreshIndicator
        ? BaseStatus.loadingRefresh
        : BaseStatus.loading;

    emit(BaseState(status: status, message: S.current.savingInformation));

    final response = await _repository.getData();

    if (response.status ?? false) {
      emit(BaseState(
          status: BaseStatus.success,
          message: response.message ?? S.current.savedInformation));
    } else {
      emit(BaseState(
          status: BaseStatus.failed,
          message: response.message ?? S.current.noResponseFromServer));
    }
  }

  Future<void> getDataCopy(bool showRefreshIndicator) async {
    await Future.delayed(const Duration(milliseconds: 1));

    final status = showRefreshIndicator
        ? BaseStatus.loadingRefresh
        : BaseStatus.loading;

    emit(state.copyWith(
        status: status, message: S.current.loadingInformation));

    final response = await _repository.getData();

    if (response.status ?? false) {
      emit(state.copyWith(
          status: BaseStatus.success,
          message: response.message ?? S.current.uploadedInformation));
    } else {
      emit(state.copyWith(
          status: BaseStatus.failed,
          message: response.message ?? S.current.noResponseFromServer));
    }
  }*/
}
