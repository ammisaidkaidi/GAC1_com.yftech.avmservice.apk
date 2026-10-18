package com.yftech.avmservice.util;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import com.yftech.avmservice.R;
import com.yftech.avmservice.avm.AudioFocus;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class TonePlay {
    private static final int AUDIO_FORMAT = 2;
    private static final int CHANNEL_CONFIG = 4;
    private static final int SAMPLE_RATE = 48000;
    private static final int STREAM_TYPE = 28;
    private static final String TAG = "TonePlay";
    private AudioTrack audioTrack;
    private int bufferSize;
    private Context mContext;
    private boolean isPlaying = false;
    byte[] byteData = null;

    public TonePlay(Context context) {
        this.mContext = null;
        this.mContext = context;
    }

    private void getFileData(int i) {
        int i2;
        switch (i) {
            case 0:
                i2 = R.raw.warntone1;
                break;
            case 1:
                i2 = R.raw.warntone2;
                break;
            case 2:
                i2 = R.raw.warntone3;
                break;
            case 3:
                i2 = R.raw.warntone4;
                break;
            default:
                i2 = 0;
                break;
        }
        InputStream inputStreamOpenRawResource = this.mContext.getResources().openRawResource(i2);
        try {
            this.byteData = new byte[inputStreamOpenRawResource.available()];
        } catch (IOException e) {
            e.printStackTrace();
        }
        try {
            inputStreamOpenRawResource.read(this.byteData);
            inputStreamOpenRawResource.close();
        } catch (FileNotFoundException e2) {
            e2.printStackTrace();
        } catch (IOException e3) {
            e3.printStackTrace();
        }
    }

    public void playWarnTone(int i) {
        if (i < 0 && i > 4) {
            LogUtil.d(TAG, "sound index err " + i, new Object[0]);
        }
        AudioAttributes audioAttributesBuild = new AudioAttributes.Builder().setLegacyStreamType(28).build();
        AudioFormat audioFormatBuild = new AudioFormat.Builder().setSampleRate(SAMPLE_RATE).setChannelMask(4).setEncoding(2).build();
        this.bufferSize = AudioTrack.getMinBufferSize(SAMPLE_RATE, 4, 2);
        LogUtil.d(TAG, "bufferSize: " + this.bufferSize, new Object[0]);
        getFileData(i);
        if (this.byteData != null) {
            LogUtil.d(TAG, "byteData len: " + this.byteData.length, new Object[0]);
            try {
                this.audioTrack = new AudioTrack(audioAttributesBuild, audioFormatBuild, this.byteData.length - 44, 0, 0);
            } catch (IllegalArgumentException e) {
                e.printStackTrace();
            }
            AudioFocus.getInstance().requestRadarFocus();
            this.audioTrack.write(this.byteData, 44, this.byteData.length - 44);
            this.audioTrack.setLoopPoints(0, (this.byteData.length - 44) / 2, -1);
            this.audioTrack.play();
            this.isPlaying = true;
        }
        LogUtil.d(TAG, "play WarnTone, index:" + i, new Object[0]);
    }

    public void stopAllWarnTone() {
        LogUtil.d(TAG, "stop WarnTone", new Object[0]);
        if (this.audioTrack != null) {
            this.audioTrack.stop();
            this.audioTrack.release();
            this.audioTrack = null;
            this.isPlaying = false;
            AudioFocus.getInstance().abandonRadarFocus();
        }
    }
}
