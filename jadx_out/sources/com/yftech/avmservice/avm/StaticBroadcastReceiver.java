package com.yftech.avmservice.avm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yftech.avmservice.util.LogUtil;

/* JADX INFO: loaded from: classes.dex */
public class StaticBroadcastReceiver extends BroadcastReceiver {
    private static final boolean DEBUG = true;
    private static final String TAG = "StaticBroadcastReceiver";

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction() == null) {
            LogUtil.d(TAG, "intent.getAction() != null", new Object[0]);
            return;
        }
        if (intent.getAction().equals("com.yftech.action.AVM.CALIBRATION")) {
            LogUtil.d(TAG, "onReceive com.yftech.action.AVM.CALIBRATION", new Object[0]);
            return;
        }
        if (intent.getAction().equals("android.intent.action.ACTION_SHUTDOWN")) {
            LogUtil.d(TAG, "Intent.ACTION_SHUTDOWN", new Object[0]);
            AvmControl.getInstance().hideAvm();
        } else if (intent.getAction().equals("com.yftech.avmservice.SHOW_STATE")) {
            LogUtil.d(TAG, "com.yftech.avmservice.SHOW_STATE", new Object[0]);
        }
    }
}
