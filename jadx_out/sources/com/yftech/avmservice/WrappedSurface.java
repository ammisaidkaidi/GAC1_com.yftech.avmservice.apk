package com.yftech.avmservice;

import android.view.Surface;

/* JADX INFO: loaded from: classes.dex */
public class WrappedSurface {
    boolean mIsFromBackcar;
    Surface mSurface;

    public WrappedSurface(Surface surface, boolean z) {
        this.mSurface = surface;
        this.mIsFromBackcar = z;
    }

    public boolean isValid() {
        return this.mSurface.isValid();
    }

    public String toString() {
        return this.mSurface.toString();
    }
}
