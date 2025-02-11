import 'package:injectable/injectable.dart';
import 'package:king/data/shared/shared_service.dart';

abstract class HomeRepository {
  int getData();
}

@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl extends HomeRepository {
  HomeRepositoryImpl({required this.shared});

  final SharedService shared;

  @override
  int getData() => shared.getValueInt("key");
}
