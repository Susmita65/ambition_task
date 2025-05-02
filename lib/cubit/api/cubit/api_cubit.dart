import 'package:bloc/bloc.dart';
import 'package:demo_of_provider/cubit/api/model/article_model.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

part 'api_state.dart';

class ApiCubit extends Cubit<ApiState> {
  ApiCubit() : super(ApiInitial()) {
    fetchArticlesData();
  }

  void fetchArticlesData() async {
    emit(ApiLoadingState());

    try {
      final response = await Dio().get(
        "https://newsapi.org/v2/everything",
        queryParameters: {
          "q": "apple",
          "from": "today",
          "to": "today",
          "sortBy": "popularity",
          "apiKey": "8c0b445a65004d3ca885197d8fd6772c",
        },
      );
      if (response.statusCode == 200) {
        print("API Call Successfull");
        print("Response:${response.data}");
        List articleMap = response.data['articles'];
        final data = articleMap.map((e) => ArticleModel.fromJson(e)).toList();
        emit(
          ApiSuccessState(articles: data),
        ); //uta apistate ko constructor articles ma final data ko data pass gareko
      }
    } catch (e) {
      throw ApiErrorState(error: e.toString());
    }
  }
}
