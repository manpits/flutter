// -------------------------------------------------------
// ValueNotifier : untuk menyimpan data
// ValueListenableBuilder : method untuk mendengarkan perubahan data (sehingga tidak perlu lagi menggunakan setstate)
// -------------------------------------------------------

import 'package:flutter/material.dart';

// default nilai selectedPageNotifier = 0 atau index ke 0 (HomePage)
ValueNotifier selectedPageNotifier = ValueNotifier(0);
