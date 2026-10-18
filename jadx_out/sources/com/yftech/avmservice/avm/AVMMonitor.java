package com.yftech.avmservice.avm;

/* JADX INFO: loaded from: classes.dex */
public class AVMMonitor {

    public interface ICameraMonitorListener {
        void onCameraMonitorLoading(boolean z);

        void onCameraMonitorNoSignal();

        void onCameraMonitorReady();

        void onCameraMonitorReqHide();

        void onCameraMonitorReqShow();

        void onCameraMonitorResumeSignal();
    }
}
