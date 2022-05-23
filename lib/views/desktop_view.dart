import 'package:bankly_app/commons/decorations.dart';
import 'package:bankly_app/commons/palette.dart';
import 'package:bankly_app/view-model/desktop_view_model.dart';
import 'package:bankly_app/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {

  final _formKey = GlobalKey<FormState>();

  late TextEditingController _firstNameController;
  late TextEditingController _lastNameController;
  late TextEditingController  _emailController;
  late TextEditingController _passwordController;


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
      body: ViewModelBuilder<DesktopViewModel>.reactive(
          viewModelBuilder: () => DesktopViewModel(),
          builder: (_, model, __) => Container(
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.all(45),
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/png/bg-intro-desktop.png'),
                  fit: BoxFit.cover,
                ),
                color: Palette.red
            ),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Learn to code by \nwatching others',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 40,
                                color: Colors.white
                            ),
                          ),
                          SizedBox(height: 20,),
                          Text(
                            'See how experienced developer solve problems in real-time. \nWatching scripted tutorials is great, but understanding how \ndevelops think is invaluable.',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
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
                                      text: 'then \$20/mo. thereafter',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300,
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
                          margin: const EdgeInsets.only(top: 10,),
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
                                    suffixIcon: model.firstNameSuffix ? Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SvgPicture.asset("assets/svg/icon-error.svg",),
                                    ) : null,
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
                                    model.showFirstNameSuffixIcon(value!.isEmpty);
                                    if(value.isEmpty){
                                      return "First name field cannot be empty";
                                    }
                                    return null;
                                  },
                                ),
                                SizedBox(height: 10,),
                                TextFormField(
                                  controller: _lastNameController,
                                  decoration: InputDecoration(
                                    hintText: "Last Name",
                                    hintStyle: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey
                                    ),
                                    suffixIcon: model.lastNameSuffix ? Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SvgPicture.asset("assets/svg/icon-error.svg",),
                                    ) : null,
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
                                    model.showLastNameSuffixIcon(value!.isEmpty);
                                    if(value.isEmpty){
                                      return "Last name field cannot be empty";
                                    }
                                    return null;
                                  },
                                ),
                                SizedBox(height: 10,),
                                TextFormField(
                                  controller: _emailController,
                                  decoration: InputDecoration(
                                    hintText: "Email Address",
                                    hintStyle: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey
                                    ),
                                    suffixIcon: model.emailSuffix ? Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SvgPicture.asset("assets/svg/icon-error.svg",),
                                    ) : null,
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
                                    model.showEmailSuffixIcon(!model.isValidEmail(value!));
                                    if(!model.isValidEmail(value)){

                                      return "Looks like this is not an email";
                                    }
                                    return null;
                                  },
                                ),
                                SizedBox(height: 10,),
                                TextFormField(
                                  controller: _passwordController,
                                  decoration: InputDecoration(
                                    hintText: "Password",
                                    hintStyle: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey
                                    ),
                                    suffixIcon: model.passwordSuffix ? Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SvgPicture.asset("assets/svg/icon-error.svg",),
                                    ) : null,
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
                                    model.showPasswordSuffixIcon(value!.isEmpty);
                                    if(value.isEmpty){

                                      return "Password field cannot be empty";
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 10,),
                                CustomButton(
                                  onTap: (){
                                    if(_formKey.currentState!.validate()){
                                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Success')));
                                    }
                                  },
                                ),
                                const Text.rich(
                                  TextSpan(
                                      text: 'By clicking the button you are agreeing to our',
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
                )
              ],
            ),
          ),
      ),
    );
  }
}
