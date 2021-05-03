abstract class Database {
  Future initialize();
  Future insert<T>(Map<String, dynamic> parameters);
  Future<Map<String, dynamic>?> firstWhere<T>(bool where(dynamic element));
  Future<List<Map<String, dynamic>>?> where<T>(
    bool where(dynamic element), {
    int? limit,
  });
}
