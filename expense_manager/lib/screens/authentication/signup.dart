
// import 'dart:math';
// // import 'package:expense_manager/screens/authentication/login_screen.dart';
// // import 'package:expense_manager/screens/services/auth_services.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class SignUpPage extends StatelessWidget {
//     SignUpPage ({super.key});


//     // final _auth=AuthServices();
//     final TextEditingController _usernameController=TextEditingController();
//     final TextEditingController _emailController=TextEditingController();
//     final TextEditingController _passwordController=TextEditingController();
//     // final TextEditingController _confirmPasswordController=TextEditingController();


   

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle:true,
//         title: const Text('Register Here'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             const SizedBox(height: 16.0),
//             TextField(
//               controller: _usernameController,
//               decoration: InputDecoration(
//                 labelText: 'Username',
//                 hintText: 'Enter your username',
//                 hintStyle: TextStyle(color: Colors.grey[500]),
//                 border: const OutlineInputBorder(),
//               ),
//               keyboardType: TextInputType.emailAddress,
//             ),
//             const SizedBox(height: 16.0),
//             TextField(
//               controller: _emailController,
//               decoration:  InputDecoration(
//                 labelText: 'Email',
//                 hintText: 'Enter your email',
//                 hintStyle: TextStyle(color: Colors.grey[500]),
//                 border: const OutlineInputBorder(),
//               ),
//               keyboardType: TextInputType.emailAddress,
//             ),
//             const SizedBox(height: 16.0),
//             TextField(
//               controller: _passwordController,
//               decoration: InputDecoration(
//                 labelText: 'Password',
//                 hintText: 'Enter your password',
//                 hintStyle: TextStyle(color: Colors.grey[500]),
//                 border: const OutlineInputBorder(),
//               ),
//               obscureText: true,
//             ),
//             // const SizedBox(height: 16.0),
//             // TextField(
//             //   controller: _confirmPasswordController,
//             //   decoration:  InputDecoration(
//             //     labelText: 'Confirm Password',
//             //     hintText: 'Confirm password',
//             //     hintStyle: TextStyle(color: Colors.grey[500]),
//             //     border: const OutlineInputBorder(),
//             //   ),
//             //   obscureText: true,
//             // ),

//             const SizedBox(
//                 height: 32,
//               ),
//               SizedBox(
//                 width: double.infinity,
//                 height: kToolbarHeight,
//                 child: TextButton(onPressed: (){
                   
//                 // Navigator.push(context,
//                 // MaterialPageRoute(builder: (context)=>LoginScreen()),
//                 // );
             
//                 },
//                 style: TextButton.styleFrom(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12)
//                   ),
//                 ),
//                 child:Container(
//                   width: MediaQuery.of(context).size.width,
//                   height:MediaQuery.of(context).size.width / 2,
                  
                    
//                     decoration: BoxDecoration(
//                       gradient: LinearGradient(colors: [
//                       Theme.of(context).colorScheme.tertiary,
//                       Theme.of(context).colorScheme.secondary,
//                       Theme.of(context).colorScheme.primary,
//                       ], transform: const GradientRotation(pi / 4)),
//                       borderRadius: BorderRadius.circular(12),
//                       ),
//                       alignment: Alignment.center,
//                       child: const Text('Register',
//                       style: TextStyle(fontSize: 22,color: Colors.white),
//                       )),

//                 )
//               ),

//               Padding(
//               padding: const EdgeInsets.all(8.0),
//             child:
//              TextButton(
//               onPressed: (){
//                 //  final user=await _auth.createUserWithEmailAndPassword(
//                 //   _emailController.text, 
//                 //   _passwordController.text);
               
//                 //   if(user !=null){
//                 //     print("User created successfully");
//                 //     // print("User created successfully");
//                 //       Navigator.push(
//                 //       context,
//                 //       MaterialPageRoute(builder: (context) => LoginScreen()),
//                 //   );
//                 //   }
//                 //   print('Added');
                 
               
//               },
//               child: const Text("Already have an account? Sign Up"),
//             ),
//           ),
//       // -------------------------------------------------------------------------------
//             // const SizedBox(height: 24.0),
//             // ElevatedButton(
//             //   onPressed: (){
//             //     Navigator.push(context,
//             //     MaterialPageRoute(builder: (context)=>LoginScreen()),
//             //     );
//             //   },
//             //   //  => _signUp(context),
//             //   child: const Text('Sign Up'),
//             // ),
//             // TextButton(
//             //   onPressed: () {
//             //     // Navigator.push(
//             //     //   context,
//             //     //   MaterialPageRoute(builder: (context) => LoginPage()),
//             //     // );
//             //   },
//             //   child: const Text("Already have an account? Login"),
//             // ),
//         // -------------------------------------------------------------------------------
//           ],
//         ),
//       ),
//     );
//   }
// }





// -----------------------------------------------------------------------------------------------stateless






// import 'package:bloc_authentication_flow/screens/home.dart';

import 'package:expense_manager/screens/authentication/login_screen.dart';
import 'package:expense_manager/screens/home/views/home_screen.dart';
// import 'package:expense_manager/screens/home/views/home_screen.dart';
import 'package:expense_manager/screens/services/auth_services.dart';
import 'package:flutter/material.dart';





class SignUpPage extends StatefulWidget {

  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

    final _auth=AuthService();

  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login to Your Account',
          style: TextStyle(
            color: Colors.deepPurple,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text('Username'),
            const SizedBox(height: 10),
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your Username',
              ),
            ),
            const SizedBox(height: 20),
            const Text('Email address'),
            const SizedBox(height: 10),
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your email',
              ),
            ),
            const SizedBox(height: 10),
            const Text('Password'),
            TextFormField(
              controller: _passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your password',
              ),
              obscureText: false,
            ),
          
           
            const SizedBox(height: 20),
            TextButton(onPressed:  _signup,
            child: const Text('Sign Up')),

            const SizedBox(height: 20),
            TextButton(onPressed: (){
              gotoLogin(context);
            }, 
            child: const Text('Already have an account?Login '))
          ],
        ),
      ),
    );
  }
  gotoLogin(BuildContext context) {
  Navigator.push(context, 
  MaterialPageRoute(builder: (context)=> const LoginScreen()));
}

gotoHome(BuildContext context) {
  Navigator.push(context, 
  MaterialPageRoute(builder: (context)=> const HomeScreen()));
}

_signup()async{
  final user= await _auth.createUserWithEmailAndPassword(_emailController.text, _passwordController.text);
  if(user !=null){
      print('User created');
      gotoHome(context);
        }
    }

}






