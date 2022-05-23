import 'package:bankly_app/commons/decorations.dart';
import 'package:bankly_app/commons/palette.dart';
import 'package:bankly_app/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class MobileView extends StatefulWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {

  final _formKey = GlobalKey<FormState>();

  late TextEditingController _firstNameController;
  late TextEditingController _lastNameController;
  late TextEditingController  _emailController;
  late TextEditingController _passwordController;


  bool isValidEmail(String email) {
    return RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(email);
  }

  @override
  void initState() {
    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/png/bg-intro-mobile.png'),
            fit: BoxFit.cover,
          ),
          color: Palette.red,
        ),
        child: SingleChildScrollView(
          child: Column(
            children:  [
              const SizedBox(height: 45,),
              const Text(
                'Learn to code \nby watching others',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Colors.white
                ),
              ),
              const SizedBox(height: 20,),
              const Text(
                'See how experienced developer solve problems in real-time. Watching scripted tutorials is great, but understanding how develops think is invaluable.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                width: double.maxFinite,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                decoration: BoxDecoration(
                  color: Palette.blue,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    Decorations.elevation4
                  ]
                ),
                child: const Center(
                  child: Text.rich(
                    TextSpan(
                        text: 'Try it free 7 days ',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                        children: [
                          TextSpan(
                            text: 'then \n\$20/mo. thereafter',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ]),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

              Container(
                width: double.maxFinite,
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.only(top: 20, bottom: 50),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      Decorations.elevation4
                    ]
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _firstNameController,
                        decoration: InputDecoration(
                          hintText: "First Name",
                          hintStyle: const TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.grey
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (String? value){
                          if(value!.isEmpty){
                            return "First name field can not be empty";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 15,),
                      TextFormField(
                        controller: _lastNameController,
                        decoration: InputDecoration(
                          hintText: "Last Name",
                          hintStyle: const TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.grey
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (String? value){
                          if(value!.isEmpty){
                            return "Last name field can not be empty";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 15,),
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          hintText: "Email Address",
                          hintStyle: const TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.grey
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (String? value){
                          if(!isValidEmail(value!)){
                            return "Looks like this is not an email";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 15,),
                      TextFormField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: const TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.grey
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (String? value){
                          if(value!.isEmpty){
                            return "Password field cannot be empty";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 15,),
                      CustomButton(
                        onTap: (){
                          if(_formKey.currentState!.validate()){
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Success')));
                          }
                        },
                      ),
                      const Text.rich(
                        TextSpan(
                            text: 'By clicking the button you are agreeing to \nour',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                            children: [
                              TextSpan(
                                text: ' Terms and Services.',
                                style: TextStyle(
                                  color: Color(0xffFF7A7A),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                ),
                              ),
                            ]),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}


