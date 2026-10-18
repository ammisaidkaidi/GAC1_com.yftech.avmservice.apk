package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.InputDeviceCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public class LinearLayoutCompat extends ViewGroup {
    public static final int HORIZONTAL = 0;
    private static final int INDEX_BOTTOM = 2;
    private static final int INDEX_CENTER_VERTICAL = 0;
    private static final int INDEX_FILL = 3;
    private static final int INDEX_TOP = 1;
    public static final int SHOW_DIVIDER_BEGINNING = 1;
    public static final int SHOW_DIVIDER_END = 4;
    public static final int SHOW_DIVIDER_MIDDLE = 2;
    public static final int SHOW_DIVIDER_NONE = 0;
    public static final int VERTICAL = 1;
    private static final int VERTICAL_GRAVITY_COUNT = 4;
    private boolean mBaselineAligned;
    private int mBaselineAlignedChildIndex;
    private int mBaselineChildTop;
    private Drawable mDivider;
    private int mDividerHeight;
    private int mDividerPadding;
    private int mDividerWidth;
    private int mGravity;
    private int[] mMaxAscent;
    private int[] mMaxDescent;
    private int mOrientation;
    private int mShowDividers;
    private int mTotalLength;
    private boolean mUseLargestChild;
    private float mWeightSum;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface DividerMode {
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public int gravity;
        public float weight;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.gravity = -1;
            this.weight = 0.0f;
        }

        public LayoutParams(int i, int i2, float f) {
            super(i, i2);
            this.gravity = -1;
            this.weight = f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.gravity = -1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.LinearLayoutCompat_Layout);
            this.weight = typedArrayObtainStyledAttributes.getFloat(R.styleable.LinearLayoutCompat_Layout_android_layout_weight, 0.0f);
            this.gravity = typedArrayObtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_Layout_android_layout_gravity, -1);
            typedArrayObtainStyledAttributes.recycle();
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.gravity = -1;
            this.weight = layoutParams.weight;
            this.gravity = layoutParams.gravity;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.gravity = -1;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.gravity = -1;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface OrientationMode {
    }

    public LinearLayoutCompat(Context context) {
        this(context, null);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mBaselineAligned = true;
        this.mBaselineAlignedChildIndex = -1;
        this.mBaselineChildTop = 0;
        this.mGravity = 8388659;
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, R.styleable.LinearLayoutCompat, i, 0);
        int i2 = tintTypedArrayObtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_android_orientation, -1);
        if (i2 >= 0) {
            setOrientation(i2);
        }
        int i3 = tintTypedArrayObtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_android_gravity, -1);
        if (i3 >= 0) {
            setGravity(i3);
        }
        boolean z = tintTypedArrayObtainStyledAttributes.getBoolean(R.styleable.LinearLayoutCompat_android_baselineAligned, true);
        if (!z) {
            setBaselineAligned(z);
        }
        this.mWeightSum = tintTypedArrayObtainStyledAttributes.getFloat(R.styleable.LinearLayoutCompat_android_weightSum, -1.0f);
        this.mBaselineAlignedChildIndex = tintTypedArrayObtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.mUseLargestChild = tintTypedArrayObtainStyledAttributes.getBoolean(R.styleable.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(R.styleable.LinearLayoutCompat_divider));
        this.mShowDividers = tintTypedArrayObtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_showDividers, 0);
        this.mDividerPadding = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.LinearLayoutCompat_dividerPadding, 0);
        tintTypedArrayObtainStyledAttributes.recycle();
    }

    private void forceUniformHeight(int i, int i2) {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View virtualChildAt = getVirtualChildAt(i3);
            if (virtualChildAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (layoutParams.height == -1) {
                    int i4 = layoutParams.width;
                    layoutParams.width = virtualChildAt.getMeasuredWidth();
                    measureChildWithMargins(virtualChildAt, i2, 0, iMakeMeasureSpec, 0);
                    layoutParams.width = i4;
                }
            }
        }
    }

    private void forceUniformWidth(int i, int i2) {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View virtualChildAt = getVirtualChildAt(i3);
            if (virtualChildAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (layoutParams.width == -1) {
                    int i4 = layoutParams.height;
                    layoutParams.height = virtualChildAt.getMeasuredHeight();
                    measureChildWithMargins(virtualChildAt, iMakeMeasureSpec, 0, i2, 0);
                    layoutParams.height = i4;
                }
            }
        }
    }

    private void setChildFrame(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i3 + i, i4 + i2);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    void drawDividersHorizontal(Canvas canvas) {
        int left;
        int virtualChildCount = getVirtualChildCount();
        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
        for (int i = 0; i < virtualChildCount; i++) {
            View virtualChildAt = getVirtualChildAt(i);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8 && hasDividerBeforeChildAt(i)) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                drawVerticalDivider(canvas, zIsLayoutRtl ? virtualChildAt.getRight() + layoutParams.rightMargin : (virtualChildAt.getLeft() - layoutParams.leftMargin) - this.mDividerWidth);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            if (virtualChildAt2 == null) {
                left = zIsLayoutRtl ? getPaddingLeft() : (getWidth() - getPaddingRight()) - this.mDividerWidth;
            } else {
                LayoutParams layoutParams2 = (LayoutParams) virtualChildAt2.getLayoutParams();
                left = zIsLayoutRtl ? (virtualChildAt2.getLeft() - layoutParams2.leftMargin) - this.mDividerWidth : virtualChildAt2.getRight() + layoutParams2.rightMargin;
            }
            drawVerticalDivider(canvas, left);
        }
    }

    void drawDividersVertical(Canvas canvas) {
        int virtualChildCount = getVirtualChildCount();
        for (int i = 0; i < virtualChildCount; i++) {
            View virtualChildAt = getVirtualChildAt(i);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8 && hasDividerBeforeChildAt(i)) {
                drawHorizontalDivider(canvas, (virtualChildAt.getTop() - ((LayoutParams) virtualChildAt.getLayoutParams()).topMargin) - this.mDividerHeight);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            drawHorizontalDivider(canvas, virtualChildAt2 == null ? (getHeight() - getPaddingBottom()) - this.mDividerHeight : virtualChildAt2.getBottom() + ((LayoutParams) virtualChildAt2.getLayoutParams()).bottomMargin);
        }
    }

    void drawHorizontalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(getPaddingLeft() + this.mDividerPadding, i, (getWidth() - getPaddingRight()) - this.mDividerPadding, this.mDividerHeight + i);
        this.mDivider.draw(canvas);
    }

    void drawVerticalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(i, getPaddingTop() + this.mDividerPadding, this.mDividerWidth + i, (getHeight() - getPaddingBottom()) - this.mDividerPadding);
        this.mDivider.draw(canvas);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        if (this.mOrientation == 0) {
            return new LayoutParams(-2, -2);
        }
        if (this.mOrientation == 1) {
            return new LayoutParams(-1, -2);
        }
        return null;
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // android.view.View
    public int getBaseline() {
        int i;
        if (this.mBaselineAlignedChildIndex < 0) {
            return super.getBaseline();
        }
        if (getChildCount() <= this.mBaselineAlignedChildIndex) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(this.mBaselineAlignedChildIndex);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.mBaselineAlignedChildIndex == 0) {
                return -1;
            }
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
        int bottom = this.mBaselineChildTop;
        if (this.mOrientation == 1 && (i = this.mGravity & com.yftech.avmservice.R.styleable.AppCompatTheme_windowActionBarOverlay) != 48) {
            if (i == 16) {
                bottom += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.mTotalLength) / 2;
            } else if (i == 80) {
                bottom = ((getBottom() - getTop()) - getPaddingBottom()) - this.mTotalLength;
            }
        }
        return bottom + ((LayoutParams) childAt.getLayoutParams()).topMargin + baseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.mBaselineAlignedChildIndex;
    }

    int getChildrenSkipCount(View view, int i) {
        return 0;
    }

    public Drawable getDividerDrawable() {
        return this.mDivider;
    }

    public int getDividerPadding() {
        return this.mDividerPadding;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getDividerWidth() {
        return this.mDividerWidth;
    }

    public int getGravity() {
        return this.mGravity;
    }

    int getLocationOffset(View view) {
        return 0;
    }

    int getNextLocationOffset(View view) {
        return 0;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public int getShowDividers() {
        return this.mShowDividers;
    }

    View getVirtualChildAt(int i) {
        return getChildAt(i);
    }

    int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.mWeightSum;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    protected boolean hasDividerBeforeChildAt(int i) {
        if (i == 0) {
            return (this.mShowDividers & 1) != 0;
        }
        if (i == getChildCount()) {
            return (this.mShowDividers & 4) != 0;
        }
        if ((this.mShowDividers & 2) == 0) {
            return false;
        }
        for (int i2 = i - 1; i2 >= 0; i2--) {
            if (getChildAt(i2).getVisibility() != 8) {
                return true;
            }
        }
        return false;
    }

    public boolean isBaselineAligned() {
        return this.mBaselineAligned;
    }

    public boolean isMeasureWithLargestChildEnabled() {
        return this.mUseLargestChild;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:33:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:35:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:37:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:39:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:41:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:43:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:45:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:46:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:48:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:51:0x010a  */
    void layoutHorizontal(int i, int i2, int i3, int i4) {
        int paddingLeft;
        int i5;
        int i6;
        boolean z;
        int i7;
        int baseline;
        int i8;
        int i9;
        int i10;
        int i11;
        int measuredHeight;
        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
        int paddingTop = getPaddingTop();
        int i12 = i4 - i2;
        int paddingBottom = i12 - getPaddingBottom();
        int paddingBottom2 = (i12 - paddingTop) - getPaddingBottom();
        int virtualChildCount = getVirtualChildCount();
        int i13 = this.mGravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        int i14 = this.mGravity & com.yftech.avmservice.R.styleable.AppCompatTheme_windowActionBarOverlay;
        boolean z2 = this.mBaselineAligned;
        int[] iArr = this.mMaxAscent;
        int[] iArr2 = this.mMaxDescent;
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i13, ViewCompat.getLayoutDirection(this));
        boolean z3 = true;
        if (absoluteGravity != 1) {
            paddingLeft = absoluteGravity != 5 ? getPaddingLeft() : ((getPaddingLeft() + i3) - i) - this.mTotalLength;
        } else {
            paddingLeft = (((i3 - i) - this.mTotalLength) / 2) + getPaddingLeft();
        }
        if (zIsLayoutRtl) {
            i5 = virtualChildCount - 1;
            i6 = -1;
        } else {
            i5 = 0;
            i6 = 1;
        }
        int childrenSkipCount = 0;
        while (childrenSkipCount < virtualChildCount) {
            int i15 = i5 + (i6 * childrenSkipCount);
            View virtualChildAt = getVirtualChildAt(i15);
            if (virtualChildAt == null) {
                paddingLeft += measureNullChild(i15);
                z = z3;
            } else {
                if (virtualChildAt.getVisibility() != 8) {
                    int measuredWidth = virtualChildAt.getMeasuredWidth();
                    int measuredHeight2 = virtualChildAt.getMeasuredHeight();
                    LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                    if (z2) {
                        i7 = childrenSkipCount;
                        virtualChildCount = virtualChildCount;
                        baseline = layoutParams.height != -1 ? virtualChildAt.getBaseline() : -1;
                        i8 = layoutParams.gravity;
                        if (i8 < 0) {
                            i8 = i14;
                        }
                        i9 = i8 & com.yftech.avmservice.R.styleable.AppCompatTheme_windowActionBarOverlay;
                        i14 = i14;
                        if (i9 != 16) {
                            z = true;
                            i10 = ((((paddingBottom2 - measuredHeight2) / 2) + paddingTop) + layoutParams.topMargin) - layoutParams.bottomMargin;
                        } else if (i9 != 48) {
                            if (i9 != 80) {
                                i10 = paddingTop;
                            } else {
                                measuredHeight = (paddingBottom - measuredHeight2) - layoutParams.bottomMargin;
                                if (baseline != -1) {
                                    measuredHeight -= iArr2[2] - (virtualChildAt.getMeasuredHeight() - baseline);
                                }
                                i10 = measuredHeight;
                            }
                            z = true;
                        } else {
                            i11 = layoutParams.topMargin + paddingTop;
                            if (baseline != -1) {
                                z = true;
                                i11 += iArr[1] - baseline;
                            } else {
                                z = true;
                            }
                            i10 = i11;
                        }
                        if (hasDividerBeforeChildAt(i15)) {
                            paddingLeft += this.mDividerWidth;
                        }
                        int i16 = layoutParams.leftMargin + paddingLeft;
                        paddingTop = paddingTop;
                        setChildFrame(virtualChildAt, i16 + getLocationOffset(virtualChildAt), i10, measuredWidth, measuredHeight2);
                        int nextLocationOffset = i16 + measuredWidth + layoutParams.rightMargin + getNextLocationOffset(virtualChildAt);
                        childrenSkipCount = i7 + getChildrenSkipCount(virtualChildAt, i15);
                        paddingLeft = nextLocationOffset;
                    } else {
                        i7 = childrenSkipCount;
                        virtualChildCount = virtualChildCount;
                    }
                    i8 = layoutParams.gravity;
                    if (i8 < 0) {
                        i8 = i14;
                    }
                    i9 = i8 & com.yftech.avmservice.R.styleable.AppCompatTheme_windowActionBarOverlay;
                    i14 = i14;
                    if (i9 != 16) {
                        z = true;
                        i10 = ((((paddingBottom2 - measuredHeight2) / 2) + paddingTop) + layoutParams.topMargin) - layoutParams.bottomMargin;
                    } else if (i9 != 48) {
                        if (i9 != 80) {
                            i10 = paddingTop;
                        } else {
                            measuredHeight = (paddingBottom - measuredHeight2) - layoutParams.bottomMargin;
                            if (baseline != -1) {
                                measuredHeight -= iArr2[2] - (virtualChildAt.getMeasuredHeight() - baseline);
                            }
                            i10 = measuredHeight;
                        }
                        z = true;
                    } else {
                        i11 = layoutParams.topMargin + paddingTop;
                        if (baseline != -1) {
                            z = true;
                            i11 += iArr[1] - baseline;
                        } else {
                            z = true;
                        }
                        i10 = i11;
                    }
                    if (hasDividerBeforeChildAt(i15)) {
                        paddingLeft += this.mDividerWidth;
                    }
                    int i17 = layoutParams.leftMargin + paddingLeft;
                    paddingTop = paddingTop;
                    setChildFrame(virtualChildAt, i17 + getLocationOffset(virtualChildAt), i10, measuredWidth, measuredHeight2);
                    int nextLocationOffset2 = i17 + measuredWidth + layoutParams.rightMargin + getNextLocationOffset(virtualChildAt);
                    childrenSkipCount = i7 + getChildrenSkipCount(virtualChildAt, i15);
                    paddingLeft = nextLocationOffset2;
                } else {
                    z = true;
                }
                childrenSkipCount++;
                z3 = z;
                virtualChildCount = virtualChildCount;
                i14 = i14;
                paddingTop = paddingTop;
            }
            childrenSkipCount++;
            z3 = z;
            virtualChildCount = virtualChildCount;
            i14 = i14;
            paddingTop = paddingTop;
        }
    }

    void layoutVertical(int i, int i2, int i3, int i4) {
        int paddingTop;
        int i5;
        int i6;
        int paddingLeft = getPaddingLeft();
        int i7 = i3 - i;
        int paddingRight = i7 - getPaddingRight();
        int paddingRight2 = (i7 - paddingLeft) - getPaddingRight();
        int virtualChildCount = getVirtualChildCount();
        int i8 = this.mGravity & com.yftech.avmservice.R.styleable.AppCompatTheme_windowActionBarOverlay;
        int i9 = this.mGravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i8 != 16) {
            paddingTop = i8 != 80 ? getPaddingTop() : ((getPaddingTop() + i4) - i2) - this.mTotalLength;
        } else {
            paddingTop = (((i4 - i2) - this.mTotalLength) / 2) + getPaddingTop();
        }
        int childrenSkipCount = 0;
        while (childrenSkipCount < virtualChildCount) {
            View virtualChildAt = getVirtualChildAt(childrenSkipCount);
            if (virtualChildAt == null) {
                paddingTop += measureNullChild(childrenSkipCount);
            } else {
                if (virtualChildAt.getVisibility() != 8) {
                    int measuredWidth = virtualChildAt.getMeasuredWidth();
                    int measuredHeight = virtualChildAt.getMeasuredHeight();
                    LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                    int i10 = layoutParams.gravity;
                    if (i10 < 0) {
                        i10 = i9;
                    }
                    int absoluteGravity = GravityCompat.getAbsoluteGravity(i10, ViewCompat.getLayoutDirection(this)) & 7;
                    if (absoluteGravity != 1) {
                        i5 = absoluteGravity != 5 ? layoutParams.leftMargin + paddingLeft : (paddingRight - measuredWidth) - layoutParams.rightMargin;
                    } else {
                        i5 = ((((paddingRight2 - measuredWidth) / 2) + paddingLeft) + layoutParams.leftMargin) - layoutParams.rightMargin;
                    }
                    int i11 = i5;
                    if (hasDividerBeforeChildAt(childrenSkipCount)) {
                        paddingTop += this.mDividerHeight;
                    }
                    int i12 = paddingTop + layoutParams.topMargin;
                    setChildFrame(virtualChildAt, i11, i12 + getLocationOffset(virtualChildAt), measuredWidth, measuredHeight);
                    int nextLocationOffset = i12 + measuredHeight + layoutParams.bottomMargin + getNextLocationOffset(virtualChildAt);
                    childrenSkipCount += getChildrenSkipCount(virtualChildAt, childrenSkipCount);
                    paddingTop = nextLocationOffset;
                    i6 = 1;
                }
                childrenSkipCount += i6;
            }
            i6 = 1;
            childrenSkipCount += i6;
        }
    }

    void measureChildBeforeLayout(View view, int i, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    /* JADX WARN: Code duplicated, block: B:201:0x047c  */
    /* JADX WARN: Code duplicated, block: B:60:0x0174  */
    /* JADX WARN: Code duplicated, block: B:67:0x0196  */
    /* JADX WARN: Code duplicated, block: B:68:0x0199  */
    /* JADX WARN: Code duplicated, block: B:75:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:78:0x01ce A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:80:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:83:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:85:0x01e0  */
    void measureHorizontal(int i, int i2) {
        int[] iArr;
        int i3;
        int iMax;
        int i4;
        int i5;
        int baseline;
        int i6;
        byte b;
        int i7;
        int i8;
        boolean z;
        boolean z2;
        View view;
        int i9;
        boolean z3;
        int i10;
        int measuredHeight;
        boolean z4;
        int baseline2;
        int i11;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        if (this.mMaxAscent == null || this.mMaxDescent == null) {
            this.mMaxAscent = new int[4];
            this.mMaxDescent = new int[4];
        }
        int[] iArr2 = this.mMaxAscent;
        int[] iArr3 = this.mMaxDescent;
        iArr2[3] = -1;
        iArr2[2] = -1;
        iArr2[1] = -1;
        iArr2[0] = -1;
        iArr3[3] = -1;
        iArr3[2] = -1;
        iArr3[1] = -1;
        iArr3[0] = -1;
        boolean z5 = this.mBaselineAligned;
        boolean z6 = this.mUseLargestChild;
        int i12 = 1073741824;
        boolean z7 = mode == 1073741824;
        int childrenSkipCount = 0;
        int iMax2 = 0;
        int i13 = 0;
        boolean z8 = false;
        int iMax3 = 0;
        int iMax4 = 0;
        int i14 = 0;
        boolean z9 = false;
        boolean z10 = true;
        float f = 0.0f;
        while (true) {
            iArr = iArr3;
            if (childrenSkipCount >= virtualChildCount) {
                break;
            }
            View virtualChildAt = getVirtualChildAt(childrenSkipCount);
            if (virtualChildAt == null) {
                this.mTotalLength += measureNullChild(childrenSkipCount);
            } else {
                if (virtualChildAt.getVisibility() == 8) {
                    childrenSkipCount += getChildrenSkipCount(virtualChildAt, childrenSkipCount);
                } else {
                    if (hasDividerBeforeChildAt(childrenSkipCount)) {
                        this.mTotalLength += this.mDividerWidth;
                    }
                    LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                    float f2 = f + layoutParams.weight;
                    if (mode == i12 && layoutParams.width == 0 && layoutParams.weight > 0.0f) {
                        if (z7) {
                            this.mTotalLength += layoutParams.leftMargin + layoutParams.rightMargin;
                        } else {
                            int i15 = this.mTotalLength;
                            this.mTotalLength = Math.max(i15, layoutParams.leftMargin + i15 + layoutParams.rightMargin);
                        }
                        if (z5) {
                            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                            virtualChildAt.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                            i8 = childrenSkipCount;
                            z = z6;
                            z2 = z5;
                            view = virtualChildAt;
                        } else {
                            i8 = childrenSkipCount;
                            z = z6;
                            z2 = z5;
                            view = virtualChildAt;
                            z8 = true;
                            i9 = 1073741824;
                        }
                        if (mode2 == i9 && layoutParams.height == -1) {
                            z3 = true;
                            z9 = true;
                        } else {
                            z3 = false;
                        }
                        i10 = layoutParams.topMargin + layoutParams.bottomMargin;
                        measuredHeight = view.getMeasuredHeight() + i10;
                        int iCombineMeasuredStates = View.combineMeasuredStates(i14, view.getMeasuredState());
                        if (z2 && (baseline2 = view.getBaseline()) != -1) {
                            if (layoutParams.gravity < 0) {
                                i11 = this.mGravity;
                            } else {
                                i11 = layoutParams.gravity;
                            }
                            int i16 = (((i11 & com.yftech.avmservice.R.styleable.AppCompatTheme_windowActionBarOverlay) >> 4) & (-2)) >> 1;
                            iArr2[i16] = Math.max(iArr2[i16], baseline2);
                            iArr[i16] = Math.max(iArr[i16], measuredHeight - baseline2);
                        }
                        int iMax5 = Math.max(i13, measuredHeight);
                        if (z10 || layoutParams.height != -1) {
                            z4 = false;
                        } else {
                            z4 = true;
                        }
                        if (layoutParams.weight > 0.0f) {
                            if (!z3) {
                                i10 = measuredHeight;
                            }
                            iMax4 = Math.max(iMax4, i10);
                        } else {
                            int i17 = iMax4;
                            if (z3) {
                                measuredHeight = i10;
                            }
                            iMax3 = Math.max(iMax3, measuredHeight);
                            iMax4 = i17;
                        }
                        int i18 = i8;
                        i13 = iMax5;
                        i14 = iCombineMeasuredStates;
                        z10 = z4;
                        childrenSkipCount = getChildrenSkipCount(view, i18) + i18;
                        f = f2;
                    } else {
                        if (layoutParams.width != 0 || layoutParams.weight <= 0.0f) {
                            b = -2;
                            i7 = Integer.MIN_VALUE;
                        } else {
                            b = -2;
                            layoutParams.width = -2;
                            i7 = 0;
                        }
                        i8 = childrenSkipCount;
                        int i19 = i7;
                        z = z6;
                        z2 = z5;
                        measureChildBeforeLayout(virtualChildAt, i8, i, f2 == 0.0f ? this.mTotalLength : 0, i2, 0);
                        if (i19 != Integer.MIN_VALUE) {
                            layoutParams.width = i19;
                        }
                        int measuredWidth = virtualChildAt.getMeasuredWidth();
                        if (z7) {
                            view = virtualChildAt;
                            this.mTotalLength += layoutParams.leftMargin + measuredWidth + layoutParams.rightMargin + getNextLocationOffset(view);
                        } else {
                            view = virtualChildAt;
                            int i20 = this.mTotalLength;
                            this.mTotalLength = Math.max(i20, i20 + measuredWidth + layoutParams.leftMargin + layoutParams.rightMargin + getNextLocationOffset(view));
                        }
                        if (z) {
                            iMax2 = Math.max(measuredWidth, iMax2);
                        }
                    }
                    i9 = 1073741824;
                    if (mode2 == i9) {
                        z3 = false;
                    } else {
                        z3 = false;
                    }
                    i10 = layoutParams.topMargin + layoutParams.bottomMargin;
                    measuredHeight = view.getMeasuredHeight() + i10;
                    int iCombineMeasuredStates2 = View.combineMeasuredStates(i14, view.getMeasuredState());
                    if (z2) {
                        if (layoutParams.gravity < 0) {
                            i11 = this.mGravity;
                        } else {
                            i11 = layoutParams.gravity;
                        }
                        int i110 = (((i11 & com.yftech.avmservice.R.styleable.AppCompatTheme_windowActionBarOverlay) >> 4) & (-2)) >> 1;
                        iArr2[i110] = Math.max(iArr2[i110], baseline2);
                        iArr[i110] = Math.max(iArr[i110], measuredHeight - baseline2);
                    }
                    int iMax6 = Math.max(i13, measuredHeight);
                    if (z10) {
                        z4 = false;
                    } else {
                        z4 = false;
                    }
                    if (layoutParams.weight > 0.0f) {
                        if (!z3) {
                            i10 = measuredHeight;
                        }
                        iMax4 = Math.max(iMax4, i10);
                    } else {
                        int i111 = iMax4;
                        if (z3) {
                            measuredHeight = i10;
                        }
                        iMax3 = Math.max(iMax3, measuredHeight);
                        iMax4 = i111;
                    }
                    int i112 = i8;
                    i13 = iMax6;
                    i14 = iCombineMeasuredStates2;
                    z10 = z4;
                    childrenSkipCount = getChildrenSkipCount(view, i112) + i112;
                    f = f2;
                }
                childrenSkipCount++;
                iArr3 = iArr;
                z6 = z;
                z5 = z2;
                i12 = 1073741824;
            }
            z = z6;
            z2 = z5;
            childrenSkipCount++;
            iArr3 = iArr;
            z6 = z;
            z5 = z2;
            i12 = 1073741824;
        }
        boolean z11 = z6;
        boolean z12 = z5;
        int iMax7 = i13;
        int i21 = iMax3;
        int i22 = iMax4;
        int i23 = i14;
        if (this.mTotalLength > 0 && hasDividerBeforeChildAt(virtualChildCount)) {
            this.mTotalLength += this.mDividerWidth;
        }
        if (iArr2[1] != -1 || iArr2[0] != -1 || iArr2[2] != -1 || iArr2[3] != -1) {
            iMax7 = Math.max(iMax7, Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))));
        }
        if (z11 && (mode == Integer.MIN_VALUE || mode == 0)) {
            this.mTotalLength = 0;
            int childrenSkipCount2 = 0;
            while (childrenSkipCount2 < virtualChildCount) {
                View virtualChildAt2 = getVirtualChildAt(childrenSkipCount2);
                if (virtualChildAt2 == null) {
                    this.mTotalLength += measureNullChild(childrenSkipCount2);
                } else if (virtualChildAt2.getVisibility() == 8) {
                    childrenSkipCount2 += getChildrenSkipCount(virtualChildAt2, childrenSkipCount2);
                } else {
                    LayoutParams layoutParams2 = (LayoutParams) virtualChildAt2.getLayoutParams();
                    if (z7) {
                        this.mTotalLength += layoutParams2.leftMargin + iMax2 + layoutParams2.rightMargin + getNextLocationOffset(virtualChildAt2);
                    } else {
                        int i24 = this.mTotalLength;
                        this.mTotalLength = Math.max(i24, i24 + iMax2 + layoutParams2.leftMargin + layoutParams2.rightMargin + getNextLocationOffset(virtualChildAt2));
                    }
                    childrenSkipCount2++;
                    iMax7 = iMax7;
                }
                childrenSkipCount2++;
                iMax7 = iMax7;
            }
        }
        int iMax8 = iMax7;
        this.mTotalLength += getPaddingLeft() + getPaddingRight();
        int iResolveSizeAndState = View.resolveSizeAndState(Math.max(this.mTotalLength, getSuggestedMinimumWidth()), i, 0);
        int i25 = (16777215 & iResolveSizeAndState) - this.mTotalLength;
        if (z8 || (i25 != 0 && f > 0.0f)) {
            if (this.mWeightSum > 0.0f) {
                f = this.mWeightSum;
            }
            iArr2[3] = -1;
            iArr2[2] = -1;
            iArr2[1] = -1;
            iArr2[0] = -1;
            iArr[3] = -1;
            iArr[2] = -1;
            iArr[1] = -1;
            iArr[0] = -1;
            this.mTotalLength = 0;
            int i26 = i21;
            int iMax9 = -1;
            int iCombineMeasuredStates3 = i23;
            float f3 = f;
            int i27 = 0;
            while (i27 < virtualChildCount) {
                View virtualChildAt3 = getVirtualChildAt(i27);
                if (virtualChildAt3 == null || virtualChildAt3.getVisibility() == 8) {
                    i4 = i25;
                    virtualChildCount = virtualChildCount;
                } else {
                    LayoutParams layoutParams3 = (LayoutParams) virtualChildAt3.getLayoutParams();
                    float f4 = layoutParams3.weight;
                    if (f4 > 0.0f) {
                        int i28 = (int) ((i25 * f4) / f3);
                        float f5 = f3 - f4;
                        int i29 = i25 - i28;
                        int childMeasureSpec = getChildMeasureSpec(i2, getPaddingTop() + getPaddingBottom() + layoutParams3.topMargin + layoutParams3.bottomMargin, layoutParams3.height);
                        if (layoutParams3.width == 0) {
                            i6 = 1073741824;
                            if (mode == 1073741824) {
                                if (i28 <= 0) {
                                    i28 = 0;
                                }
                                virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(i28, 1073741824), childMeasureSpec);
                            }
                            iCombineMeasuredStates3 = View.combineMeasuredStates(iCombineMeasuredStates3, virtualChildAt3.getMeasuredState() & ViewCompat.MEASURED_STATE_MASK);
                            f3 = f5;
                            i4 = i29;
                        } else {
                            i6 = 1073741824;
                        }
                        int measuredWidth2 = virtualChildAt3.getMeasuredWidth() + i28;
                        if (measuredWidth2 < 0) {
                            measuredWidth2 = 0;
                        }
                        virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth2, i6), childMeasureSpec);
                        iCombineMeasuredStates3 = View.combineMeasuredStates(iCombineMeasuredStates3, virtualChildAt3.getMeasuredState() & ViewCompat.MEASURED_STATE_MASK);
                        f3 = f5;
                        i4 = i29;
                    } else {
                        i4 = i25;
                    }
                    if (z7) {
                        this.mTotalLength += virtualChildAt3.getMeasuredWidth() + layoutParams3.leftMargin + layoutParams3.rightMargin + getNextLocationOffset(virtualChildAt3);
                    } else {
                        int i30 = this.mTotalLength;
                        this.mTotalLength = Math.max(i30, virtualChildAt3.getMeasuredWidth() + i30 + layoutParams3.leftMargin + layoutParams3.rightMargin + getNextLocationOffset(virtualChildAt3));
                    }
                    boolean z13 = mode2 != 1073741824 && layoutParams3.height == -1;
                    int i31 = layoutParams3.topMargin + layoutParams3.bottomMargin;
                    int measuredHeight2 = virtualChildAt3.getMeasuredHeight() + i31;
                    iMax9 = Math.max(iMax9, measuredHeight2);
                    if (!z13) {
                        i31 = measuredHeight2;
                    }
                    int iMax10 = Math.max(i26, i31);
                    if (z10) {
                        i5 = -1;
                        boolean z14 = layoutParams3.height == -1;
                        if (!z12 && (baseline = virtualChildAt3.getBaseline()) != i5) {
                            int i32 = ((((layoutParams3.gravity < 0 ? this.mGravity : layoutParams3.gravity) & com.yftech.avmservice.R.styleable.AppCompatTheme_windowActionBarOverlay) >> 4) & (-2)) >> 1;
                            iArr2[i32] = Math.max(iArr2[i32], baseline);
                            iArr[i32] = Math.max(iArr[i32], measuredHeight2 - baseline);
                        }
                        i26 = iMax10;
                        z10 = z14;
                        f3 = f3;
                    } else {
                        i5 = -1;
                    }
                    if (!z12) {
                    }
                    i26 = iMax10;
                    z10 = z14;
                    f3 = f3;
                }
                i27++;
                i25 = i4;
                virtualChildCount = virtualChildCount;
            }
            i3 = virtualChildCount;
            this.mTotalLength += getPaddingLeft() + getPaddingRight();
            iMax8 = (iArr2[1] == -1 && iArr2[0] == -1 && iArr2[2] == -1 && iArr2[3] == -1) ? iMax9 : Math.max(iMax9, Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))));
            i23 = iCombineMeasuredStates3;
            iMax = i26;
        } else {
            iMax = Math.max(i21, i22);
            if (z11 && mode != 1073741824) {
                for (int i33 = 0; i33 < virtualChildCount; i33++) {
                    View virtualChildAt4 = getVirtualChildAt(i33);
                    if (virtualChildAt4 != null && virtualChildAt4.getVisibility() != 8 && ((LayoutParams) virtualChildAt4.getLayoutParams()).weight > 0.0f) {
                        virtualChildAt4.measure(View.MeasureSpec.makeMeasureSpec(iMax2, 1073741824), View.MeasureSpec.makeMeasureSpec(virtualChildAt4.getMeasuredHeight(), 1073741824));
                    }
                }
            }
            i3 = virtualChildCount;
        }
        if (!z10 && mode2 != 1073741824) {
            iMax8 = iMax;
        }
        setMeasuredDimension(iResolveSizeAndState | (i23 & ViewCompat.MEASURED_STATE_MASK), View.resolveSizeAndState(Math.max(iMax8 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i2, i23 << 16));
        if (z9) {
            forceUniformHeight(i3, i);
        }
    }

    int measureNullChild(int i) {
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:150:0x0337  */
    /* JADX WARN: Code duplicated, block: B:156:0x0346  */
    void measureVertical(int i, int i2) {
        int i3;
        int i4;
        int iCombineMeasuredStates;
        int iMax;
        float f;
        int i5;
        int i6;
        boolean z;
        boolean z2;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int iMax2;
        int i13;
        int i14;
        View view;
        int iMax3;
        boolean z3;
        int iMax4;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int i15 = this.mBaselineAlignedChildIndex;
        boolean z4 = this.mUseLargestChild;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        int childrenSkipCount = 0;
        boolean z5 = false;
        boolean z6 = false;
        float f2 = 0.0f;
        boolean z7 = true;
        while (true) {
            int i21 = 8;
            int i22 = i19;
            if (childrenSkipCount >= virtualChildCount) {
                int i23 = i16;
                int i24 = i18;
                int i25 = i20;
                int i26 = virtualChildCount;
                int i27 = mode2;
                int iMax5 = i17;
                if (this.mTotalLength > 0) {
                    i3 = i26;
                    if (hasDividerBeforeChildAt(i3)) {
                        this.mTotalLength += this.mDividerHeight;
                    }
                } else {
                    i3 = i26;
                }
                if (z4) {
                    i4 = i27;
                    if (i4 == Integer.MIN_VALUE || i4 == 0) {
                        this.mTotalLength = 0;
                        int childrenSkipCount2 = 0;
                        while (childrenSkipCount2 < i3) {
                            View virtualChildAt = getVirtualChildAt(childrenSkipCount2);
                            if (virtualChildAt == null) {
                                this.mTotalLength += measureNullChild(childrenSkipCount2);
                            } else if (virtualChildAt.getVisibility() == i21) {
                                childrenSkipCount2 += getChildrenSkipCount(virtualChildAt, childrenSkipCount2);
                            } else {
                                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                                int i28 = this.mTotalLength;
                                this.mTotalLength = Math.max(i28, i28 + i24 + layoutParams.topMargin + layoutParams.bottomMargin + getNextLocationOffset(virtualChildAt));
                            }
                            childrenSkipCount2++;
                            i21 = 8;
                        }
                    }
                } else {
                    i4 = i27;
                }
                this.mTotalLength += getPaddingTop() + getPaddingBottom();
                int iResolveSizeAndState = View.resolveSizeAndState(Math.max(this.mTotalLength, getSuggestedMinimumHeight()), i2, 0);
                int i29 = (16777215 & iResolveSizeAndState) - this.mTotalLength;
                if (z5 || (i29 != 0 && f2 > 0.0f)) {
                    if (this.mWeightSum > 0.0f) {
                        f2 = this.mWeightSum;
                    }
                    this.mTotalLength = 0;
                    float f3 = f2;
                    int i30 = 0;
                    int i31 = i25;
                    iCombineMeasuredStates = i23;
                    while (i30 < i3) {
                        View virtualChildAt2 = getVirtualChildAt(i30);
                        if (virtualChildAt2.getVisibility() == 8) {
                            i5 = i4;
                            f = f3;
                        } else {
                            LayoutParams layoutParams2 = (LayoutParams) virtualChildAt2.getLayoutParams();
                            float f4 = layoutParams2.weight;
                            if (f4 > 0.0f) {
                                int i32 = (int) ((i29 * f4) / f3);
                                float f5 = f3 - f4;
                                int i33 = i29 - i32;
                                int childMeasureSpec = getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + layoutParams2.leftMargin + layoutParams2.rightMargin, layoutParams2.width);
                                if (layoutParams2.height == 0) {
                                    i7 = 1073741824;
                                    if (i4 == 1073741824) {
                                        if (i32 <= 0) {
                                            i32 = 0;
                                        }
                                        virtualChildAt2.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i32, 1073741824));
                                    }
                                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, virtualChildAt2.getMeasuredState() & InputDeviceCompat.SOURCE_ANY);
                                    i29 = i33;
                                    f = f5;
                                } else {
                                    i7 = 1073741824;
                                }
                                int measuredHeight = virtualChildAt2.getMeasuredHeight() + i32;
                                if (measuredHeight < 0) {
                                    measuredHeight = 0;
                                }
                                virtualChildAt2.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(measuredHeight, i7));
                                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, virtualChildAt2.getMeasuredState() & InputDeviceCompat.SOURCE_ANY);
                                i29 = i33;
                                f = f5;
                            } else {
                                f = f3;
                            }
                            int i34 = iCombineMeasuredStates;
                            int i35 = layoutParams2.leftMargin + layoutParams2.rightMargin;
                            int measuredWidth = virtualChildAt2.getMeasuredWidth() + i35;
                            iMax5 = Math.max(iMax5, measuredWidth);
                            if (mode != 1073741824) {
                                i5 = i4;
                                i6 = -1;
                                z = layoutParams2.width == -1;
                                if (!z) {
                                    i35 = measuredWidth;
                                }
                                int iMax6 = Math.max(i31, i35);
                                if (z7 || layoutParams2.width != i6) {
                                    z2 = false;
                                } else {
                                    z2 = true;
                                }
                                int i36 = this.mTotalLength;
                                this.mTotalLength = Math.max(i36, i36 + virtualChildAt2.getMeasuredHeight() + layoutParams2.topMargin + layoutParams2.bottomMargin + getNextLocationOffset(virtualChildAt2));
                                z7 = z2;
                                i31 = iMax6;
                                iCombineMeasuredStates = i34;
                            } else {
                                i5 = i4;
                                i6 = -1;
                            }
                            if (!z) {
                                i35 = measuredWidth;
                            }
                            int iMax7 = Math.max(i31, i35);
                            if (z7) {
                                z2 = false;
                            } else {
                                z2 = false;
                            }
                            int i37 = this.mTotalLength;
                            this.mTotalLength = Math.max(i37, i37 + virtualChildAt2.getMeasuredHeight() + layoutParams2.topMargin + layoutParams2.bottomMargin + getNextLocationOffset(virtualChildAt2));
                            z7 = z2;
                            i31 = iMax7;
                            iCombineMeasuredStates = i34;
                        }
                        i30++;
                        f3 = f;
                        i4 = i5;
                    }
                    this.mTotalLength += getPaddingTop() + getPaddingBottom();
                    iMax = i31;
                } else {
                    iMax = Math.max(i25, i22);
                    if (z4 && i4 != 1073741824) {
                        for (int i38 = 0; i38 < i3; i38++) {
                            View virtualChildAt3 = getVirtualChildAt(i38);
                            if (virtualChildAt3 != null && virtualChildAt3.getVisibility() != 8 && ((LayoutParams) virtualChildAt3.getLayoutParams()).weight > 0.0f) {
                                virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(virtualChildAt3.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i24, 1073741824));
                            }
                        }
                    }
                    iCombineMeasuredStates = i23;
                }
                if (z7 || mode == 1073741824) {
                    iMax = iMax5;
                }
                setMeasuredDimension(View.resolveSizeAndState(Math.max(iMax + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i, iCombineMeasuredStates), iResolveSizeAndState);
                if (z6) {
                    forceUniformWidth(i3, i2);
                    return;
                }
                return;
            }
            View virtualChildAt4 = getVirtualChildAt(childrenSkipCount);
            if (virtualChildAt4 == null) {
                this.mTotalLength += measureNullChild(childrenSkipCount);
                i11 = virtualChildCount;
                i12 = mode2;
                i19 = i22;
            } else {
                int i39 = i16;
                if (virtualChildAt4.getVisibility() == 8) {
                    childrenSkipCount += getChildrenSkipCount(virtualChildAt4, childrenSkipCount);
                    i11 = virtualChildCount;
                    i12 = mode2;
                    i19 = i22;
                    i16 = i39;
                } else {
                    if (hasDividerBeforeChildAt(childrenSkipCount)) {
                        this.mTotalLength += this.mDividerHeight;
                    }
                    LayoutParams layoutParams3 = (LayoutParams) virtualChildAt4.getLayoutParams();
                    float f6 = f2 + layoutParams3.weight;
                    if (mode2 == 1073741824 && layoutParams3.height == 0 && layoutParams3.weight > 0.0f) {
                        int i40 = this.mTotalLength;
                        this.mTotalLength = Math.max(i40, layoutParams3.topMargin + i40 + layoutParams3.bottomMargin);
                        iMax3 = i18;
                        view = virtualChildAt4;
                        i13 = i20;
                        i11 = virtualChildCount;
                        i12 = mode2;
                        z5 = true;
                        iMax2 = i22;
                        i9 = i39;
                        i10 = i17;
                        i14 = childrenSkipCount;
                    } else {
                        int i41 = i17;
                        if (layoutParams3.height != 0 || layoutParams3.weight <= 0.0f) {
                            i8 = Integer.MIN_VALUE;
                        } else {
                            layoutParams3.height = -2;
                            i8 = 0;
                        }
                        i9 = i39;
                        int i42 = i8;
                        i10 = i41;
                        int i43 = i18;
                        i11 = virtualChildCount;
                        i12 = mode2;
                        iMax2 = i22;
                        i13 = i20;
                        i14 = childrenSkipCount;
                        measureChildBeforeLayout(virtualChildAt4, childrenSkipCount, i, 0, i2, f6 == 0.0f ? this.mTotalLength : 0);
                        if (i42 != Integer.MIN_VALUE) {
                            layoutParams3.height = i42;
                        }
                        int measuredHeight2 = virtualChildAt4.getMeasuredHeight();
                        int i44 = this.mTotalLength;
                        view = virtualChildAt4;
                        this.mTotalLength = Math.max(i44, i44 + measuredHeight2 + layoutParams3.topMargin + layoutParams3.bottomMargin + getNextLocationOffset(view));
                        iMax3 = z4 ? Math.max(measuredHeight2, i43) : i43;
                    }
                    if (i15 >= 0 && i15 == i14 + 1) {
                        this.mBaselineChildTop = this.mTotalLength;
                    }
                    if (i14 < i15 && layoutParams3.weight > 0.0f) {
                        throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                    }
                    if (mode == 1073741824 || layoutParams3.width != -1) {
                        z3 = false;
                    } else {
                        z3 = true;
                        z6 = true;
                    }
                    int i45 = layoutParams3.leftMargin + layoutParams3.rightMargin;
                    int measuredWidth2 = view.getMeasuredWidth() + i45;
                    int iMax8 = Math.max(i10, measuredWidth2);
                    int iCombineMeasuredStates2 = View.combineMeasuredStates(i9, view.getMeasuredState());
                    boolean z8 = z7 && layoutParams3.width == -1;
                    if (layoutParams3.weight > 0.0f) {
                        if (!z3) {
                            i45 = measuredWidth2;
                        }
                        iMax2 = Math.max(iMax2, i45);
                        iMax4 = i13;
                    } else {
                        if (!z3) {
                            i45 = measuredWidth2;
                        }
                        iMax4 = Math.max(i13, i45);
                    }
                    int childrenSkipCount3 = getChildrenSkipCount(view, i14) + i14;
                    i18 = iMax3;
                    z7 = z8;
                    i19 = iMax2;
                    f2 = f6;
                    i20 = iMax4;
                    i16 = iCombineMeasuredStates2;
                    childrenSkipCount = childrenSkipCount3;
                    i17 = iMax8;
                }
            }
            childrenSkipCount++;
            mode2 = i12;
            virtualChildCount = i11;
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.mDivider == null) {
            return;
        }
        if (this.mOrientation == 1) {
            drawDividersVertical(canvas);
        } else {
            drawDividersHorizontal(canvas);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(LinearLayoutCompat.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(LinearLayoutCompat.class.getName());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.mOrientation == 1) {
            layoutVertical(i, i2, i3, i4);
        } else {
            layoutHorizontal(i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.mOrientation == 1) {
            measureVertical(i, i2);
        } else {
            measureHorizontal(i, i2);
        }
    }

    public void setBaselineAligned(boolean z) {
        this.mBaselineAligned = z;
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i >= 0 && i < getChildCount()) {
            this.mBaselineAlignedChildIndex = i;
            return;
        }
        throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.mDivider) {
            return;
        }
        this.mDivider = drawable;
        if (drawable != null) {
            this.mDividerWidth = drawable.getIntrinsicWidth();
            this.mDividerHeight = drawable.getIntrinsicHeight();
        } else {
            this.mDividerWidth = 0;
            this.mDividerHeight = 0;
        }
        setWillNotDraw(drawable == null);
        requestLayout();
    }

    public void setDividerPadding(int i) {
        this.mDividerPadding = i;
    }

    public void setGravity(int i) {
        if (this.mGravity != i) {
            if ((8388615 & i) == 0) {
                i |= GravityCompat.START;
            }
            if ((i & com.yftech.avmservice.R.styleable.AppCompatTheme_windowActionBarOverlay) == 0) {
                i |= 48;
            }
            this.mGravity = i;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i) {
        int i2 = i & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if ((8388615 & this.mGravity) != i2) {
            this.mGravity = i2 | (this.mGravity & (-8388616));
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.mUseLargestChild = z;
    }

    public void setOrientation(int i) {
        if (this.mOrientation != i) {
            this.mOrientation = i;
            requestLayout();
        }
    }

    public void setShowDividers(int i) {
        if (i != this.mShowDividers) {
            requestLayout();
        }
        this.mShowDividers = i;
    }

    public void setVerticalGravity(int i) {
        int i2 = i & com.yftech.avmservice.R.styleable.AppCompatTheme_windowActionBarOverlay;
        if ((this.mGravity & com.yftech.avmservice.R.styleable.AppCompatTheme_windowActionBarOverlay) != i2) {
            this.mGravity = i2 | (this.mGravity & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f) {
        this.mWeightSum = Math.max(0.0f, f);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
