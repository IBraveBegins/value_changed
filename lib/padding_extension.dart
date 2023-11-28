import 'package:flutter/cupertino.dart';

///扩展int以方便使用
extension IntFix on int {
  ///eg：200.px
  SizedBox get paddingHeight {
    return SizedBox(height: toDouble());
  }

  SizedBox get paddingWidth {
    return SizedBox(width: toDouble());
  }
}

///扩展double以方便使用
extension DobuleFix on double {
  ///eg：200.0.px
  SizedBox get paddingHeight {
    return SizedBox(height: this);
  }

  SizedBox get paddingWidth {
    return SizedBox(width: this);
  }
}
