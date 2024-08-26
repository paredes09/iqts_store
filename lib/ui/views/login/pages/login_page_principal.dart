import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iqts_store/ui/views/login/components/credenciales_login.dart';

class LoginPrincipalPage extends GetView {
  const LoginPrincipalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(
      children: [
        Container(
          height: 170,
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60)),
            color: Colors.yellow,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, left: 20),
                width: 350,
                height: 50,
                child: const Text(
                  '¡Hola! Para continuar, inicie sesión con su cuenta de Google.',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              )
            ],
          ),
        ),
        Center(
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25)),
              color: Colors.white,
            ),
            margin:
                const EdgeInsets.only(top: 90, left: 25, right: 25, bottom: 25),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  margin: const EdgeInsets.only(top: 10),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/login.png'),
                        fit: BoxFit.contain),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Bienvenido a la aplicación de compras en línea.',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () async {
                    await signInWithGoogle();
                  },
                  child: Container(
                      width: double.infinity,
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.grey[200]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 45,
                            width: 45,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child: Image(
                                image: AssetImage('assets/google.png'),
                                height: 30,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text('Iniciar Sesión con Google',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400))
                        ],
                      )),
                ),
                const Spacer(),
                Text(
                  'Al iniciar sesión, acepta nuestros términos y condiciones y política de privacidad.',
                  style: TextStyle(fontSize: 12, color: Colors.grey[500]!),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        )
      ],
    )));
  }
}
