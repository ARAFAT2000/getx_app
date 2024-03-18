import 'package:flutter/material.dart';
import 'package:get/get.dart';


class InternetExceptionWidget extends StatefulWidget {
  final VoidCallback onPress;
  const InternetExceptionWidget({super.key,required this.onPress});

  @override
  State<InternetExceptionWidget> createState() => _InternetExceptionWidgetState();
}

class _InternetExceptionWidgetState extends State<InternetExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    final height= MediaQuery.of(context).size.height;
    return Padding(
        padding: EdgeInsets.only(left: 150),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        
        Icon(Icons.cloud_off,size: 50,color: Colors.red,),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Text('Internet_exception'.tr),
        ),
        SizedBox(height: height*0.10,),
        InkWell(
          onTap: widget.onPress,
          child: Container(
            height:30,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(15)
            ),
            child: Center(child: Text('Retry',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(color:Colors.white),)),
          ),
        )
      ],
    ),
    );
  }
}
