import 'dart:math';
import 'package:expense_manager/screens/authentication/signup.dart';
import 'package:expense_manager/screens/home/views/home_screen.dart';
import 'package:expense_manager/screens/services/auth_services.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:firebase_auth/firebase_auth.dart';

// class LoginScreen extends StatelessWidget {
//   LoginScreen({super.key});


class LoginScreen extends StatefulWidget {

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  final _auth=AuthService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


   
   @override
  void dispose() {
  
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),


              const SizedBox(
                height: 32,
              ),
              SizedBox(
                width: double.infinity,
                height: kToolbarHeight,
                // child: TextButton(onPressed: (){
                //   Navigator.push(context, 
                //   MaterialPageRoute(builder: (context)=>const HomeScreen()));
                //   // await AuthService().signin(
                //   //   email: _emailController.text,
                //   //   password: _passwordController.text,
                //   //   context: context
                //   // );
                // },
                child:TextButton(onPressed: _login,
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                ),
                child:Container(
                  width: MediaQuery.of(context).size.width,
                  height:MediaQuery.of(context).size.width / 2,
                  
                    
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                      Theme.of(context).colorScheme.tertiary,
                      Theme.of(context).colorScheme.secondary,
                      Theme.of(context).colorScheme.primary,
                      ], transform: const GradientRotation(pi / 4)),
                      borderRadius: BorderRadius.circular(12),
                      ),
                      alignment: Alignment.center,
                      child: const Text('Login',
                      style: TextStyle(fontSize: 22,color: Colors.white),
                      )),

                )
              ),


            Padding(
              padding: const EdgeInsets.all(8.0),
            child:
             TextButton(
              onPressed: () {
                gotoSignup(context);
              },
              child: const Text("Don't have an account? Sign Up"),
            ),
            ),
          ],
        ),
      ),
    );
  }



  gotoSignup(BuildContext context) {
  Navigator.push(context, 
  MaterialPageRoute(builder: (context)=> const SignUpPage()));
}
  gotoHome(BuildContext context) {
  Navigator.push(context, 
  MaterialPageRoute(builder: (context)=> const HomeScreen()));
}

  _login()async{
  final user= await _auth.loginUserWithEmailAndPassword(_emailController.text, _passwordController.text);
  if(user !=null){
      print('User logged in');
      gotoHome(context);
        }
    }
}
