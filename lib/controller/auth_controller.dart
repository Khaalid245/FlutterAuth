import 'package:authinaction/services/auth_service.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class AuthController extends GetxController {
  final FirebaseAuthService _authService = FirebaseAuthService();

  // Corrected signUp method with named parameters email and password
  Future<void> signUp({
    required String email,
    required String password,
  }) async {
    await _authService.createUserWithEmailAndPassword(
      email: email, 
      password: password,
    );
  }

// ignore: non_constant_identifier_names
Future<void> SignIn({
    required String email,
    required String password,
  }) async {
    await _authService.signInWithEmailAndPassword(
      email: email, 
      password: password,
    );
  }
  
  // ignore: non_constant_identifier_names
  Future<void> SignOut() async {
    await _authService.signOut();
  }
}
