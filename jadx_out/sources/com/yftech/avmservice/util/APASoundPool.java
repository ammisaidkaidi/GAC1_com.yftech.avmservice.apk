package com.yftech.avmservice.util;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.SoundPool;
import com.yftech.avmservice.R;

/* JADX INFO: loaded from: classes.dex */
public class APASoundPool implements SoundPool.OnLoadCompleteListener {
    private static final int MAX_PLAYING_SUM = 2;
    public final String TAG = MySoundPool.class.getSimpleName();
    private int mAPASoundId1;
    private int mAPASoundId2;
    private Context mContext;
    private SoundPool mSoundPool;

    public APASoundPool(Context context) {
        this.mContext = context;
        InitSound();
    }

    public void InitSound() {
        this.mSoundPool = new SoundPool.Builder().setMaxStreams(2).setAudioAttributes(new AudioAttributes.Builder().setUsage(13).setContentType(4).build()).build();
        this.mSoundPool.setOnLoadCompleteListener(this);
        this.mAPASoundId1 = this.mSoundPool.load(this.mContext, R.raw.apa1, 1);
        this.mAPASoundId2 = this.mSoundPool.load(this.mContext, R.raw.apa2, 1);
    }

    @Override // android.media.SoundPool.OnLoadCompleteListener
    public void onLoadComplete(SoundPool soundPool, int i, int i2) {
        LogUtil.d(this.TAG, "onLoadComplete " + i, new Object[0]);
    }

    public void playReverseEffectAPA1() {
        int iPlay = this.mSoundPool.play(this.mAPASoundId1, 0.17541552f, 0.17541552f, 1, 0, 1.0f);
        LogUtil.i(this.TAG, "playReverseEffectAPA1  streamID = " + iPlay, new Object[0]);
    }

    public void playReverseEffectAPA2() {
        int iPlay = this.mSoundPool.play(this.mAPASoundId2, 0.17541552f, 0.17541552f, 1, 0, 1.0f);
        LogUtil.i(this.TAG, "playReverseEffectAPA2  streamID = " + iPlay, new Object[0]);
    }
}
