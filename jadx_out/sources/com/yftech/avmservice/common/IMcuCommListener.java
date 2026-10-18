package com.yftech.avmservice.common;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public interface IMcuCommListener {
    void onMcuMessageCallBack(ByteBuffer byteBuffer, int i);
}
