import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_gdsc/shared/Cubite/Cubite.dart';
import 'package:task_gdsc/shared/Cubite/States.dart';


import '../shared/Widget/CustomButton.dart';
import '../shared/Widget/CustomCliper.dart';
import '../shared/Widget/CustomTextFiled.dart';
import 'LoginScrean.dart';

class RegisterScrean extends StatelessWidget {
   RegisterScrean({Key? key}) : super(key: key);

  final GlobalKey<FormState> Key_1 = GlobalKey();
   final GlobalKey<FormState> Key_2 = GlobalKey();

   @override
  Widget build(BuildContext context) {
      return BlocBuilder<AppCubit,AppStates>(
        builder: (context,state)
        {
          AppCubit cubit = BlocProvider.of(context) ;
          return Scaffold(
            body: ListView(
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
                      Form(
                        key: Key_1,
                        child: CustomTextFiled(
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
                          obsecure: cubit.IsPassword,
                          SuffixIcon: IconButton(
                            onPressed: () {
                              cubit.ChangeLoginPasswordVisible();
                            },
                            icon: cubit.IsPassword
                                ?  const Icon(Icons.visibility_off_sharp)
                                : const Icon(Icons.visibility),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Form(
                        key: Key_2,
                        child: CustomTextFiled(
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
                          obsecure: cubit.IsPassword2,
                          SuffixIcon: IconButton(
                            onPressed: () {
                              cubit.ChangeLoginComfirmPasswordVisible();
                            },
                            icon: cubit.IsPassword2
                                ?  const Icon(Icons.visibility_off_sharp)
                                : const Icon(Icons.visibility),
                          ),
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
                          if(Key_1.currentState!.validate()&Key_2.currentState!.validate())
                          {
                            Navigator.push(context,MaterialPageRoute(builder: (context)
                            {
                              return const LoginScrean();
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

                        textcolor: const Color(0xFF6a66ff),
                        text: 'Login',
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
    );
  }
}


