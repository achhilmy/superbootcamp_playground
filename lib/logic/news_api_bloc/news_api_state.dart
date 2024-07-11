part of 'news_api_bloc.dart';

sealed class NewsApiState {}

final class NewsApiInitial extends NewsApiState {}

final class NewsApiLoading extends NewsApiState {
  @override
  List<Object?> get props => [];
}

final class NewsApiLoaded extends NewsApiState {
  final List<NewsModel> news;
  NewsApiLoaded(this.news);
  @override
  List<Object?> get props => [];
}

final class NewsApiError extends NewsApiState {
  final String error;
  NewsApiError(this.error);
  @override
  List<Object?> get props => [];
}
