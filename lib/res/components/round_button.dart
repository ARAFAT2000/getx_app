import 'package:flutter/material.dart';
//jodi consytructor a value asign kre dei  ,tahle requred lagbe na
// like ase loading = false so,akhne required nai

class RoundButton extends StatelessWidget {
  const RoundButton({super.key,
    this.loading = false,
    required this.title,
     this.height=40,
    this.weight=100,
    required this.onPress,
    this.textcolor=Colors.cyan,
   this.buttonColor=Colors.deepPurple
  });

  final bool loading;
  final String title;
  final double height,weight;
  final VoidCallback onPress;
  final Color textcolor,buttonColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        width: weight,
        decoration: BoxDecoration(
          color: textcolor,
          borderRadius: BorderRadius.circular(15)
        ),
        child: loading? Center(child: CircularProgressIndicator(color: Colors.white,strokeWidth: 2,),):
        Center(child: Text(title,style:Theme.of(context).textTheme.titleSmall!.copyWith(color:Colors.white),),),
      ),
    );
  }
}
