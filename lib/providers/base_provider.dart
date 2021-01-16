import '../data/base_repository.dart';
import 'package:logger/logger.dart';

enum ProviderStatus { Ok, Err, Loading }

/// This is the base class for [DataProviders].
/// 
/// Implementing classes should also use [ChangeNotifier] mixin.
abstract class IDataProvider<T> {
  final IDataRepository<T> source;
  String errorMessage;
  ProviderStatus status;
  Logger logger = Logger();
  T data;

  IDataProvider(this.source);
}
