package com.yftech.avmservice.common;

/* JADX INFO: loaded from: classes.dex */
public interface IRadarControl {

    public interface IRadarListener {
        void onRadarInfo(CameraDataDef.RadarInfo radarInfo);
    }

    CameraDataDef.RadarInfo getRadarInfo();

    boolean isFrontRadarErr();

    boolean isRearRadarErr();

    boolean requestRadarClose();

    boolean requestRadarOpen();

    void setRadarListener(IRadarListener iRadarListener);
}
