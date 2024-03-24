import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final formKey = GlobalKey<FormState>();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  Widget inputEmployeeID() {
    var txtEditEmployeeID = TextEditingController();
    return TextFormField(
        cursorColor: Colors.black,
        keyboardType: TextInputType.text,
        autofocus: false,
        validator: (String? arg) {
        if (arg == null || arg.isEmpty) {
          return 'EmployeeID harus diisi';
        } else {
          return null;
        }
      },
        controller: txtEditEmployeeID,
        onSaved: (String? val) {
          txtEditEmployeeID.text = val!;
        },
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: 'Masukkan EmployeeID',
          hintStyle: const TextStyle(color: Colors.black),
          labelText: "Masukkan EmployeeID",
          labelStyle: const TextStyle(color: Colors.black),
          prefixIcon: const Icon(
            Icons.person_outlined,
            color: Colors.black,
          ),
          fillColor: Colors.black,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: const BorderSide(
              color: Colors.black,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: const BorderSide(
              color: Colors.black,
              width: 2.0,
            ),
          ),
        ),
        style: const TextStyle(fontSize: 16.0, color: Colors.black));
  }

  Widget inputPassword() {
    var txtEditPwd = TextEditingController();
    return TextFormField(
      cursorColor: Colors.black,
      keyboardType: TextInputType.text,
      autofocus: false,
      obscureText: true, //make decript inputan
      validator: (String? arg) {
        if (arg == null || arg.isEmpty) {
          return 'Password harus diisi';
        } else {
          return null;
        }
      },
      controller: txtEditPwd,
      onSaved: (String? val) {
        txtEditPwd.text = val!;
      },
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: 'Masukkan Password',
        hintStyle: const TextStyle(color: Colors.black),
        labelText: "Masukkan Password",
        labelStyle: const TextStyle(color: Colors.black),
        prefixIcon: const Icon(
          Icons.lock_outline,
          color: Colors.black,
        ),
        fillColor: Colors.black,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            color: Colors.black,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            color: Colors.black,
            width: 2.0,
          ),
        ),
      ),
      style: const TextStyle(fontSize: 16.0, color: Colors.black),
    );
  }

  Future onLogin() async {
    if (formKey.currentState!.validate()) {
      //If all data are correct then save data to out variables
      formKey.currentState!.save();
      // doLogin(txtEditEmployeeID.text, txtEditPwd.text);
      return;
    }
  }
  
}
