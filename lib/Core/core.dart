library core;


import 'dart:convert';
import 'dart:math';


import 'package:aaseeb_app/Models/hadeeth.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:aaseeb_app/Models/prayer_date.dart';
import 'package:aaseeb_app/Functions/time_util.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:aaseeb_app/Models/prayer.dart';


part 'controller.dart';
part 'pref.dart';
part 'data.dart';