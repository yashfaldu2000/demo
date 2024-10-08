part of 'home_bloc_bloc.dart';

@immutable
abstract class HomeBlocState {}

final class HomeBlocInitial extends HomeBlocState {}

class HomeLoadingState extends HomeBlocState {}

class HomeLoadedSuccessState extends HomeBlocState {
  final List<Result> anime;
  HomeLoadedSuccessState({
    required this.anime,
  });
}

class HomeErrorState extends HomeBlocState {}