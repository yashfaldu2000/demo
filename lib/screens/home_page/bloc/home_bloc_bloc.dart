import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:demo/data.dart';
import 'package:demo/model/get_animelist.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

part 'home_bloc_event.dart';
part 'home_bloc_state.dart';

class HomeBlocBloc extends Bloc<HomeBlocEvent, HomeBlocState> {
  HomeBlocBloc() : super(HomeBlocInitial()) {
     on<HomeFetchEvent>(homeInitialEvent);
  }
}

 FutureOr<void> homeInitialEvent(
      HomeFetchEvent event, Emitter<HomeBlocState> emit)  async{
        var client = http.Client();
        // List<Result> animeLists=[];
try {
  var response = await client.get(
      Uri.parse("https://rickandmortyapi.com/api/character"));
    //print(response.body);
  //  if(response.statusCode==200){
   if(response.statusCode == 200){
     var jsonResponse = jsonDecode(response.body)['results'];
   
  // var result = jsonResponse['results'];
  //  print(result);
  print (jsonResponse);
   final animeListss = jsonResponse.map((e) => Result.fromJson(e)).toList();
  print(animeListss);
   }else{
   // console.log("something went wrong");
   }
  
} 

catch(e){
  // log(e.toString());
}
    // emit(HomeLoadingState());
    //  await Future.delayed(const Duration(seconds: 3));

    // emit(HomeLoadedSuccessState(
    //     anime: AnimeData.animelist
    //         .map((e) => AnimeDataListModel(
    //             name: e['anime_name'],
    //             imageUrl: e['anime_img']))
    //             .toList()));
  }
