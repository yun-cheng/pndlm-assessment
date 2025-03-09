import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pndlm_assessment/models/clock_hand_type.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:vector_math/vector_math_64.dart' show radians;

part 'time_provider.g.dart';

final _radiansPerTick = radians(360 / 60);
final _radiansPerHour = radians(360 / 12);

@riverpod
Stream<DateTime> time(Ref ref) async* {
  yield DateTime.now();

  // ! Wait until the start of the next second to ensure the clock is accurate
  final waitUntilNextSecond = 1000 - DateTime.now().millisecond;
  await Future.delayed(Duration(milliseconds: waitUntilNextSecond));
  yield DateTime.now();

  yield* Stream.periodic(const Duration(seconds: 1), (_) => DateTime.now());
}

@riverpod
double angleRadians(
  Ref ref, {
  required ClockHandType type,
  required String location,
}) {
  final localTime = ref.watch(timeProvider).value;

  if (localTime == null) return 0;

  final time = tz.TZDateTime.from(localTime, tz.getLocation(location));

  switch (type) {
    case ClockHandType.hour:
      return time.hour * _radiansPerHour + (time.minute / 60) * _radiansPerHour;
    case ClockHandType.minute:
      return time.minute * _radiansPerTick;
    case ClockHandType.second:
      return time.second * _radiansPerTick;
  }
}
