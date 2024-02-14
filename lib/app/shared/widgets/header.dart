import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width:128,
                        height:30,
                        child: Image.asset('assets/images/ig_dropdown.png')),
                        SizedBox(width: 114,),
                        Container(width:24,height:24,child:Image.asset('assets/images/ig_favo.png')),
                        SizedBox(width:24,),
                        Container(width:24,height:24,child:Image.asset('assets/images/ig_msg.png')),
                        SizedBox(width:24,),
                        Container(width:24,height:24,child:Image.asset('assets/images/ig_post.png'))
                  
                  
                  ],);
  }
}