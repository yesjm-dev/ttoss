import 'dart:async';

import 'package:flutter/material.dart';

export 'delay_util.dart';

/// Flutter에서 UI 관련 비동기 작업을 안전하게 실행하기 위한 유틸 모음입니다.
/// - [runOnUI]: 프레임 끝에서 안전하게 UI 작업 실행 (예: setState)
/// - [delay()]: State가 mounted 상태일 때만 실행되는 딜레이 호출 (디바운스 등에서 유용)

extension AsyncExt on Object {
  Timer delay(
    Function func, [
    Duration duration = const Duration(milliseconds: 50),
  ]) {
    return Timer(duration, () {
      if (this is State && !(this as State).mounted) {
        return;
      }
      func();
    });
  }
}

void runOnUI(void Function() uiFunction) {
  WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    uiFunction();
  });
}
