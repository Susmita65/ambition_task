part of 'api_bloc.dart';

@immutable
sealed class ApiEvent {}

class FetchData extends ApiEvent {}
