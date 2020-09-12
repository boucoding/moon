library moon;

import 'package:device_info/device_info.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:package_info/package_info.dart';
import 'package:platform_info/platform_info.dart';
import 'package:share/share.dart';
import 'package:string_validator/string_validator.dart' as stringValidator;
import 'package:system_info/system_info.dart';
import 'package:geolocator/geolocator.dart';
import 'package:translator/translator.dart';


///the main class of the package
class Moon {


  ///the database util
  Future<Box> get database async {

    //opening the app box
    Box _box = await Hive.openBox('moon');

    //returning the box
    return _box;
  }


  ///the validator util
  dynamic get validator {

    //returning the validator util
    return stringValidator.Validator();
  }


  //the sanitizer util
  dynamic get sanitizer {

    //returning the sanitizer util
    return stringValidator.Sanitizer();
  }

  //the platform info util
  dynamic get platformInfo {

    //returning the platform info util
    return Platform.instance;
  }


  //the device info util
  dynamic get deviceInfo {

    //returning the device info util
    return DeviceInfoPlugin();
  }


  //the system info util
  dynamic get systemInfo {

    //returning the platform info util
    return SysInfo;
  }


  //the package info util
  Future<dynamic> get packageInfo async {

    //returning the platform info util
    return await PackageInfo.fromPlatform();
  }


  //the cache util
  dynamic get cache {

    //returning the cache util
    return DefaultCacheManager();
  }


  //the geolocation util
  dynamic get geolocation {

    //returning the geolocation util
    return Geolocator();
  }


  //the share util
  dynamic get share {

    //returning the share util
    return Share();
  }


  //the http util
  dynamic get http {

    //returning the http util
    return Dio();
  }


  //the fonts util
  dynamic get fonts {

    //returning the dio util
    return GoogleFonts;
  }


  //the file picker util
  dynamic get picker {

    //returning the picker util
    return FilePicker;
  }


  //the translator util
  dynamic get translator {

    //returning the translator util
    return GoogleTranslator();
  }
  
}