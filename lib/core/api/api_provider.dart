abstract class ApiProvider {
  Future getData({required String path, Map<String, dynamic>? queryParams});
}
