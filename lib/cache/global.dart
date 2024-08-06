import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheData {
  static late SharedPreferences _sharedPreferences;

  static Future<void> cacheInitialization() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  // Method to set data based on the value type
  static Future<bool> setData({required String key, required dynamic value}) async {
    if (value is int) {
      return _sharedPreferences.setInt(key, value);
    } else if (value is String) {
      return _sharedPreferences.setString(key, value);
    } else if (value is bool) {
      return _sharedPreferences.setBool(key, value);
    } else if (value is double) {
      return _sharedPreferences.setDouble(key, value);
    } else if (value is Color) {
      return _sharedPreferences.setInt(key, value.value);
    } else {
      throw Exception("Unsupported value type");
    }
  }

  // Method to get data based on the key
  static dynamic getData({required String key}) {
    dynamic value = _sharedPreferences.get(key);
    if (value is int) {
      // Check if the value is a Color object
      if (key.toLowerCase().contains('color')) {
        return Color(value);
      }
      return value;
    } else {
      return value;
    }
  }

  // Method to delete data based on the key
  static Future<bool> deleteItem({required String key}) async {
    return _sharedPreferences.remove(key);
  }

  // Method to clear all data
  static Future<bool> clearData() async {
    return _sharedPreferences.clear();
  }
}
