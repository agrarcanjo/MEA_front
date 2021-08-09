import 'package:mea/models/user_model.dart';

abstract class ILocalBackend {
  Future<UserModel> helloPathParam();
  Future<UserModel> helloQueryParam();
  Future<UserModel> helloTogetherParam();

  // Future<void> erro500();
  // Future<void> erro403();
  // Future<void> erro400();

}
