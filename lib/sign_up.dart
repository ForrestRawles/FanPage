import 'package:fan_page/auth_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    List images =[
      "g.png",
      "t.png",
      "f.png",
    ];

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(

      backgroundColor: Colors.white,
      body: Column(

        children: [
          /*Email*/
          Container(
              width: w,
              height: h*0.34,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "img/signup.png"
                    ),
                    fit: BoxFit.cover,
                  )
              ),
              child: Column(
                children: [
                  SizedBox(height: h*0.16),
                  const CircleAvatar(
                    backgroundColor: Colors.white60,
                    radius: 60,
                    backgroundImage: AssetImage(
                      "img/profile1.png"
                    ),
                  )
                ]
              )
          ),
          /*Password*/
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: w,
            child: Column(
              children: [
                const SizedBox(height: 40),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: const Offset(1,1),
                          color: Colors.grey.withOpacity(0.2),
                        ),
                      ]
                  ),

                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: "Email",
                        prefixIcon: const Icon(Icons.email, color:Colors.deepOrangeAccent),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              color:Colors.white,
                              width: 1.0
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              color:Colors.white,
                              width: 1.0
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: const Offset(1,1),
                          color: Colors.grey.withOpacity(0.2),
                        ),
                      ]
                  ),

                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: const Icon(Icons.password_outlined, color:Colors.deepOrangeAccent),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              color:Colors.white,
                              width: 1.0
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              color:Colors.white,
                              width: 1.0
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                  ),
                ),
                const SizedBox(height: 20),

              ],
            ),
          ),
          /*Sign Up Button*/
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              AuthController.instance.register(emailController.text.trim(), passwordController.text.trim());
            },
            child: Container(
              width: w*0.5,
              height: h*0.08,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                      image: AssetImage(
                          "img/loginbtn.png"
                      ),
                      fit: BoxFit.cover
                  )
              ),
              child: const Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          RichText(text: TextSpan(
            recognizer: TapGestureRecognizer()..onTap=()=>Get.back(),
            text: 'Have an account?',
            style: const TextStyle(
              fontSize: 20,
              color: Colors.grey,
            )
          )),
          SizedBox(height: w*0.09),
          RichText(text: const TextSpan(
              text: "Sign up using one of the following methods",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
          )),
          Wrap(
            children: List<Widget>.generate(3, (index) => Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                radius: 28,
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(
                    "img/"+images[index]
                  ),
                ),
              ),
            )),
          ),
        ],
      ),
    );
  }
}
