// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:king/data/shared/impl/shared_service_impl.dart' as _i780;
import 'package:king/data/shared/shared_service.dart' as _i852;
import 'package:king/di/injector_module.dart' as _i269;
import 'package:king/ui/home/domain/repository/home_repository.dart' as _i732;
import 'package:king/ui/home/presentation/bloc/home_cubit.dart' as _i483;
import 'package:king/utils/app_utils.dart' as _i462;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final serviceModule = _$ServiceModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => serviceModule.shared(),
      preResolve: true,
    );
    gh.factory<_i462.AppUtils>(() => _i462.AppUtils());
    gh.lazySingleton<_i852.SharedService>(
        () => _i780.SharedServiceImpl(gh<_i460.SharedPreferences>()));
    gh.lazySingleton<_i732.HomeRepository>(
        () => _i732.HomeRepositoryImpl(shared: gh<_i852.SharedService>()));
    gh.factory<_i483.HomeCubit>(
        () => _i483.HomeCubit(gh<_i732.HomeRepository>()));
    return this;
  }
}

class _$ServiceModule extends _i269.ServiceModule {}
