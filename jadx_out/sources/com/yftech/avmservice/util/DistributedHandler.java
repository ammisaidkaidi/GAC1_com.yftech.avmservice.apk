package com.yftech.avmservice.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class DistributedHandler extends Handler {
    private static final String TAG = "DistributedHandler";
    private List<HandlerPart> handlerParts;

    public interface HandlerPart {
        boolean dispatchHandleMessage(Message message);
    }

    public DistributedHandler() {
    }

    public DistributedHandler(Looper looper) {
        super(looper);
    }

    public void addHandlerPart(HandlerPart handlerPart) {
        if (this.handlerParts == null) {
            this.handlerParts = new ArrayList();
        }
        if (this.handlerParts.contains(handlerPart)) {
            return;
        }
        this.handlerParts.add(handlerPart);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        try {
            int size = this.handlerParts != null ? this.handlerParts.size() : 0;
            for (int i = 0; i < size && !this.handlerParts.get(i).dispatchHandleMessage(message); i++) {
            }
        } catch (Throwable th) {
            LogUtil.e(TAG, "handleMessage = " + message.what + ",", th);
        }
    }

    public void removeHandlerPart(HandlerPart handlerPart) {
        if (this.handlerParts != null) {
            this.handlerParts.remove(handlerPart);
        }
    }
}
