//import 'package:demo/screens/home_page/bloc/home_bloc_bloc.dart';
import 'package:flutter/material.dart';
//import 'package:bloc/bloc.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MyDetailScreen extends StatefulWidget {
  const MyDetailScreen({super.key});

  @override
  State<MyDetailScreen> createState() => _MyDetailScreenState();
}

class _MyDetailScreenState extends State<MyDetailScreen> {
  // @override
  // void initState() {
  //   homeBloc.add(HomeFetchEvent());
  //   super.initState();
  // }

  // final HomeBlocBloc homeBloc = HomeBlocBloc();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
  leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () => Navigator.of(context).pop(),
  ), 
  title: Text("Sample"),
  centerTitle: true,
),
        body: Container(
          padding: const EdgeInsets.all(10.0),
          width:double.maxFinite,
           
          child: Column(
            children: [
             Center(
              child:  Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border:Border.all(color: Colors.white,width:2.0),
                  boxShadow: [BoxShadow(blurRadius: 10,color: Colors.black,offset: Offset(1, 3))]
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child:
                  Image.network(
                    height:100.0,
                    width:100.0,
                    fit:BoxFit.cover,
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFp9CeBHgEatoU3-Nee4_GxhR7irES7KTWEg&s",
        // placeholder: (context, url) => CircularProgressIndicator(),
        // errorWidget: (context, url, error) => Icon(Icons.error),
     ),
                  //  Image.network(
                  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFp9CeBHgEatoU3-Nee4_GxhR7irES7KTWEg&s",
                  //   height: 100.0,
                  //   width: 100.0,
                  //   fit:BoxFit.cover
                  // ),
                ),
              ),
             ),
             SizedBox(height:20),
             Center(child: Text("jhfh",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black),),),
             SizedBox(height:20),
             Expanded(child: Text("vjhjh",style: TextStyle(fontWeight: FontWeight.w300,color:Colors.black))
          )],
          ),
        ),
      ),
    );}
    
  }

