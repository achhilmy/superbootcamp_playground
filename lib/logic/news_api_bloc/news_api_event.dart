part of 'news_api_bloc.dart';

sealed class NewsApiEvent {}

class LoadNewsEvent extends NewsApiState {
  @override
  List<Object?> get props => [];
}
