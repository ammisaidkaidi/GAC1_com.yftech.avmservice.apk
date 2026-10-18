package com.yftech.avmservice.util;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.SoundPool;
import com.yftech.avmservice.R;
import com.yftech.avmservice.avm.AudioFocus;

/* JADX INFO: loaded from: classes.dex */
public class SoundPoolPlayer implements SoundPool.OnLoadCompleteListener {
    public static final int PAS_SOUND_COUNT = 5;
    public static final int PAS_WARN_TONE_1 = 0;
    public static final int PAS_WARN_TONE_2 = 1;
    public static final int PAS_WARN_TONE_3 = 2;
    public static final int PAS_WARN_TONE_4 = 3;
    public static final int PAS_WARN_TONE_5 = 4;
    private static final String TAG = "SoundPoolPlayer";
    private Context mContext;
    private boolean[] mIsWarmTonePlay;
    private SoundPool mSoundPool = null;
    private int[] mWarnToneSoundId;
    private int[] mWarnToneStreamId;

    public SoundPoolPlayer(Context context) {
        this.mContext = null;
        this.mWarnToneSoundId = null;
        this.mWarnToneStreamId = null;
        this.mIsWarmTonePlay = null;
        this.mContext = context;
        this.mWarnToneSoundId = new int[5];
        this.mWarnToneStreamId = new int[5];
        this.mIsWarmTonePlay = new boolean[5];
        InitSound();
    }

    private int play(int i) {
        return this.mSoundPool.play(i, 0.0f, 0.0f, 1, -1, 1.0f);
    }

    public void InitSound() {
        this.mSoundPool = new SoundPool.Builder().setMaxStreams(4).setAudioAttributes(new AudioAttributes.Builder().setLegacyStreamType(28).build()).build();
        this.mSoundPool.setOnLoadCompleteListener(this);
        this.mWarnToneSoundId[0] = this.mSoundPool.load(this.mContext, R.raw.warntone1, 1);
        this.mWarnToneSoundId[1] = this.mSoundPool.load(this.mContext, R.raw.warntone2, 1);
        this.mWarnToneSoundId[2] = this.mSoundPool.load(this.mContext, R.raw.warntone3, 1);
        this.mWarnToneSoundId[3] = this.mSoundPool.load(this.mContext, R.raw.warntone4, 1);
        this.mWarnToneSoundId[4] = this.mSoundPool.load(this.mContext, R.raw.warntone5, 1);
    }

    public void StopWarnTone(int i) {
        if (this.mIsWarmTonePlay[i]) {
            float f = i == 2 ? 0.01395f : i == 1 ? 0.0209f : 0.004f;
            for (int i2 = 0; i2 < 10; i2++) {
                float f2 = (10.0f * f) - (i2 * f);
                this.mSoundPool.setVolume(this.mWarnToneStreamId[i], f2, f2);
                try {
                    Thread.sleep(10L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            this.mSoundPool.stop(this.mWarnToneStreamId[i]);
            LogUtil.d(TAG, "stop WarnTone, index:" + i + " stream id:" + this.mWarnToneStreamId[i], new Object[0]);
            this.mWarnToneStreamId[i] = 0;
            this.mIsWarmTonePlay[i] = false;
            AudioFocus.getInstance().abandonRadarFocus();
        }
    }

    public boolean isWarnTonePlay(int i) {
        return this.mIsWarmTonePlay[i];
    }

    public boolean iswarnTonePlay() {
        for (int i = 0; i < 5; i++) {
            if (this.mIsWarmTonePlay[i]) {
                return true;
            }
        }
        return false;
    }

    @Override // android.media.SoundPool.OnLoadCompleteListener
    public void onLoadComplete(SoundPool soundPool, int i, int i2) {
        LogUtil.d(TAG, "onLoadComplete " + i, new Object[0]);
    }

    public void playWarnTone(int i) {
        if (i < 0 && i > 4) {
            LogUtil.d(TAG, "sound index err " + i, new Object[0]);
        }
        if (this.mIsWarmTonePlay[i]) {
            LogUtil.d(TAG, "WarnTone index:" + i + " already play err!", new Object[0]);
        }
        AudioFocus.getInstance().requestRadarFocus();
        this.mWarnToneStreamId[i] = play(this.mWarnToneSoundId[i]);
        float f = i == 2 ? 0.01395f : i == 1 ? 0.0209f : 0.004f;
        for (int i2 = 0; i2 < 10; i2++) {
            float f2 = i2 * f;
            this.mSoundPool.setVolume(this.mWarnToneStreamId[i], f2, f2);
            try {
                Thread.sleep(10L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        this.mIsWarmTonePlay[i] = true;
        LogUtil.d(TAG, "play WarnTone, index:" + i + " stream id:" + this.mWarnToneStreamId[i], new Object[0]);
    }

    public void stopAllWarnTone() {
        for (int i = 0; i < 5; i++) {
            StopWarnTone(i);
        }
    }
}
