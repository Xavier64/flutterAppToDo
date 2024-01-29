import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: tdGrey,
      appBar: _buildAppBar(),
      body:Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children:[
          searchBox(),
          ],
        ),
      ),
    );
  }

Widget searchBox() {
return Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration:BoxDecoration(
              color: tdWhite,
              borderRadius: BorderRadius.circular(20)
                ),
                 child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(0),
                    prefixIcon: Icon(Icons.search,
                     color: tdBlack,
                     size: 20,
                     ),
                     prefixIconConstraints: BoxConstraints(
                       minWidth: 20,
                       maxHeight: 25,
                     ),
                     border: InputBorder.none,
                     hintText: 'Search',
                     hintStyle: TextStyle(
                       color: tdBlack,
                       fontSize: 14,
                       fontWeight: FontWeight.w400,
                     ),
                  ),
                 ),
               );  
}

  AppBar _buildAppBar() {
    return AppBar(
     backgroundColor: tdGrey,
     elevation: 0,
     title: Row(
      mainAxisAlignment:MainAxisAlignment.spaceBetween,
      children: [
      Icon(Icons.menu,
      color:tdBlack,
      size: 30,
      ),
      Container(
        height: 40,
        width: 40,
        child:ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset('assets/images/avatar2.jpg'),
        ),
      )
     ]),
    );
  }
}