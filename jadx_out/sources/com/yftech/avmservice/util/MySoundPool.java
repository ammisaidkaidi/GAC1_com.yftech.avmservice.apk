package com.yftech.avmservice.util;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.SoundPool;
import com.yftech.avmservice.R;

/* JADX INFO: loaded from: classes.dex */
public class MySoundPool implements SoundPool.OnLoadCompleteListener {
    private static final int MAX_PLAYING_SUM = 1;
    public final String TAG = MySoundPool.class.getSimpleName();
    private Context mContext;
    private int mReverseSoundId;
    private SoundPool mSoundPool;

    public MySoundPool(Context context) {
        this.mContext = context;
        InitSound();
    }

    public void InitSound() {
        this.mSoundPool = new SoundPool.Builder().setMaxStreams(1).setAudioAttributes(new AudioAttributes.Builder().setUsage(13).setContentType(4).build()).build();
        this.mSoundPool.setOnLoadCompleteListener(this);
        this.mReverseSoundId = this.mSoundPool.load(this.mContext, R.raw.reverse, 1);
    }

    @Override // android.media.SoundPool.OnLoadCompleteListener
    public void onLoadComplete(SoundPool soundPool, int i, int i2) {
        LogUtil.d(this.TAG, "onLoadComplete " + i, new Object[0]);
    }

    public void playReverseEffect() {
        int iPlay = this.mSoundPool.play(this.mReverseSoundId, 0.052624658f, 0.052624658f, 1, 0, 1.0f);
        LogUtil.i(this.TAG, "playReverseEffect  streamID = " + iPlay, new Object[0]);
    }
}
