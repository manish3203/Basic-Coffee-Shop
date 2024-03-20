import 'package:coffe_shop/Model/class_model.dart';
import 'package:coffe_shop/Screens/Auth/sign_in.dart';
import 'package:coffe_shop/Services/db_service.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State createState() => _SignUpState();
}

class _SignUpState extends State {

  //CONTROLLERS
  final TextEditingController _nameController = TextEditingController();
  final _nameNode = FocusNode();
  final TextEditingController _emailController = TextEditingController();
  final _emailNode = FocusNode();
  final TextEditingController _passController = TextEditingController();
  final _passNode = FocusNode();
  final TextEditingController _cnfPassController = TextEditingController();
  final _cnfPassNode = FocusNode();


  //KEY
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  //REGISTER CREDENTIAL
  void registerCredential(BuildContext context) async{
    if(_nameController.text.isEmpty || _emailController.text.isEmpty || _passController.text.isEmpty) {
      _formKey.currentState!.validate();
    }else{
      insertCredential(
        UserCredential(
          name: _nameController.text.trim(), 
          email: _emailController.text.trim(), 
          password: _passController.text.trim()
        )
      );
      userCredentialList = await getUserCredential();
      print(userCredentialList);
    }
  }

  //REMOVE CONTROLLER
  void removeController() {
    _nameController.clear();
    _emailController.clear();
    _passController.clear();
    _cnfPassController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          opacity: 0.6,
          image: AssetImage(
            'assets/cofee.jpg',
          ), // Replace this with your image path
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Form(
              key: _formKey,
              child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: _nameController,
                  focusNode: _nameNode,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      hintText: "Enter Name",
                      suffixIcon: Icon(Icons.account_circle_rounded),
                      suffixIconColor: Color.fromARGB(255, 70, 56, 50),
                      enabled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide:
                              BorderSide(width: 1, color: Colors.brown)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide:
                              BorderSide(width: 1.5, color: Colors.brown))),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "*all fields are fill mandatory";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _emailController,
                  focusNode: _emailNode,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      hintText: "EmailAddress",
                      suffixIcon: Icon(Icons.email_rounded),
                      suffixIconColor: Color.fromARGB(255, 70, 56, 50),
                      enabled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide:
                              BorderSide(width: 1, color: Colors.brown)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide:
                              BorderSide(width: 1.5, color: Colors.brown))),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "*all fields are fill mandatory";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _passController,
                  focusNode: _passNode,
                  obscureText: true,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      hintText: "Password",
                      suffixIcon: Icon(Icons.password_rounded),
                      suffixIconColor: Color.fromARGB(255, 70, 56, 50),
                      enabled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide:
                              BorderSide(width: 1, color: Colors.brown)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide:
                              BorderSide(width: 1.5, color: Colors.brown))),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "*all fields are fill mandatory";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _cnfPassController,
                  focusNode: _cnfPassNode,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      hintText: "Confirm Password",
                      suffixIcon: Icon(Icons.password_rounded),
                      suffixIconColor: Color.fromARGB(255, 70, 56, 50),
                      enabled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide:
                              BorderSide(width: 1, color: Colors.brown)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide:
                              BorderSide(width: 1.5, color: Colors.brown))),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "*all fields are fill mandatory";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.brown),
                        minimumSize: MaterialStatePropertyAll(Size(300, 60))),
                    onPressed: () {
                      registerCredential(context);
                      removeController();
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginPage()));
                    },
                    child: const Text(
                      "Submit",
                      style: TextStyle(fontSize: 28, color: Colors.white),
                    )),
              ],
            ),
          ))
        ],
      ),
    ));
  }
}
