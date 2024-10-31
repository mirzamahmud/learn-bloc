import 'package:get_storage/get_storage.dart';

class LocalStorageService {
  // =========== Create a GetStorage instance ===========
  final GetStorage localStorage = GetStorage();

  // =========== Initialize the GetStorage instance ===========
  Future<void> init() async {
    await GetStorage.init();
  }

  // =========== Set data in storage ============
  Future<void> writeData(String key, dynamic value) async {
    await localStorage.write(key, value);
  }

  // =========== Get data from storage ===========
  dynamic readData(String key) {
    return localStorage.read(key);
  }

  // =========== Delete data from storage =========
  Future<void> deleteData(String key) async {
    await localStorage.remove(key);
  }
}
