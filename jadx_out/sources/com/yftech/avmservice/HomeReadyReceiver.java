package com.yftech.avmservice;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yftech.avmservice.util.LogUtil;

/* JADX INFO: loaded from: classes.dex */
public class HomeReadyReceiver extends BroadcastReceiver {
    private String ACTION_HOME_READY = "autochips.intent.action.HOME_READY";
    private String TAG = "HomeReadyReceiver";

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        LogUtil.d(this.TAG, "onReceive action: " + action, new Object[0]);
        if (!action.equals(this.ACTION_HOME_READY) || context == null) {
            return;
        }
        context.startForegroundService(new Intent(context, (Class<?>) CameraService.class));
    }
}
