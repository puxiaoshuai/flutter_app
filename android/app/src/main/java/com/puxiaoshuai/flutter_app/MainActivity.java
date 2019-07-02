package com.puxiaoshuai.flutter_app;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;

import io.flutter.app.FlutterActivity;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    GeneratedPluginRegistrant.registerWith(this);
  }
  @Override
  public boolean dispatchTouchEvent(MotionEvent ev) {
    if (ev.getAction() == MotionEvent.ACTION_DOWN) {
      View view = getCurrentFocus();
      if (isHideInput(view, ev)) {
        HideSoftInput(view.getWindowToken());
        view.clearFocus();
      }
    }
    return super.dispatchTouchEvent(ev);
  }

  /**
   * 判定是否需要隐藏
   */
  private boolean isHideInput(View v, MotionEvent ev) {
    if (v != null && (v instanceof EditText)) {
      int[] l = {0, 0};
      v.getLocationInWindow(l);
      int left = l[0], top = l[1], bottom = top + v.getHeight(), right = left + v.getWidth();
      if (ev.getX() > left && ev.getX() < right && ev.getY() > top && ev.getY() < bottom) {
        return false;
      } else {
        return true;
      }
    }
    return false;
  }


  @TargetApi(Build.VERSION_CODES.CUPCAKE)
  private void HideSoftInput(IBinder token) {
    if (token != null) {
      InputMethodManager manager = (InputMethodManager) getSystemService(Context.INPUT_METHOD_SERVICE);
      manager.hideSoftInputFromWindow(token, InputMethodManager.HIDE_NOT_ALWAYS);
    }
  }
}
