package com.yftech.avmservice.windowutil;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.widget.RelativeLayout;
import com.yftech.avmservice.util.LogUtil;

/* JADX INFO: loaded from: classes.dex */
public class CustomRelativeLayout extends RelativeLayout {
    private OnKeyEventListener mKeyListener;

    public interface OnKeyEventListener {
        boolean dispatchKeyEvent(KeyEvent keyEvent);
    }

    public CustomRelativeLayout(Context context) {
        super(context);
    }

    public CustomRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CustomRelativeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public CustomRelativeLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        LogUtil.d("CustomRelativeLayout", "key:" + keyEvent.getKeyCode(), new Object[0]);
        if (this.mKeyListener == null) {
            return true;
        }
        this.mKeyListener.dispatchKeyEvent(keyEvent);
        return true;
    }

    public void setOnKeyEventListener(OnKeyEventListener onKeyEventListener) {
        this.mKeyListener = onKeyEventListener;
    }
}
