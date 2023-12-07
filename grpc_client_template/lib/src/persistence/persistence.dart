abstract class PersistenceService {
  PersistenceService();
  Future<String?> getToken();
}

class NoPersistenceService extends PersistenceService {
  @override
  Future<String?> getToken() => Future.value(null);
}
