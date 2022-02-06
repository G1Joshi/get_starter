import 'package:get_storage/get_storage.dart';

class Storage {
  Storage._();

  static final _box = GetStorage();

  static void erase() => _box.erase();

  static void setApp(String app) => _box.write(StorageKeys.APP, app);

  static String getApp() => _box.read(StorageKeys.APP) ?? "";

  static bool isAppExists() => _box.read(StorageKeys.APP) != null;
}

class StorageKeys {
  StorageKeys._();

  static const APP = 'app';
}
