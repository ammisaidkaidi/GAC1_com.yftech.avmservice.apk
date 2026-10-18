package com.yftech.avmservice.common;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes.dex */
public class Archiver {
    public static final String BRIGHT_NESS = "bright_ness";
    public static final String SHARED_PREFERENCE_NAME = "avm_data";
    private Context mContext;

    public Archiver(Context context) {
        this.mContext = context;
    }

    public int decodeIntForKey(String str) {
        return this.mContext.getSharedPreferences(SHARED_PREFERENCE_NAME, 0).getInt(str, 0);
    }

    public boolean encodeIntForKey(int i, String str) {
        if (this.mContext == null) {
            return false;
        }
        SharedPreferences.Editor editorEdit = this.mContext.getSharedPreferences(SHARED_PREFERENCE_NAME, 0).edit();
        editorEdit.putInt(str, i);
        editorEdit.apply();
        return true;
    }

    public boolean isContains(String str) {
        return this.mContext.getSharedPreferences(SHARED_PREFERENCE_NAME, 0).contains(str);
    }
}
