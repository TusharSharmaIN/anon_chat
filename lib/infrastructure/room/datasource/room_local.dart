import 'dart:convert';

import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:rumour/domain/core/error/exceptions.dart';
import 'package:rumour/infrastructure/core/secure_storage.dart';
import 'package:rumour/infrastructure/room/dtos/room_identity_dto.dart';

class RoomLocalDataSource {
  static const _boxName = 'room_identity_box';
  static const _secureKey = 'room_identity_secure_key';

  late Box _encryptedBox;
  final SecureStorage secureStorage;

  RoomLocalDataSource({required this.secureStorage});

  Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(RoomIdentityDtoAdapter());

    final encryptionKeyString = await secureStorage.read(key: _secureKey);

    if (encryptionKeyString.isEmpty) {
      final generatedKey = Hive.generateSecureKey();
      await secureStorage.write(
        key: _secureKey,
        value: base64UrlEncode(generatedKey),
      );
    }

    final encoded = await secureStorage.read(key: _secureKey);
    final encryptionKey = base64Url.decode(encoded);

    _encryptedBox = await Hive.openBox(
      _boxName,
      encryptionCipher: HiveAesCipher(encryptionKey),
    );
  }

  Future<RoomIdentityDto> get(String roomId) async {
    try {
      final key = 'identity_$roomId';

      return await _encryptedBox.get(
        key,
        defaultValue: RoomIdentityDto(uid: '', name: ''),
      );
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  Future<void> set(String roomId, RoomIdentityDto dto) async {
    try {
      final key = 'identity_$roomId';
      await _encryptedBox.put(key, dto);
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  Future<void> delete(String roomId) async {
    try {
      final key = 'identity_$roomId';
      await _encryptedBox.delete(key);
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  Future<void> clear() async {
    try {
      await _encryptedBox.flush();
      await _encryptedBox.clear();
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }
}
