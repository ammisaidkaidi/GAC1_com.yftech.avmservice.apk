package com.yftech.avmservice;

import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
public class State implements IState {
    protected State() {
    }

    @Override // com.yftech.avmservice.IState
    public void enter() {
    }

    @Override // com.yftech.avmservice.IState
    public void exit() {
    }

    @Override // com.yftech.avmservice.IState
    public String getName() {
        String name = getClass().getName();
        return name.substring(name.lastIndexOf(36) + 1);
    }

    @Override // com.yftech.avmservice.IState
    public boolean processMessage(Message message) {
        return false;
    }
}
