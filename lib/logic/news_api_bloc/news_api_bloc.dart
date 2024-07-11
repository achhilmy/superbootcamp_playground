import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:superbootcamp_flutter/models/news_model.dart';
import 'package:superbootcamp_flutter/services/services.dart';

part 'news_api_event.dart';
part 'news_api_state.dart';

class NewsApiBloc extends Bloc<NewsApiEvent, NewsApiState> {
  final NewsApiServices _newsApiServices;

  NewsApiBloc(this._newsApiServices) : super(NewsApiInitial()) {
    on<NewsApiEvent>((event, emit) async {
      emit(NewsApiLoading());
      try {
        final news = await _newsApiServices.getNews();
        emit(NewsApiLoaded(news));
      } catch (e) {
        emit(NewsApiError(e.toString()));
      }
    });
  }
}
