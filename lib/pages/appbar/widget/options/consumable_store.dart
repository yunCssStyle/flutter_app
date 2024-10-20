import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class ConsumableStore {
  static const String _kStorageKey = 'consumables';
  static const FlutterSecureStorage _secureStorage = FlutterSecureStorage();

  static Future<void> save(String id) async {
    List<String> cached = await load();
    cached.add(id);
    await _secureStorage.write(key: _kStorageKey, value: cached.join(','));
  }

  static Future<void> consume(String id) async {
    List<String> cached = await load();
    cached.remove(id);
    await _secureStorage.write(key: _kStorageKey, value: cached.join(','));
  }

  static Future<List<String>> load() async {
    String? value = await _secureStorage.read(key: _kStorageKey);
    return value != null ? value.split(',') : <String>[];
  }
}
