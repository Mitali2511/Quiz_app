import 'package:flutter/material.dart';
import 'package:flutter_application_4/view/quiz_screen.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obsecure = true;
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  void login() {
    if (username.text == "mitali" && password.text == '123') {
      print('Login Successful!');
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => QuizScreen(),
          ));
    } else {
      if(username.text.isEmpty||password.text.isEmpty)
       Fluttertoast.showToast(
                                  msg: "Please enter your details first",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity. BOTTOM,
                                  timeInSecForIosWeb: 1,
                                  fontSize: 16.0);
                                  else{
                                     Fluttertoast.showToast(
                                  msg: "Wrong username or password",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity. BOTTOM,
                                  timeInSecForIosWeb: 1,
                                  fontSize: 16.0);
                                  }
      print('Login Failed');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(alignment: Alignment.center,
        
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background2.jpg'),
                  fit: BoxFit.cover,
                  alignment: Alignment.center)),
          child: Padding(
            padding: EdgeInsets.all(30),
              child:
                Container(
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(30)),
                    height: 400,
                    width: 500,
                    
                    padding: EdgeInsets.all(18),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text("Login", style: TextStyle(fontSize: 30)),
                        const SizedBox(
                          height: 40,
                        ),
                        TextField(
                          controller: username,
                          decoration: InputDecoration(
                            hintText: "Username",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              suffixIcon: Icon(Icons.person)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          obscureText: obsecure,
                          controller: password,
                          decoration: InputDecoration(
                            hintText: "Password",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      obsecure = !obsecure;
                                    });
                                  },
                                  child: obsecure
                                      ? Icon(Icons.remove_red_eye)
                                      : Icon(Icons.visibility_off))),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 100,
                            child: ElevatedButton(
                                onPressed: login,
                                child: const Text(
                                  "Submit",
                                  style: TextStyle(fontSize: 20),
                                )))
                      ],
                    ))
              
          
          )),
      //
    );
  }
}
