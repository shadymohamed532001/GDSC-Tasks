import 'package:flutter/material.dart';

import '../Widget/CustomButton.dart';
import '../Widget/CustomCliper.dart';
import '../Widget/CustomTextFiled.dart';
import 'LoginScrean.dart';

class RegisterScrean extends StatefulWidget {
  const RegisterScrean({Key? key}) : super(key: key);

  @override
  State<RegisterScrean> createState() => _RegisterScreanState();
}

class _RegisterScreanState extends State<RegisterScrean> {
  bool ispassowed = true;
  bool ispassowed2 = true;
  final GlobalKey<FormState> key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: key,
        child: ListView(
          children: [
            ClipPath(
              clipper: CustomCliper(),
              child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xFF4b46ff),
                      Color(0xFF6a66ff),
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
                height: 250,
                width: double.infinity,
                child: const Center(
                  child: Text(
                    'Register',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 33),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  CustomTextFiled(
                    validator: (value)
                    {
                      if(value!.isEmpty)
                        {
                          return 'Email is Empty' ;
                        }
                    },
                    obsecure: false,
                    Tittle: 'Email',
                    PrefixIcon: const Icon(Icons.email),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextFiled(
                    validator: (value)
                    {
                      if(value!.isEmpty)
                      {
                        return 'password is Empty' ;
                      }else if (value!.length < 5)
                        {
                          return 'Password is to short';
                        }
                    },
                    Tittle: 'Password',
                    PrefixIcon: const Icon(Icons.lock),
                    obsecure: ispassowed2,
                    SuffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          ispassowed2 = !ispassowed2;
                        });
                      },
                      icon: ispassowed2
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off_sharp),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextFiled(
                    validator: (value)
                    {
                      if(value!.isEmpty)
                      {
                        return 'password is Empty' ;
                      }else if (value!.length < 5)
                      {
                        return 'Password is to short' ;
                      }
                    },
                    Tittle: 'Confirm Password',
                    PrefixIcon: const Icon(Icons.lock),
                    obsecure: ispassowed,
                    SuffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          ispassowed = !ispassowed;
                        });
                      },
                      icon: ispassowed
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off_sharp),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextFiled(
                    validator: (value)
                    {
                      if(value!.isEmpty)
                      {
                        return 'name is Empty' ;
                      }
                    },
                    obsecure: false,
                    Tittle: 'Full Name',
                    PrefixIcon: const Icon(Icons.title),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextFiled(
                    validator: (value)
                    {
                      if(value!.isEmpty)
                      {
                        return 'phone is Empty' ;
                      }
                    },
                    obsecure: false,
                    Tittle: 'Phone',
                    PrefixIcon: const Icon(Icons.phone),
                    type: TextInputType.phone,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomButton(
                    ontap: ()
                    {
                      if(key.currentState!.validate())
                      {
                        Navigator.push(context,MaterialPageRoute(builder: (context)
                        {
                          return LoginScrean();
                        }));
                      }
                    },
                    Buttoncolor: const Color(0xff6a66ff),
                    text: 'Register',
                    textcolor: Colors.white,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomButton(

                    textcolor: Color(0xFF6a66ff),
                    text: 'Login',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

