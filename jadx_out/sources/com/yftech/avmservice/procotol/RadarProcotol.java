package com.yftech.avmservice.procotol;

import android.os.Handler;
import com.yftech.avmservice.common.CameraDataDef;
import com.yftech.avmservice.common.IMcuCommListener;
import com.yftech.avmservice.common.IRadarControl;
import com.yftech.avmservice.util.LogUtil;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class RadarProcotol implements IMcuCommListener, IRadarControl {
    public static final byte CAN_GID = 96;
    public static final byte CAN_SID = 0;
    private static final String TAG = "RadarProcotol";
    private IRadarControl.IRadarListener mRadarListener;
    private CameraDataDef.RadarInfo mRadarInfo = new CameraDataDef.RadarInfo();
    private boolean mFrontRadarErr = false;
    private boolean mRearRadarErr = false;
    private int mCarSpeed = 0;
    private boolean mIsRadarProcotolUpdate = false;
    Handler mHandler = new Handler();
    Runnable delayCheckRadar = new Runnable() { // from class: com.yftech.avmservice.procotol.RadarProcotol.1
        @Override // java.lang.Runnable
        public void run() {
            LogUtil.d(RadarProcotol.TAG, "delayCheckRadar mIsRadarProcotolUpdate :" + RadarProcotol.this.mIsRadarProcotolUpdate, new Object[0]);
            RadarProcotol.this.mRadarInfo.rightFrontDis = (byte) 1;
            RadarProcotol.this.mRadarInfo.leftCenterFrontDis = (byte) 1;
            RadarProcotol.this.mRadarInfo.rightCenterFrontDis = (byte) 1;
            RadarProcotol.this.mRadarInfo.leftFrontDis = (byte) 1;
            RadarProcotol.this.mRadarInfo.rightBackDis = (byte) 1;
            RadarProcotol.this.mRadarInfo.leftCenterBackDis = (byte) 1;
            RadarProcotol.this.mRadarInfo.rightCenterBackDis = (byte) 1;
            RadarProcotol.this.mRadarInfo.leftBackDis = (byte) 1;
            RadarProcotol.this.mRadarInfo.leftBackSensorFaultSts = (byte) 1;
            if (RadarProcotol.this.mIsRadarProcotolUpdate || RadarProcotol.this.mRadarListener == null) {
                return;
            }
            RadarProcotol.this.mRadarListener.onRadarInfo(RadarProcotol.this.mRadarInfo);
        }
    };

    byte getFrontRadarLevel(byte b) {
        if (b <= 0 || b > 30) {
            return (b <= 30 || b > 60) ? (byte) 0 : (byte) 2;
        }
        return (byte) 1;
    }

    @Override // com.yftech.avmservice.common.IRadarControl
    public CameraDataDef.RadarInfo getRadarInfo() {
        return this.mRadarInfo;
    }

    byte getRearRadarLevel(byte b) {
        if (b > 0 && b <= 30) {
            return (byte) 1;
        }
        if (b > 30 && b <= 60) {
            return (byte) 2;
        }
        if (b <= 60 || b > 90) {
            return (b <= 90 || b > 120) ? (byte) 0 : (byte) 4;
        }
        return (byte) 3;
    }

    byte getRearRadarMidLevel(byte b) {
        int i = b & 255;
        if (i > 0 && i <= 30) {
            return (byte) 1;
        }
        if (i > 30 && i <= 60) {
            return (byte) 2;
        }
        if (i <= 60 || i > 90) {
            return (i <= 90 || i > 150) ? (byte) 0 : (byte) 4;
        }
        return (byte) 3;
    }

    @Override // com.yftech.avmservice.common.IRadarControl
    public boolean isFrontRadarErr() {
        return this.mFrontRadarErr;
    }

    @Override // com.yftech.avmservice.common.IRadarControl
    public boolean isRearRadarErr() {
        return this.mRearRadarErr;
    }

    @Override // com.yftech.avmservice.common.IMcuCommListener
    public void onMcuMessageCallBack(ByteBuffer byteBuffer, int i) {
        onMcuProcotol(byteBuffer, i);
    }

    public void onMcuProcotol(ByteBuffer byteBuffer, int i) {
        byteBuffer.position(0);
        byteBuffer.get();
        byte b = byteBuffer.get();
        byte b2 = byteBuffer.get();
        if (b == 96 && b2 == 0) {
            long j = ((long) ((byteBuffer.get() & 255) << 24)) + ((long) ((byteBuffer.get() & 255) << 16)) + ((long) ((byteBuffer.get() & 255) << 8)) + ((long) (byteBuffer.get() & 255));
            if (j == 835 || j == 839) {
                onRadarChange(byteBuffer);
            }
        }
    }

    public void onRadarChange(ByteBuffer byteBuffer) {
        if (byteBuffer.limit() < 16) {
            LogUtil.d(TAG, "onRadarChange ByteBuffer size err:" + byteBuffer.limit(), new Object[0]);
            return;
        }
        this.mIsRadarProcotolUpdate = true;
        byteBuffer.position(3);
        long j = ((long) (byteBuffer.get() << 24)) + ((long) (byteBuffer.get() << 16)) + ((long) (byteBuffer.get() << 8)) + ((long) byteBuffer.get());
        byteBuffer.get();
        if (j == 835) {
            byte b = byteBuffer.get();
            this.mRadarInfo.PAS_SystemType = (byte) (b & 3);
            this.mRadarInfo.PAS_RPASysFailureFlag = (byte) (3 & (b >> 2));
            this.mRadarInfo.PAS_WarnTone = (byte) ((b >> 4) & 15);
            this.mRadarInfo.PAS_ButtonPress = (byte) (1 & byteBuffer.get());
            this.mRadarInfo.rightCenterBackDis = getRearRadarMidLevel(byteBuffer.get());
            this.mRadarInfo.leftCenterBackDis = getRearRadarMidLevel(byteBuffer.get());
            this.mRadarInfo.rightBackDis = getRearRadarLevel(byteBuffer.get());
            this.mRadarInfo.leftBackDis = getRearRadarLevel(byteBuffer.get());
        } else if (j == 839) {
            this.mRadarInfo.rightFrontDis = getFrontRadarLevel(byteBuffer.get());
            this.mRadarInfo.leftFrontDis = getFrontRadarLevel(byteBuffer.get());
            this.mRadarInfo.rightCenterFrontDis = getFrontRadarLevel(byteBuffer.get());
            this.mRadarInfo.leftCenterFrontDis = getFrontRadarLevel(byteBuffer.get());
            this.mRadarInfo.PAS_FSRSideDistance = byteBuffer.get();
            this.mRadarInfo.PAS_FSLSideDistance = byteBuffer.get();
            byte b2 = byteBuffer.get();
            this.mRadarInfo.rightCenterBackSensorFaultSts = (byte) (b2 & 1);
            this.mRadarInfo.leftCenterBackSensorFaultSts = (byte) ((b2 >> 1) & 1);
            this.mRadarInfo.rightBackSensorFaultSts = (byte) ((b2 >> 2) & 1);
            this.mRadarInfo.leftBackSensorFaultSts = (byte) ((b2 >> 3) & 1);
            this.mRadarInfo.rightCenterFrontSensorFaultSts = (byte) ((b2 >> 4) & 1);
            this.mRadarInfo.leftCenterFrontSensorFaultSts = (byte) ((b2 >> 5) & 1);
            this.mRadarInfo.rightFrontSensorFaultSts = (byte) ((b2 >> 6) & 1);
            this.mRadarInfo.leftFrontSensorFaultSts = (byte) ((b2 >> 7) & 1);
            byte b3 = byteBuffer.get();
            this.mRadarInfo.PAS_CtrlModulerrFlag = (byte) ((b3 >> 4) & 1);
            this.mRadarInfo.PAS_BattVoltErrFlag = (byte) ((b3 >> 5) & 1);
        }
        if (this.mRadarListener != null) {
            LogUtil.d(TAG, "Sys fault:" + ((int) this.mRadarInfo.PAS_RPASysFailureFlag), new Object[0]);
            LogUtil.d(TAG, "rear fault:" + ((int) this.mRadarInfo.rightCenterBackSensorFaultSts) + "," + ((int) this.mRadarInfo.leftCenterBackSensorFaultSts) + "," + ((int) this.mRadarInfo.rightBackSensorFaultSts) + "," + ((int) this.mRadarInfo.leftBackSensorFaultSts), new Object[0]);
            this.mRadarListener.onRadarInfo(this.mRadarInfo);
        }
    }

    @Override // com.yftech.avmservice.common.IRadarControl
    public boolean requestRadarClose() {
        return false;
    }

    @Override // com.yftech.avmservice.common.IRadarControl
    public boolean requestRadarOpen() {
        return false;
    }

    @Override // com.yftech.avmservice.common.IRadarControl
    public void setRadarListener(IRadarControl.IRadarListener iRadarListener) {
        this.mRadarListener = iRadarListener;
    }
}
