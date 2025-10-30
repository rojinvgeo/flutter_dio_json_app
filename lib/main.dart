import 'package:flutter/material.dart';
import 'models/user.dart';
import 'services/api_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ApiService apiService = ApiService();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Users List")),
        body: FutureBuilder<List<User>>(
          future: apiService.fetchUsers(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator()); // ⏳ Loading
            } else if (snapshot.hasError) {
              return Center(child: Text('❌ Error: ${snapshot.error}')); // 🚫 Error
            } else if (snapshot.hasData) {
              final users = snapshot.data!;
              return ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  final user = users[index];
                  return ListTile(
                    title: Text(user.name),
                    subtitle: Text(user.email),
                  );
                },
              );
            } else {
              return Center(child: Text('No data found.'));
            }
          },
        ),
      ),
    );
  }
}
