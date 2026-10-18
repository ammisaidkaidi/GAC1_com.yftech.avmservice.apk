package com.yftech.avmservice.util;

import android.content.Context;
import android.widget.Toast;

/* JADX INFO: loaded from: classes.dex */
public class ToastUtil {
    private static Toast mToast;

    public static void showToast(Context context, String str) {
        if (context == null || str == null) {
            return;
        }
        if (mToast != null) {
            mToast.cancel();
        }
        mToast = Toast.makeText(context, str, 0);
        mToast.setGravity(81, 0, 0);
        mToast.show();
    }
}
