import 'package:recipe2/core/Secure_login/secure_storage.dart';
import 'package:recipe2/core/client.dart';

class AuthRepository{
  final ApiClient client;
  AuthRepository({required this.client});

  String? jwt;

  Future<bool>login(String login,String password)async{
    jwt=await client.login(login, password);
    await SecureStorage.deleteCredentials();
    await SecureStorage.deleteToken();
    await SecureStorage.saveCredentials(login, password);
    await SecureStorage.saveToken(jwt!);
    return true;
  }

  Future<void>logout()async{
    await SecureStorage.deleteCredentials();
    await SecureStorage.deleteToken();
  }

  Future<bool>refreshToken()async{
    var credentials=await SecureStorage.getCredentials();
    if (credentials['login']==null||credentials['password']==null){
      return false;
    }
    jwt = await client.login(credentials['login']!, credentials['password']!);
    await SecureStorage.deleteToken();
    SecureStorage.saveToken(jwt!);
    return true;
  }





}