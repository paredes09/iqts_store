import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController extends GetxController {
  // Variable reactiva para el usuario
  var user = Rxn<User>();
  var isLogged = false.obs;
  @override
  void onInit() {
    super.onInit();
    user.value = FirebaseAuth.instance.currentUser;
    if (user.value != null) {
    } else {
      user.value = null;
    }
  }

  Future<User?> signInWithGoogle() async {
    isLogged.value = true;
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      if (googleUser == null) {
        return null;
      } else {
        final GoogleSignInAuthentication googleAuth =
            await googleUser.authentication;
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        final UserCredential userCredential =
            await FirebaseAuth.instance.signInWithCredential(credential);

        user.value = userCredential.user;
        return userCredential.user;
      }
    } catch (e) {
      return null;
    } finally {
      isLogged.value = false;
    }
  }

  Future<void> signOutGoogle() async {
    await GoogleSignIn().signOut();
    await FirebaseAuth.instance.signOut();
    user.value = null;
    Get.offAllNamed('/home');
  }
}
