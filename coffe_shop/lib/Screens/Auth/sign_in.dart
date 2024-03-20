import 'package:coffe_shop/Screens/Auth/sign_up.dart';
import 'package:coffe_shop/Screens/Home/home_screen.dart';
import 'package:coffe_shop/Services/db_service.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {

  //CONTROLLER
  final TextEditingController _emailController = TextEditingController();
  final FocusNode  _emailNode = FocusNode();
  final TextEditingController _passController = TextEditingController();
  final FocusNode  _passNode = FocusNode();

  //GLOBAL KEY
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  //CHECK CREDENTIAL
  void checkLoginCredential(BuildContext context) {
    
    if(_formKey.currentState!.validate()) {
      String enteredEmail = _emailController.text;
      String enteredPassword = _passController.text;

      // Check if the entered credentials match any user's credentials
      bool isValidUser = false;

      for(int i=0; i<userCredentialList.length; i++) {
        isValidUser = userCredentialList.any((value) => userCredentialList[i].email == enteredEmail && userCredentialList[i].password == enteredPassword);
        
      }

      if (isValidUser) {
        // If the user is valid, you can navigate to the next screen or perform other actions
        ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Login Successful', style: TextStyle(color: Colors.white),),
          duration: Duration(seconds: 2),
          backgroundColor: Color.fromRGBO(31, 185, 4, 1)
        ),
      );
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Home()));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Invalid email or password',style: TextStyle(color: Colors.white),),
          duration: Duration(seconds: 2),
          backgroundColor: Color.fromRGBO(192, 4, 4, 1),
        ),
      );
      }
    }
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
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Form(
              key: _formKey,
              child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
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
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.brown),
                          minimumSize: MaterialStatePropertyAll(Size(300, 50))),
                      onPressed: () {
                        checkLoginCredential(context);
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(fontSize: 28, color: Colors.white),
                      )),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.brown),
                          minimumSize: MaterialStatePropertyAll(Size(300, 50))),
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const SignUp()));
                      },
                      child: const Text(
                        "Register",
                        style: TextStyle(fontSize: 28, color: Colors.white),
                      )),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
