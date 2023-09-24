import 'package:dio/dio.dart';
import 'package:appstore/core/exceptions/api_exception.dart';

/// App HTTP Client for making API requests using Dio.
class AppHttpClient {
  final Dio _dio;

  AppHttpClient() : _dio = Dio();

  /// Handles the API response and returns the data on success, or throws an exception on failure.
  dynamic _handleResponse(Response response) {
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.data;
    } else {
      throw ApiException('Failed to communicate with API');
    }
  }

  /// Sends a GET request to the specified URL and returns the response data.
  ///
  /// Throws an [ApiException] if the request fails.
  Future<dynamic> get(String url) async {
    try {
      final response = await _dio.get(url);
      return _handleResponse(response);
    } catch (error) {
      throw ApiException('Failed to load data from API');
    }
  }

  /// Sends a POST request to the specified URL with the given body and returns the response data.
  ///
  /// Throws an [ApiException] if the request fails.
  Future<dynamic> post(String url, dynamic body) async {
    try {
      final response = await _dio.post(url, data: body);
      return _handleResponse(response);
    } catch (error) {
      throw ApiException('Failed to post data to API');
    }
  }

  /// Sends a PUT request to the specified URL with the given body and returns the response data.
  ///
  /// Throws an [ApiException] if the request fails.
  Future<dynamic> put(String url, dynamic body) async {
    try {
      final response = await _dio.put(url, data: body);
      return _handleResponse(response);
    } catch (error) {
      throw ApiException('Failed to put data to API');
    }
  }

  /// Sends a DELETE request to the specified URL and returns the response data.
  ///
  /// Throws an [ApiException] if the request fails.
  Future<dynamic> delete(String url) async {
    try {
      final response = await _dio.delete(url);
      return _handleResponse(response);
    } catch (error) {
      throw ApiException('Failed to delete data from API');
    }
  }
}