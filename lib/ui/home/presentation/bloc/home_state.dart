part of 'home_cubit.dart';

enum HomeStatus { initial, loading,loadingRefresh, success, failed }

class HomeState extends Equatable {
  const HomeState({this.message = '', this.status = HomeStatus.initial});

  final String message;

  final HomeStatus status;

  HomeState copyWith({HomeStatus? status, String? message}) {
    return HomeState(
        status: status ?? this.status, message: message ?? this.message);
  }

  @override
  List<Object> get props => [message, status];
}
