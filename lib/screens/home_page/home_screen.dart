import 'package:demo/main.dart';
import 'package:demo/screens/detail_page/screen/detail_screen.dart';
import 'package:demo/screens/home_page/bloc/home_bloc_bloc.dart';
import 'package:flutter/material.dart';
//import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  void initState() {
    homeBloc.add(HomeFetchEvent());
    super.initState();
  }

  final HomeBlocBloc homeBloc = HomeBlocBloc();

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(body:Container(color:Colors.red));
  }
  //    BlocConsumer<HomeBlocBloc, HomeBlocState>(
  //     bloc: homeBloc,
  //     listener: (context, state) {},
  //     builder: (context, state) {
  //   if (state is HomeLoadedSuccessState) {
  //     final successState = state;

  //     return   SafeArea(
  //     child: Scaffold(
  //       appBar: AppBar(
  //         title: const Text('AnimeList'),
  //         backgroundColor: Colors.white,
  //          centerTitle: true,
  //       ),
  //       body: Container(margin: EdgeInsets.only(top: 24),
  //         child: ListView.builder(
  //             itemCount: successState.anime.length,
  //             itemBuilder: ( context, int index) {
  //               return listAnime(context:context,url: successState.anime[index].imageUrl, name:  successState.anime[index].name);
  //             }),
  //       ),
        
  //     ),
  //   );
  //   } 
  //   // else if (state is HomeLoadingState) {
  //   //   return const SafeArea(
  //   //     child: Scaffold(
  //   //       body:  Center(
  //   //               child: CircularProgressIndicator(),
  //   //             ),
  //   //     ),
  //   //   );
  //   //}
  //    else if(state is HomeErrorState){
  //         return  const SafeArea(child: Scaffold(body:  Text('Error')));

  //   }{
  //     return  const SizedBox();
  //   }
  // },
  //   );}
    
  // }
}

Widget listAnime({required String url  , required String name , required BuildContext context}){
  return Container(
  
  margin:EdgeInsets.all(5),
  padding:EdgeInsets.all(5),
   decoration: BoxDecoration(
  color:Colors.white,
                borderRadius: BorderRadius.circular(10),
                 border:Border.all(color: Colors.black,width:2.0),),
    child: InkWell(
      onTap:   (){
      Navigator.push(
              context, MaterialPageRoute(builder: (context) => const MyDetailScreen()));
    },
      child: ListTile(
                      leading:  Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.redAccent,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    url,
                    height: 50.0,
                    width: 50.0,
                    fit:BoxFit.cover
                  ),
                ),
              ),
                      title: Center(child: Text(name,style: TextStyle(fontWeight: FontWeight.bold),))),
    ),
  );
}