import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Mypage extends StatefulWidget {
  const Mypage({Key? key}) : super(key: key);

  @override
  State<Mypage> createState() => _MypageState();
}

class _MypageState extends State<Mypage> {
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding:const EdgeInsets.only(left: 30,right: 30),
        child: Column(
          children: [
            Center(
              child: Stack(
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: Image.network("https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg",
                    height: 500,
                    ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20,left: 25,right: 26),
                      child: Column(
                        children: [
                         const Center(
                            child: Text(
                              "home",
                              style: TextStyle(fontSize: 25),
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              suffixIcon: Icon(Icons.password_outlined),
                              prefixIcon: Icon(Icons.person),
                              hintText: "username"),
                            ),
                        ],
                        ),
                      )
                ],
              ),
            )
          ],
        ),


      ),
    );
    
  }
}