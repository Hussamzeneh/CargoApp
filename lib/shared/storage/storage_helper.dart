import 'package:bloceproject/models/user_model.dart';
import 'package:get_storage/get_storage.dart';

abstract class StorageHelper {
  static late GetStorage _storage;

  static init() async {
    await GetStorage.init();
    _storage = GetStorage();
  }

  static storeUser(UserModel user) {
    _storage.write('id', user.id);
    _storage.write('email', user.email);
    _storage.write('phone', user.phone);
    _storage.write('token', user.token);
  }

  static String? getUserToken() {
    return _storage.read('token');
  }
}
