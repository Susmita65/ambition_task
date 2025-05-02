part of 'api_cubit.dart';

@immutable
sealed class ApiState {}

final class ApiInitial extends ApiState {}

final class ApiLoadingState extends ApiState {}

final class ApiSuccessState extends ApiState {
  final List<ArticleModel>?
  articles; //success huda k aeraxa vanne jastai yesma List of Articles
  ApiSuccessState({this.articles}); //contructor articles pass garirako xa ya
}

final class ApiErrorState extends ApiState {
  final String? error;
  ApiErrorState({required this.error});
}
