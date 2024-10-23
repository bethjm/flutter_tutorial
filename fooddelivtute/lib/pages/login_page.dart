import 'package:flutter/material.dart';
import '../components/my_textfield.dart';
import '../components/my_button.dart';


class LoginPage extends StatelessWidget {

    //text editing controller
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();


    LoginPage({super.key});
    

    @override
    Widget build(BuildContext context){
        return Scaffold(
            backgroundColor: Theme.of(context).colorScheme.background,
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        //logo
                        Icon(Icons.lock_open_rounded,
                        size: 100,
                        color: Theme.of(context).colorScheme.inversePrimary,
                        ), //Icon

                        const SizedBox(height: 25),
                        
                        //message, app, slogan
                        Text("Food Delivery App",
                        style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).colorScheme.inversePrimary,
                        ), //TextStyle
                        ), //Text

                        const SizedBox(height: 25),

                        //email textfield
                        MyTextField(
                            controller: emailController,
                            hintText: "Email",
                            obscureText: false,
                        ), //MyTextField

                        const SizedBox(height: 10),
                        MyTextField(
                            controller: passwordController,
                            hintText: "Password",
                            obscureText: true,
                        ), //MyTextField

                        //sign in button
                        MyButton(
                            text: "Sign In",
                            onTap: () {},
                        ) //MyButton

                        const SizedBox(height: 25),
                        //not a member? register now

                    ],
                ) //Column
            ), //Center
        ); //Scaffold
    }
}