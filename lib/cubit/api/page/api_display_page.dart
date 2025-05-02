import 'package:demo_of_provider/cubit/api/cubit/api_cubit.dart';
import 'package:demo_of_provider/cubit/api/model/article_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ApiDisplayPage extends StatefulWidget {
  const ApiDisplayPage({super.key});
  @override
  State<StatefulWidget> createState() => _ApiDisplayPageState();
}

class _ApiDisplayPageState extends State<ApiDisplayPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ApiCubit(),
      child: Scaffold(
        appBar: AppBar(title: Text("Display API using Cubit")),
        body: BlocBuilder<ApiCubit, ApiState>(
          builder: (context, state) {
            if (state is ApiLoadingState) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is ApiErrorState) {
              return Center(child: Text(state.error.toString()));
            }
            if (state is ApiSuccessState) {
              return ListView.builder(
                itemCount: state.articles?.length ?? 0,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                state.articles?[index].urlToImage ?? "",
                                height: 200,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(state.articles?[index].author ?? "No Author"),
                            SizedBox(height: 10),
                            Text(state.articles?[index].title ?? "No Title"),
                            SizedBox(height: 10),
                            Text(
                              state.articles?[index].description ??
                                  "No Description",
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            }
            return const Center(child: Text("No Data Available"));
          },
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Manually trigger data fetch again (if needed)
            //Cubit access garne and then call the method which is similar to that of calling provider ko method
            context.read<ApiCubit>().fetchArticlesData();
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
