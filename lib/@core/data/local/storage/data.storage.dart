import 'package:get_storage/get_storage.dart';

class DataStorage {
  late GetStorage _storage;

  final _login = 'login';
  final _token = 'token';
  final _fbToken = 'fbToken';
  final _language = 'language';

  DataStorage() {
    _storage = GetStorage();
  }

  setLanguage(String value) async => await _storage.write(_language, value);

  getLanguage() => _storage.read(_language);

  setLogin(String value) async => await _storage.write(_login, value);

  getLogin() => _storage.read(_login);

  setToken(String? value) async => await _storage.write(_token, value);

  getToken() => _storage.read(_token);

  setFbToken(String value) async => await _storage.write(_fbToken, value);

  getFbToken() => _storage.read(_fbToken);
}
