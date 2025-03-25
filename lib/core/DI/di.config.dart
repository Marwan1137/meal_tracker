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
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../data/datasource/meal_datasource.dart' as _i582;
import '../../data/datasourceimpl/meal_datasource_impl.dart' as _i845;
import '../../data/repo_impl/meal_repo_impl.dart' as _i858;
import '../../domain/repo/meal_repo.dart' as _i823;
import '../../domain/usecases/add_meal_usecase.dart' as _i358;
import '../../domain/usecases/delete_meal_usecase.dart' as _i639;
import '../../domain/usecases/sort_meal_usecase.dart' as _i48;
import '../../domain/usecases/update_meal_usecase.dart' as _i400;
import '../../UI/cubit/cubit_meal.dart' as _i717;
import 'di.dart' as _i913;

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
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.factory<_i582.MealDatasource>(
        () => _i845.MealDatasourceImpl(gh<_i460.SharedPreferences>()));
    gh.factory<_i823.MealRepo>(
        () => _i858.MealRepoImpl(gh<_i582.MealDatasource>()));
    gh.factory<_i358.AddMealUsecase>(
        () => _i358.AddMealUsecase(gh<_i823.MealRepo>()));
    gh.factory<_i639.DeleteMealUsecase>(
        () => _i639.DeleteMealUsecase(gh<_i823.MealRepo>()));
    gh.factory<_i48.SortMealUsecase>(
        () => _i48.SortMealUsecase(gh<_i823.MealRepo>()));
    gh.factory<_i400.UpdateMealUsecase>(
        () => _i400.UpdateMealUsecase(gh<_i823.MealRepo>()));
    gh.factory<_i717.CubitMeal>(() => _i717.CubitMeal(
          gh<_i823.MealRepo>(),
          gh<_i358.AddMealUsecase>(),
          gh<_i639.DeleteMealUsecase>(),
          gh<_i48.SortMealUsecase>(),
          gh<_i400.UpdateMealUsecase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i913.RegisterModule {}
