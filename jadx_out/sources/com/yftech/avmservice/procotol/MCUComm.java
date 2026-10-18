package com.yftech.avmservice.procotol;

import com.yftech.avmservice.common.IMcuCommListener;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class MCUComm {

    private static class SingletonFactory {
        private static MCUComm instance = new MCUComm();

        private SingletonFactory() {
        }
    }

    private MCUComm() {
        init();
    }

    public static MCUComm getInstance() {
        return SingletonFactory.instance;
    }

    public int SendData(ByteBuffer byteBuffer, int i) {
        return MCUCommNative.getInstance().sendDataToMcu(byteBuffer, i, 1);
    }

    public int init() {
        return MCUCommNative.getInstance().mcuCommInit();
    }

    public void setAvmListener(IMcuCommListener iMcuCommListener) {
        MCUCommNative.getInstance().registerMcuCommCallback(iMcuCommListener);
    }
}
