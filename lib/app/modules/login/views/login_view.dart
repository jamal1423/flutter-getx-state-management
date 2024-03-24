// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  final controller =  Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginView', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 240, 120, 8),
      ),
      body: Container(
        margin: const EdgeInsets.all(0),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color.fromARGB(255, 245, 246, 248), Color.fromARGB(255, 179, 202, 248)],
        )),
        child: Form(
          key: controller.formKey,
          child: ListView(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 60.0, bottom: 0),
                child: Center(
                  child: SizedBox(
                    width: 200,
                    height: 80,
                    child: Icon(Icons.person_2_outlined, size: 50, color: Colors.black,),
                  ),
                ),
              ),
              // const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.center,
                child: const Text(
                  "Form Login",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    controller.inputEmployeeID(),
                    const SizedBox(height: 20.0),
                    controller.inputPassword(),
                    const SizedBox(height: 5.0),
                  ],
                )
              ),
              Container(
                padding: const EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 240, 120, 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: const BorderSide(color: Colors.white60),
                    ),
                    elevation: 10,
                    minimumSize: const Size(200, 58)
                  ),
                  onPressed: (){
                    controller.onLogin();
                  },
                  icon: const Icon(Icons.login_outlined, color: Colors.white,),
                  label: const Text(
                    "Masuk",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
