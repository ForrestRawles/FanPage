import 'package:fan_page/auth_controller.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  String email;
  WelcomePage({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(

        children: [
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
          const SizedBox(height: 40),

          const Text(
            "Welcome",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color:Colors.black54,
            ),
          ),
          const SizedBox(height: 40),
          Text(
            email,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          GestureDetector(
            onTap: () {
              AuthController.instance.logout();
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
                  "Sign Out",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
