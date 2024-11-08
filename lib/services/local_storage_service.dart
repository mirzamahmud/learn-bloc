import 'package:get_storage/get_storage.dart';

class LocalStorageService{
  /// =============== instance of the singleton
  static final LocalStorageService _instance = LocalStorageService._getInstance();
  /// =============== instance of GetStorage
  late GetStorage _storage;

  /// =============== private constructor for the singleton
  LocalStorageService._getInstance(){
    _storage = GetStorage();
  }

  /// =============== factory constructor to return the instance
  factory LocalStorageService(){
    return _instance;
  }

  // ================ method to initialize GetStorage
  static Future<void> init() async {
    await GetStorage.init();
  }

  // ================ set data in storage
  Future<void> writeData(String key, dynamic value) async {
    await _storage.write(key, value);
  }

  // ================ get data from storage
  dynamic readData(String key) {
    return _storage.read(key);
  }

  // ================ delete data from storage
  Future<void> deleteData(String key) async {
    await _storage.remove(key);
  }
}