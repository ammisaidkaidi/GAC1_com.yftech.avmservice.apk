package com.yftech.avmservice.util;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;

/* JADX INFO: loaded from: classes.dex */
public class HandlerThreadHandler extends Handler {
    private static final String TAG = "HandlerThreadHandler";

    private HandlerThreadHandler(Looper looper) {
        super(looper);
    }

    private HandlerThreadHandler(Looper looper, Handler.Callback callback) {
        super(looper, callback);
    }

    public static final HandlerThreadHandler createHandler() {
        return createHandler(TAG);
    }

    public static final HandlerThreadHandler createHandler(Handler.Callback callback) {
        return createHandler(TAG, callback);
    }

    public static final HandlerThreadHandler createHandler(String str) {
        HandlerThread handlerThread = new HandlerThread(str);
        handlerThread.start();
        return new HandlerThreadHandler(handlerThread.getLooper());
    }

    public static final HandlerThreadHandler createHandler(String str, Handler.Callback callback) {
        HandlerThread handlerThread = new HandlerThread(str);
        handlerThread.start();
        return new HandlerThreadHandler(handlerThread.getLooper(), callback);
    }
}
