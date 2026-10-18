package com.yftech.avmservice.activity;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.FrameLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import com.yftech.avmservice.R;
import com.yftech.avmservice.Resolution;
import com.yftech.avmservice.util.LogUtil;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class RecordSettingsView extends FrameLayout {
    private static final String TAG = "RecordSettingsView";
    private Spinner mDurationSpinner;
    private int[] mDurations;
    private RecordSettingsListener mListener;
    private Spinner mResolutionSpinner;
    private List<Resolution> mResolutions;

    public interface RecordSettingsListener {
        void onDurationChanged(View view, int i);

        void onResolutionChanged(View view, int i, int i2);
    }

    public RecordSettingsView(Context context) {
        this(context, null);
    }

    public RecordSettingsView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mDurations = new int[]{3, 5, 10};
        initView(context);
    }

    private int getMaximumResolution(List<Resolution> list) {
        int i;
        Resolution resolution = new Resolution(0, 0);
        if (list == null || list.size() <= 0) {
            i = 0;
        } else {
            Resolution resolution2 = resolution;
            i = 0;
            for (int i2 = 0; i2 < list.size(); i2++) {
                Resolution resolution3 = list.get(i2);
                if (resolution3.getWidth() > resolution2.getWidth() || (resolution3.getWidth() == resolution2.getWidth() && resolution3.getHeight() > resolution2.getHeight())) {
                    i = i2;
                    resolution2 = resolution3;
                }
            }
            resolution = resolution2;
        }
        LogUtil.d(TAG, "getMaximumResolution is (" + resolution.getWidth() + "," + resolution.getHeight() + ")", new Object[0]);
        return i;
    }

    private String[] getResolutionStr(List<Resolution> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        String[] strArr = new String[list.size()];
        for (int i = 0; i < list.size(); i++) {
            Resolution resolution = list.get(i);
            strArr[i] = String.format("%d*%d", Integer.valueOf(resolution.getWidth()), Integer.valueOf(resolution.getHeight()));
        }
        return strArr;
    }

    private void initView(Context context) {
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.record_settings_layout, (ViewGroup) this, true);
        this.mDurationSpinner = (Spinner) viewInflate.findViewById(R.id.spinner_duration);
        this.mResolutionSpinner = (Spinner) viewInflate.findViewById(R.id.spinner_resolution);
        this.mDurationSpinner.setAdapter((SpinnerAdapter) new ArrayAdapter(context, android.R.layout.simple_spinner_dropdown_item, new String[]{"3min", "5min", "10min"}));
        this.mDurationSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.yftech.avmservice.activity.RecordSettingsView.1
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                LogUtil.d(RecordSettingsView.TAG, "Duration position=" + i + ", id=" + j, new Object[0]);
                if (RecordSettingsView.this.mListener != null) {
                    RecordSettingsView.this.mListener.onDurationChanged(RecordSettingsView.this, RecordSettingsView.this.mDurations[i]);
                }
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
                LogUtil.d(RecordSettingsView.TAG, "Duration nothing selected", new Object[0]);
            }
        });
        this.mDurationSpinner.setSelection(1);
        this.mResolutionSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.yftech.avmservice.activity.RecordSettingsView.2
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                LogUtil.d(RecordSettingsView.TAG, "Resolution position=" + i + ", id=" + j, new Object[0]);
                if (RecordSettingsView.this.mListener == null || RecordSettingsView.this.mResolutions == null || RecordSettingsView.this.mResolutions.size() <= i) {
                    return;
                }
                RecordSettingsView.this.mListener.onResolutionChanged(RecordSettingsView.this, ((Resolution) RecordSettingsView.this.mResolutions.get(i)).getWidth(), ((Resolution) RecordSettingsView.this.mResolutions.get(i)).getHeight());
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
                LogUtil.d(RecordSettingsView.TAG, "Resolution nothing selected", new Object[0]);
            }
        });
    }

    public void registerRecordSettingsListener(RecordSettingsListener recordSettingsListener) {
        this.mListener = recordSettingsListener;
    }

    public void unregisterRecordSettingsListener() {
        this.mListener = null;
    }

    public void updateResolution(List<Resolution> list) {
        String[] resolutionStr = getResolutionStr(list);
        if (resolutionStr != null) {
            this.mResolutions = list;
            this.mResolutionSpinner.setAdapter((SpinnerAdapter) new ArrayAdapter(getContext(), android.R.layout.simple_spinner_dropdown_item, resolutionStr));
            this.mResolutionSpinner.setSelection(getMaximumResolution(list));
        }
    }
}
