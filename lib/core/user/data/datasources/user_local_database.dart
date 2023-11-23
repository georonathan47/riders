import 'package:hive/hive.dart';
import 'package:riders/core/utils/logger.dart';

import '../../../error/exception.dart';

import '../../domain/entities/user.dart';

/// Access user data stored locally
abstract class UserLocalDatabase {
  /// returns a user model
  Future<User> retrieve();

  /// Saves a user model
  Future<void> create(User user);

  /// Deletes a user model
  Future<void> delete(User user);

  /// Retrieves the user authentication state
  Future<bool> authenticationStatus();

  Future<String> localUpdate(User user);
}

/// Implements [UserLocalDatabase]
class UserLocalDatabaseImpl implements UserLocalDatabase {
  /// Constructor
  UserLocalDatabaseImpl(this.hiveInterface);

  /// Hive database instance for storing data
  final HiveInterface hiveInterface;

  /// BoxName for [UserAdapter]
  static const String _boxName = 'user';

  /// Returns a hive instance of a user model
  Future<User> _retrieveBox() async {
    try {
      final box = await hiveInterface.openBox<User>(_boxName);
      return box.get(0) ?? User.initial();
    } catch (error) {
      await hiveInterface.deleteBoxFromDisk(_boxName);
      return _retrieveBox();
    }
  }

  @override
  Future<bool> authenticationStatus() async {
    try {
      final user = await _retrieveBox();
      return user.fullname!.isNotEmpty;
    } catch (error) {
      return false;
    }
  }

  @override
  Future<User> retrieve() async {
    try {
      final user = await _retrieveBox();
      return user;
    } catch (error) {
      throw DeviceException('Device Error!\nInsufficient storage space');
    }
  }

  @override 
  Future<String> localUpdate(User user) async {
    try {
      logger.i('saving user $user');
      final box = await hiveInterface.openBox<User>(_boxName);
      await box.putAt(0, user);
      return "Saved user information";
    } catch (error){
      throw DeviceException('Device Error!\nInsufficient storage space');
    }
  }

  @override
  Future<void> create(User user) async {
    try {
      logger.i('saving user $user');
      final box = await hiveInterface.openBox<User>(_boxName);
      await box.put(0, user);
    } catch (error) {
      logger.f('error saving user $error');
      throw DeviceException('Device Error!\nInsufficient storage space');
    }
  }

  @override
  Future<String> delete(User user) async {
    try {
      logger.i('Removing user $user');
      final box = await hiveInterface.openBox<User>(_boxName);
      await box.delete(0);
      return '';
    } catch (error) {
      logger.f('error saving user $error');
      throw DeviceException('Device Error!\nInsufficient storage space');
    }
  }
}
