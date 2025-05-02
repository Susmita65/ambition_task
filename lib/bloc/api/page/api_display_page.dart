import 'package:demo_of_provider/bloc/api/bloc/api_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ApiDisplayPage extends StatelessWidget {
  const ApiDisplayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ApiBloc()..add(FetchData()),
      child: Scaffold(
        appBar: AppBar(title: const Text("API Call Using Bloc Pattern")),
        body: BlocBuilder<ApiBloc, ApiState>(
          builder: (context, state) {
            if (state is ApiLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is ApiErrorState) {
              return Center(child: Text("Error: ${state.error}"));
            } else if (state is ApiSuccessState) {
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
            } else {
              return const Center(child: Text("Press button to load data"));
            }
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Manually trigger data fetch again (if needed)
            //Cubit access garne and then call the method which is similar to that of calling provider ko method
            context.read<ApiBloc>().add(FetchData());
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
