
import 'dart:ui';

import 'package:flutter/material.dart';

const Color purple1 = Color(0xFFAE09BA);
const Color purple2 = Color(0xFF860DA7);
const Color purple3 = Color(0xFF541278);
const Color purple4 = Color(0xFF4F107D);
const Color white = Color(0xFFFFFFFF);
const Color pink = Color(0xFFE50372);
const Color black = Color(0xFF161616);

Gradient purpleGradient =  LinearGradient(
            colors: [purple1, purple2, purple3, purple4],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            );