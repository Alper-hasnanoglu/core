import 'package:flutter/material.dart';
import '../../allProjectClasses.dart';
import 'package:provider/provider.dart';
import '../../allProjectFunctions.dart';
import '../facilities/facilities_page.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;

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
    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      key: _formKey,
      child: ChangeNotifierProvider(
        create: (_) => LoginModel(),
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: Colors.white,
          body: ChangeNotifierProvider<LoginModel>(
            create: (_) => LoginModel(),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Column(
                        children: [
                          buildL(),
                          const Text(
                            'Welcome Again!',
                            style: TextStyle(
                              color: Color(0xFF742B83), // set the text color
                              fontSize: 35, // set the font size
                              fontWeight: FontWeight.bold, // set the font weight
                            ),
                            textAlign:
                                TextAlign.center, // set the text alignment
                          ),
                          const SizedBox(width: 30, height: 20),
                          const Text(
                            'We are happy to see you again!',
                            style: TextStyle(
                              color: Color(0xFFb8b8b8), // set the text color
                              fontSize: 15, // set the font size
                            ),
                            textAlign:
                                TextAlign.center, // set the text alignment
                          ),
                          const SizedBox(width: 30, height: 100),
                          Column(
                            children: [

                              email,
                              validation,
                            ],
                          ),
                          const SizedBox(width: 10, height: 50),
                          Column(
                            children: [
                              password,
                              TextFormField(
                                obscureText: _obscureText,
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.blue),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  suffixIcon: IconButton(
                                    icon: Icon(_obscureText
                                        ? Icons.visibility_off
                                        : Icons.visibility),
                                    onPressed: () {
                                      setState(() {
                                        _obscureText = !_obscureText;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            heightFactor: 02,
                            child: GestureDetector(
                              onTap: () {
                                // Do something when the text is clicked
                              },
                              child: const Text(
                                'Forgot Password?',
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          Material(
                            elevation: 5,
                            color: const Color(0xFFEF6922),
                            borderRadius: BorderRadius.circular(10),
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => FacilitiesList(),));
                              },
                              minWidth: 400,
                              height: 50,
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
