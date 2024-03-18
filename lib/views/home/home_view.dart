import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/data/response/status.dart';
import 'package:getx_app/res/routes/routes_name.dart';
import 'package:getx_app/view_model/controller/home/home_view_model.dart';
import 'package:getx_app/view_model/controller/login/user_preference/user_preference_view_model.dart';


class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  UserPreference userPreference= UserPreference();

  final homeController= Get.put(HomeControll());
  @override
  void initState() {
    homeController.userListApi();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: (){
                userPreference.RemoveUser().then((value) {
               Get.toNamed(RoutesName.loginview);
                });
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Obx(() {
       switch(homeController.rxRequestStatus.value){

         case Status.Loading:
           return Center(child: CircularProgressIndicator(),);
         case Status.Waiting:
           return Center(child: Text('Loading'),);
         case Status.Complete:
           return ListView.builder(
             itemCount: homeController.userlist.value.data!.length,
               itemBuilder: (context,index){
               var calldata= homeController.userlist.value.data![index];
               return Card(
                 child: ListTile(
                   leading: CircleAvatar(
                     backgroundImage: NetworkImage(calldata.avatar.toString()),
                   ),
                   title: Text(calldata.firstName.toString()),
                   subtitle:Text(calldata.email.toString()) ,

                 ),
               );

               });
       }
       return SizedBox();
      }),
    );
  }
}
