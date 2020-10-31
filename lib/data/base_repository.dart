import 'package:meta/meta.dart';

/// The [IDataRepository] is a base class containing functions for getting
/// data either from a remote source or a local repository.
/// 
/// It provides default implementation for CRUD methods, with different behavior if
/// there is an internet connection or not.
/// 
/// However, you will need for each method to implement the local/remote submethods.
abstract class IDataRepository<T> {
  final String baseUrl;
  final String storeName;
  final String authToken;

  /// `baseUrl` is the API path that all the methods have in common.
  /// `storeName` is the name used for local store. It should be unique.
  /// `authToken` is the authentication token.
  IDataRepository(this.baseUrl, this.storeName, this.authToken);

  @protected
  Future<List<T>> findAllRemote();
  @protected
  Future<List<T>> findAllLocal();

  @protected
  Future<T> findOneRemote(dynamic id);
  @protected
  Future<T> findOneLocal(dynamic id);

  @protected
  Future<void> saveRemote(List<T> data);
  @protected
  Future<void> saveLocal(List<T> data);

  @protected
  Future<void> deleteRemote(List<T> data);
  @protected
  Future<void> deleteLocal(List<T> data);

  Future<void> clear();

  Future<List<T>> findAll({ bool hasConnection = true }) async {
    if (!hasConnection) {
      return findAllLocal();
    }
    final List<T> remoteData = await findAllRemote();

    await saveLocal(remoteData);
    return remoteData;
  }

  Future<T> findOne(dynamic id, { bool hasConnection = true }) async {
    if (!hasConnection) {
      return findOneLocal(id);
    }
    final T remoteData = await findOneRemote(id);

    await saveLocal([remoteData]);
    return remoteData;
  }

  Future<void> save(List<T> data, { bool hasConnection = true }) async {
    if (hasConnection) {
      await saveRemote(data);
    }
    await saveLocal(data);
  }

  Future<void> delete(List<T> data, { bool hasConnection = true }) async {
    if (hasConnection) {
      await deleteRemote(data);
    }
    await deleteLocal(data);
  }
}