import 'dart:io';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iphone_has_notch/iphone_has_notch.dart';

bool hasDynamicIsland = false;

class DeviceHeight {
  //아이폰 다이나믹 아일랜드 체크
  void dynamicIsland(value) {
    if (value) {
      hasDynamicIsland = true;
    } else {
      hasDynamicIsland = false;
    }
  }

  double chartHeight(size) {
    if (Platform.isAndroid) {
      return size;
    } else {
      if (IphoneHasNotch.hasNotch) {
        return size;
      } else {
        if (hasDynamicIsland) {
          return size;
        } else {
          return size + 50.w;
        }
      }
    }
  }

  // 하단 네비 높이
  double navHeight(size) {
    if (Platform.isAndroid) {
      return size;
    } else {
      if (IphoneHasNotch.hasNotch) {
        return size + 10.w;
      } else {
        if (hasDynamicIsland) {
          return size + 20.w;
        } else {
          return size;
        }
      }
    }
  }

  // 하단 네비 메뉴 위치
  double navPositioned(size) {
    if (Platform.isAndroid) {
      return size;
    } else {
      if (IphoneHasNotch.hasNotch) {
        return size - 28.w;
      } else {
        if (hasDynamicIsland) {
          return size - 18.w;
        } else {
          return size - 4.w;
        }
      }
    }
  }

  // 기본 앱바 위치
  double appBarTop(size) {
    if (Platform.isAndroid) {
      return size - 10.w;
    } else {
      if (IphoneHasNotch.hasNotch) {
        return size + 5.w;
      } else {
        if (hasDynamicIsland) {
          return size + 20.w;
        } else {
          return size - 14.w;
        }
      }
    }
  }

  // 전체 팝업 기본 앱바 높이
  double defaultAppBarHeight(size) {
    if (Platform.isAndroid) {
      return size + 10.w;
    } else {
      if (IphoneHasNotch.hasNotch) {
        return size - 8.w;
      } else {
        if (hasDynamicIsland) {
          return size - 8.w;
        } else {
          return size + 14.w;
        }
      }
    }
  }

  // 전체 팝업 다른 앱바 높이
  double ectAppBarHeight(size) {
    if (Platform.isAndroid) {
      return size - 5.w;
    } else {
      if (IphoneHasNotch.hasNotch) {
        return size - 20.w;
      } else {
        if (hasDynamicIsland) {
          return size - 24.w;
        } else {
          return size;
        }
      }
    }
  }

  // 전체 팝업 다른 앱바 높이
  double ectAppBarHeight1(size) {
    if (Platform.isAndroid) {
      return size - 25.w;
    } else {
      if (IphoneHasNotch.hasNotch) {
        return size - 45.w;
      } else {
        if (hasDynamicIsland) {
          return size - 60.w;
        } else {
          return size;
        }
      }
    }
  }

  // 전체 팝업 기본 앱바 상단 공간
  double defaultAppBarSize(size) {
    if (Platform.isAndroid) {
      return size - 20.w;
    } else {
      if (IphoneHasNotch.hasNotch) {
        return size;
      } else {
        if (hasDynamicIsland) {
          return size + 15.w;
        } else {
          return size - 20.w;
        }
      }
    }
  }

  // 첫 페이지 상단 공간
  double firstTop(size) {
    if (Platform.isAndroid) {
      return size + 13.w;
    } else {
      if (IphoneHasNotch.hasNotch) {
        return size + 19.w;
      } else {
        if (hasDynamicIsland) {
          return size + 31.w;
        } else {
          return size;
        }
      }
    }
  }

  // 첫 페이지 하단 공간
  double firstBotton(size) {
    if (Platform.isAndroid) {
      return size + 8.w;
    } else {
      if (IphoneHasNotch.hasNotch) {
        return size + 20.w;
      } else {
        if (hasDynamicIsland) {
          return size + 26.w;
        } else {
          return size;
        }
      }
    }
  }

  // 모달 상단 공간
  double moaelTopSizw(size) {
    if (Platform.isAndroid) {
      return size - 10.w;
    } else {
      if (IphoneHasNotch.hasNotch) {
        return size + 16.w;
      } else {
        if (hasDynamicIsland) {
          return size + 15.w;
        } else {
          return size - 10.w;
        }
      }
    }
  }

  // 모달 높이
  double moaelHeight(size) {
    if (Platform.isAndroid) {
      return size - 25.w;
    } else {
      if (IphoneHasNotch.hasNotch) {
        return size + 25.w;
      } else {
        if (hasDynamicIsland) {
          return size + 25.w;
        } else {
          return size - 30.w;
        }
      }
    }
  }

  // 하단 탭 높이 위치
  double tabHeight(size) {
    if (Platform.isAndroid) {
      return size;
    } else {
      if (IphoneHasNotch.hasNotch) {
        return size + 16.w;
      } else {
        if (hasDynamicIsland) {
          return size + 16.w;
        } else {
          return size;
        }
      }
    }
  }

  // 하단 뒤로 가기 버튼 위치
  double fullbackBtn(size) {
    if (Platform.isAndroid) {
      return size;
    } else {
      if (IphoneHasNotch.hasNotch) {
        return size + 16.w;
      } else {
        if (hasDynamicIsland) {
          return size + 16.w;
        } else {
          return size;
        }
      }
    }
  }

  // 홈 페이지 카트 위치
  double cartbottom(size) {
    if (Platform.isAndroid) {
      return size;
    } else {
      if (IphoneHasNotch.hasNotch) {
        return size + 16.w;
      } else {
        if (hasDynamicIsland) {
          return size + 1500.w;
        } else {
          return size;
        }
      }
    }
  }
}
