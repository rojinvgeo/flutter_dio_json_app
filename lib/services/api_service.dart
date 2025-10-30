import 'package:dio/dio.dart';
import '../models/user.dart';

class ApiService {
  final Dio _dio = Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com'));

  Future<List<User>> fetchUsers() async {
    try {
      final response = await _dio.get('/users');
      return (response.data as List)
          .map((json) => User.fromJson(json))
          .toList();
    } on DioException catch (e) {
      throw Exception('Failed to load users: ${e.message}');
    }
  }
}
