import 'dart:io';
import 'package:crypto/crypto.dart';

class RecoveryService {

  /// Validates the integrity of a file using SHA256.
  Future<bool> validateIntegrity(String filePath, String expectedHash) async {
    final file = File(filePath);
    if (!await file.exists()) return false;

    final stream = file.openRead();
    final hash = await sha256.bind(stream).first;
    return hash.toString().toLowerCase() == expectedHash.toLowerCase();
  }

  /// Retries a function with exponential backoff.
  Future<T?> retry<T>(Future<T> Function() action, {int maxRetries = 3}) async {
    int attempts = 0;
    while (attempts < maxRetries) {
      try {
        return await action();
      } catch (e) {
        attempts++;
        if (attempts >= maxRetries) rethrow;
        await Future.delayed(Duration(seconds: attempts * 2));
      }
    }
    return null;
  }
}
