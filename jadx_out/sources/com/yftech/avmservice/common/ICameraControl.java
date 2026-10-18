package com.yftech.avmservice.common;

/* JADX INFO: loaded from: classes.dex */
public interface ICameraControl {

    public interface ICameraControlListener {
        void onAPADrvReq(CameraDataDef.APAInfo aPAInfo);

        void onCameraCommTimeOut(boolean z);

        void onCameraOpStateErr(boolean z);

        void onCameraReqHide();

        void onCameraReqShow();

        void onCameraSystemErr(boolean z);

        void onDisplayState(boolean z);

        void onGearStateChange(int i);

        void onSteerWheelAngel(float f);
    }

    float getSteerWheelAngle();

    boolean isCameraOpErr();

    boolean isCommTimeOut();

    boolean requestCanSync();

    boolean requestHide();

    boolean requestShow();

    void setCameraControlListener(ICameraControlListener iCameraControlListener);
}
