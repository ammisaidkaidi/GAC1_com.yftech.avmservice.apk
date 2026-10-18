package com.yftech.avmservice.common;

/* JADX INFO: loaded from: classes.dex */
public interface ISAVMControl extends ICameraControl {

    public interface ISAVMControlListener {
        void onSAvmCameraInputErr(int i);

        void onSAvmEOLTestModeChange(boolean z);

        void onSAvmGuideLineChange(int i);

        void onSAvmGuideLineErr(boolean z);

        void onSAvmRadarErr(boolean z);

        void onSAvmSingleViewChange(int i);
    }

    boolean replyAPAShowState(boolean z);

    boolean sendTouchToAVM(float f, float f2, int i);

    void setSAVMControlListener(ISAVMControlListener iSAVMControlListener);
}
