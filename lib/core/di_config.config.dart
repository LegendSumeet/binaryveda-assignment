// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:binaryveda/data/repositories/photo_repository.dart' as _i480;
import 'package:binaryveda/module/dio_module.dart' as _i382;
import 'package:binaryveda/presentation/cubit/dashboard_cubit.dart' as _i1038;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioModule = _$DioModule();
    gh.lazySingleton<_i361.Dio>(() => dioModule.provideDio());
    gh.factory<_i480.PhotoRepository>(
        () => _i480.PhotoRepository(gh<_i361.Dio>()));
    gh.factory<_i1038.DashboardCubit>(
        () => _i1038.DashboardCubit(gh<_i480.PhotoRepository>()));
    return this;
  }
}

class _$DioModule extends _i382.DioModule {}
