
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'splash_view_model.g.dart';
part 'splash_view_model.freezed.dart';


@freezed
class SplashViewDataModel with _$SplashViewDataModel {
  const factory SplashViewDataModel({
    @Default(0) int id
  }) = _SplashViewDataModel;
}

@riverpod
class SplashViewModel extends _$SplashViewModel {

  @override
  Future<SplashViewDataModel> build() async {
    return const SplashViewDataModel();
  }

  void doSomething(){

  }
}