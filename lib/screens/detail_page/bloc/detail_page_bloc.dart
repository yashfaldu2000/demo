import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';


part 'detail_page_event.dart';
part 'detail_page_state.dart';

class DetailPageBloc extends Bloc<DetailPageEvent, DetailPageState> {
  DetailPageBloc() : super(DetailPageInitial()) {
    on<DetailPageEvent>((event, emit) {
      
    });
  }
}
