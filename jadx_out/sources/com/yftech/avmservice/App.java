package com.yftech.avmservice;

import android.app.Activity;
import android.app.Application;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class App extends Application {
    private final List<Activity> mActivitys = new ArrayList();

    public void add(Activity activity) {
        this.mActivitys.add(activity);
    }

    public void exitActivity() {
        Iterator<Activity> it = this.mActivitys.iterator();
        while (it.hasNext()) {
            it.next().finish();
        }
    }

    public void remove(Activity activity) {
        this.mActivitys.remove(activity);
    }
}
