import 'package:bloc/bloc.dart';
import 'package:demo_of_provider/cubit/api/model/article_model.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
part 'api_event.dart';
part 'api_state.dart';

class ApiBloc extends Bloc<ApiEvent, ApiState> {
  ApiBloc() : super(ApiInitial()) {
    on<FetchData>((event, emit) async {
      emit(ApiLoading());

      //function nabaikina sidhai try ,catch ma rakhdeko
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
        } else {
          emit(
            ApiErrorState(
              error: "Unexpected status code: ${response.statusCode}",
            ),
          );
        }
      } catch (e) {
        emit(ApiErrorState(error: e.toString())); // // Don't throw, emit error
      }
    });
  }
}
