import 'package:demo_of_provider/provider/api/api_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ApiScreen extends StatefulWidget {
  @override
  State<ApiScreen> createState() => _ApiScreenState();
}

class _ApiScreenState extends State<ApiScreen> {
  @override
  void initState() {
    super.initState();
    // context.read<ApiProvider>().fetchData();
  }

  @override
  Widget build(BuildContext context) {
    // final apiProvider = Provider.of<ApiProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text("API Call Using Provider")),
      body: Consumer<ApiProvider>(
        builder: (ctx, apiProvider, _) {
          if (apiProvider.isLoading) {
            return Center(child: CircularProgressIndicator());
          }
          if (apiProvider.articlesList.isEmpty) {
            return Center(child: Text("No Data Available"));
          }
          return ListView.builder(
            itemCount: apiProvider.articlesList.length,
            itemBuilder: (context, index) {
              final article = apiProvider.articlesList[index];
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
                        article.urlToImage != null
                            ? ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                article.urlToImage!,
                                height: 200,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            )
                            : Container(
                              height: 200,
                              color: Colors.grey,
                              child: Center(child: Icon(Icons.image)),
                            ),
                        SizedBox(height: 10),
                        Text(article.author ?? "No Author"),
                        SizedBox(height: 10),
                        Text(article.title ?? "No Title"),
                        SizedBox(height: 10),
                        Text(article.description ?? "No Description"),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Manually trigger data fetch again (if needed)
          context.read<ApiProvider>().fetchData();
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
