package android.support.constraint.solver.widgets;

import android.support.constraint.solver.ArrayRow;
import android.support.constraint.solver.LinearSystem;
import android.support.constraint.solver.SolverVariable;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class ConstraintWidgetContainer extends WidgetContainer {
    static boolean ALLOW_ROOT_GROUP = true;
    private static final int CHAIN_FIRST = 0;
    private static final int CHAIN_FIRST_VISIBLE = 2;
    private static final int CHAIN_LAST = 1;
    private static final int CHAIN_LAST_VISIBLE = 3;
    private static final boolean DEBUG = false;
    private static final boolean DEBUG_LAYOUT = false;
    private static final boolean DEBUG_OPTIMIZE = false;
    private static final int FLAG_CHAIN_DANGLING = 1;
    private static final int FLAG_CHAIN_OPTIMIZE = 0;
    private static final int FLAG_RECOMPUTE_BOUNDS = 2;
    private static final int MAX_ITERATIONS = 8;
    public static final int OPTIMIZATION_ALL = 2;
    public static final int OPTIMIZATION_BASIC = 4;
    public static final int OPTIMIZATION_CHAIN = 8;
    public static final int OPTIMIZATION_NONE = 1;
    private static final boolean USE_SNAPSHOT = true;
    private static final boolean USE_THREAD = false;
    private boolean[] flags;
    protected LinearSystem mBackgroundSystem;
    private ConstraintWidget[] mChainEnds;
    private boolean mHeightMeasuredTooSmall;
    private ConstraintWidget[] mHorizontalChainsArray;
    private int mHorizontalChainsSize;
    private ConstraintWidget[] mMatchConstraintsChainedWidgets;
    private int mOptimizationLevel;
    int mPaddingBottom;
    int mPaddingLeft;
    int mPaddingRight;
    int mPaddingTop;
    private Snapshot mSnapshot;
    protected LinearSystem mSystem;
    private ConstraintWidget[] mVerticalChainsArray;
    private int mVerticalChainsSize;
    private boolean mWidthMeasuredTooSmall;
    int mWrapHeight;
    int mWrapWidth;

    public ConstraintWidgetContainer() {
        this.mSystem = new LinearSystem();
        this.mBackgroundSystem = null;
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
        this.mMatchConstraintsChainedWidgets = new ConstraintWidget[4];
        this.mVerticalChainsArray = new ConstraintWidget[4];
        this.mHorizontalChainsArray = new ConstraintWidget[4];
        this.mOptimizationLevel = 2;
        this.flags = new boolean[3];
        this.mChainEnds = new ConstraintWidget[4];
        this.mWidthMeasuredTooSmall = false;
        this.mHeightMeasuredTooSmall = false;
    }

    public ConstraintWidgetContainer(int i, int i2) {
        super(i, i2);
        this.mSystem = new LinearSystem();
        this.mBackgroundSystem = null;
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
        this.mMatchConstraintsChainedWidgets = new ConstraintWidget[4];
        this.mVerticalChainsArray = new ConstraintWidget[4];
        this.mHorizontalChainsArray = new ConstraintWidget[4];
        this.mOptimizationLevel = 2;
        this.flags = new boolean[3];
        this.mChainEnds = new ConstraintWidget[4];
        this.mWidthMeasuredTooSmall = false;
        this.mHeightMeasuredTooSmall = false;
    }

    public ConstraintWidgetContainer(int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.mSystem = new LinearSystem();
        this.mBackgroundSystem = null;
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
        this.mMatchConstraintsChainedWidgets = new ConstraintWidget[4];
        this.mVerticalChainsArray = new ConstraintWidget[4];
        this.mHorizontalChainsArray = new ConstraintWidget[4];
        this.mOptimizationLevel = 2;
        this.flags = new boolean[3];
        this.mChainEnds = new ConstraintWidget[4];
        this.mWidthMeasuredTooSmall = false;
        this.mHeightMeasuredTooSmall = false;
    }

    private void addHorizontalChain(ConstraintWidget constraintWidget) {
        for (int i = 0; i < this.mHorizontalChainsSize; i++) {
            if (this.mHorizontalChainsArray[i] == constraintWidget) {
                return;
            }
        }
        if (this.mHorizontalChainsSize + 1 >= this.mHorizontalChainsArray.length) {
            this.mHorizontalChainsArray = (ConstraintWidget[]) Arrays.copyOf(this.mHorizontalChainsArray, this.mHorizontalChainsArray.length * 2);
        }
        this.mHorizontalChainsArray[this.mHorizontalChainsSize] = constraintWidget;
        this.mHorizontalChainsSize++;
    }

    private void addVerticalChain(ConstraintWidget constraintWidget) {
        for (int i = 0; i < this.mVerticalChainsSize; i++) {
            if (this.mVerticalChainsArray[i] == constraintWidget) {
                return;
            }
        }
        if (this.mVerticalChainsSize + 1 >= this.mVerticalChainsArray.length) {
            this.mVerticalChainsArray = (ConstraintWidget[]) Arrays.copyOf(this.mVerticalChainsArray, this.mVerticalChainsArray.length * 2);
        }
        this.mVerticalChainsArray[this.mVerticalChainsSize] = constraintWidget;
        this.mVerticalChainsSize++;
    }

    /* JADX WARN: Code duplicated, block: B:196:0x04bc  */
    /* JADX WARN: Code duplicated, block: B:228:0x04be A[SYNTHETIC] */
    private void applyHorizontalChain(LinearSystem linearSystem) {
        int i;
        LinearSystem linearSystem2;
        int i2;
        ConstraintWidget constraintWidget;
        boolean z;
        ConstraintWidget constraintWidget2;
        int i3;
        ConstraintWidget constraintWidget3;
        int i4;
        int i5;
        int margin;
        LinearSystem linearSystem3 = linearSystem;
        int i6 = 0;
        int i7 = 0;
        while (i7 < this.mHorizontalChainsSize) {
            ConstraintWidget constraintWidget4 = this.mHorizontalChainsArray[i7];
            int iCountMatchConstraintsChainedWidgets = countMatchConstraintsChainedWidgets(linearSystem, this.mChainEnds, this.mHorizontalChainsArray[i7], 0, this.flags);
            ConstraintWidget constraintWidget5 = this.mChainEnds[2];
            if (constraintWidget5 != null) {
                if (!this.flags[1]) {
                    int i8 = constraintWidget4.mHorizontalChainStyle == 0 ? 1 : i6;
                    int i9 = constraintWidget4.mHorizontalChainStyle == 2 ? 1 : i6;
                    int i10 = this.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT ? 1 : i6;
                    if ((this.mOptimizationLevel != 2 && this.mOptimizationLevel != 8) || !this.flags[i6] || !constraintWidget4.mHorizontalChainFixedPosition || i9 != 0 || i10 != 0 || constraintWidget4.mHorizontalChainStyle != 0) {
                        char c = 3;
                        if (iCountMatchConstraintsChainedWidgets != 0 && i9 == 0) {
                            float f = 0.0f;
                            ConstraintWidget constraintWidget6 = null;
                            while (constraintWidget5 != null) {
                                if (constraintWidget5.mHorizontalDimensionBehaviour != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                                    int margin2 = constraintWidget5.mLeft.getMargin();
                                    if (constraintWidget6 != null) {
                                        margin2 += constraintWidget6.mRight.getMargin();
                                    }
                                    linearSystem3.addGreaterThan(constraintWidget5.mLeft.mSolverVariable, constraintWidget5.mLeft.mTarget.mSolverVariable, margin2, constraintWidget5.mLeft.mTarget.mOwner.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT ? 2 : 3);
                                    int margin3 = constraintWidget5.mRight.getMargin();
                                    if (constraintWidget5.mRight.mTarget.mOwner.mLeft.mTarget != null && constraintWidget5.mRight.mTarget.mOwner.mLeft.mTarget.mOwner == constraintWidget5) {
                                        margin3 += constraintWidget5.mRight.mTarget.mOwner.mLeft.getMargin();
                                    }
                                    linearSystem3.addLowerThan(constraintWidget5.mRight.mSolverVariable, constraintWidget5.mRight.mTarget.mSolverVariable, -margin3, constraintWidget5.mRight.mTarget.mOwner.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT ? 2 : 3);
                                } else {
                                    f += constraintWidget5.mHorizontalWeight;
                                    if (constraintWidget5.mRight.mTarget != null) {
                                        margin = constraintWidget5.mRight.getMargin();
                                        if (constraintWidget5 != this.mChainEnds[3]) {
                                            margin += constraintWidget5.mRight.mTarget.mOwner.mLeft.getMargin();
                                        }
                                    } else {
                                        margin = i6;
                                    }
                                    linearSystem3.addGreaterThan(constraintWidget5.mRight.mSolverVariable, constraintWidget5.mLeft.mSolverVariable, i6, 1);
                                    linearSystem3.addLowerThan(constraintWidget5.mRight.mSolverVariable, constraintWidget5.mRight.mTarget.mSolverVariable, -margin, 1);
                                }
                                constraintWidget6 = constraintWidget5;
                                constraintWidget5 = constraintWidget5.mHorizontalNextWidget;
                            }
                            if (iCountMatchConstraintsChainedWidgets != 1) {
                                int i11 = i6;
                                while (true) {
                                    int i12 = iCountMatchConstraintsChainedWidgets - 1;
                                    if (i11 >= i12) {
                                        break;
                                    }
                                    ConstraintWidget constraintWidget7 = this.mMatchConstraintsChainedWidgets[i11];
                                    i11++;
                                    ConstraintWidget constraintWidget8 = this.mMatchConstraintsChainedWidgets[i11];
                                    SolverVariable solverVariable = constraintWidget7.mLeft.mSolverVariable;
                                    SolverVariable solverVariable2 = constraintWidget7.mRight.mSolverVariable;
                                    SolverVariable solverVariable3 = constraintWidget8.mLeft.mSolverVariable;
                                    SolverVariable solverVariable4 = constraintWidget8.mRight.mSolverVariable;
                                    if (constraintWidget8 == this.mChainEnds[c]) {
                                        solverVariable4 = this.mChainEnds[1].mRight.mSolverVariable;
                                    }
                                    int margin4 = constraintWidget7.mLeft.getMargin();
                                    if (constraintWidget7.mLeft.mTarget != null && constraintWidget7.mLeft.mTarget.mOwner.mRight.mTarget != null && constraintWidget7.mLeft.mTarget.mOwner.mRight.mTarget.mOwner == constraintWidget7) {
                                        margin4 += constraintWidget7.mLeft.mTarget.mOwner.mRight.getMargin();
                                    }
                                    int i13 = iCountMatchConstraintsChainedWidgets;
                                    linearSystem3.addGreaterThan(solverVariable, constraintWidget7.mLeft.mTarget.mSolverVariable, margin4, 2);
                                    int margin5 = constraintWidget7.mRight.getMargin();
                                    if (constraintWidget7.mRight.mTarget != null && constraintWidget7.mHorizontalNextWidget != null) {
                                        margin5 += constraintWidget7.mHorizontalNextWidget.mLeft.mTarget != null ? constraintWidget7.mHorizontalNextWidget.mLeft.getMargin() : 0;
                                    }
                                    linearSystem3.addLowerThan(solverVariable2, constraintWidget7.mRight.mTarget.mSolverVariable, -margin5, 2);
                                    if (i11 == i12) {
                                        int margin6 = constraintWidget8.mLeft.getMargin();
                                        if (constraintWidget8.mLeft.mTarget != null && constraintWidget8.mLeft.mTarget.mOwner.mRight.mTarget != null && constraintWidget8.mLeft.mTarget.mOwner.mRight.mTarget.mOwner == constraintWidget8) {
                                            margin6 += constraintWidget8.mLeft.mTarget.mOwner.mRight.getMargin();
                                        }
                                        linearSystem3.addGreaterThan(solverVariable3, constraintWidget8.mLeft.mTarget.mSolverVariable, margin6, 2);
                                        ConstraintAnchor constraintAnchor = constraintWidget8.mRight;
                                        if (constraintWidget8 == this.mChainEnds[3]) {
                                            constraintAnchor = this.mChainEnds[1].mRight;
                                        }
                                        int margin7 = constraintAnchor.getMargin();
                                        if (constraintAnchor.mTarget != null && constraintAnchor.mTarget.mOwner.mLeft.mTarget != null && constraintAnchor.mTarget.mOwner.mLeft.mTarget.mOwner == constraintWidget8) {
                                            margin7 += constraintAnchor.mTarget.mOwner.mLeft.getMargin();
                                        }
                                        i5 = 2;
                                        linearSystem3.addLowerThan(solverVariable4, constraintAnchor.mTarget.mSolverVariable, -margin7, 2);
                                    } else {
                                        i5 = 2;
                                    }
                                    if (constraintWidget4.mMatchConstraintMaxWidth > 0) {
                                        linearSystem3.addLowerThan(solverVariable2, solverVariable, constraintWidget4.mMatchConstraintMaxWidth, i5);
                                    }
                                    ArrayRow arrayRowCreateRow = linearSystem.createRow();
                                    arrayRowCreateRow.createRowEqualDimension(constraintWidget7.mHorizontalWeight, f, constraintWidget8.mHorizontalWeight, solverVariable, constraintWidget7.mLeft.getMargin(), solverVariable2, constraintWidget7.mRight.getMargin(), solverVariable3, constraintWidget8.mLeft.getMargin(), solverVariable4, constraintWidget8.mRight.getMargin());
                                    linearSystem3.addConstraint(arrayRowCreateRow);
                                    iCountMatchConstraintsChainedWidgets = i13;
                                    c = 3;
                                    i6 = 0;
                                }
                            } else {
                                ConstraintWidget constraintWidget9 = this.mMatchConstraintsChainedWidgets[i6];
                                int margin8 = constraintWidget9.mLeft.getMargin();
                                if (constraintWidget9.mLeft.mTarget != null) {
                                    margin8 += constraintWidget9.mLeft.mTarget.getMargin();
                                }
                                int margin9 = constraintWidget9.mRight.getMargin();
                                if (constraintWidget9.mRight.mTarget != null) {
                                    margin9 += constraintWidget9.mRight.mTarget.getMargin();
                                }
                                SolverVariable solverVariable5 = constraintWidget4.mRight.mTarget.mSolverVariable;
                                if (constraintWidget9 == this.mChainEnds[3]) {
                                    solverVariable5 = this.mChainEnds[1].mRight.mTarget.mSolverVariable;
                                }
                                if (constraintWidget9.mMatchConstraintDefaultWidth == 1) {
                                    linearSystem3.addGreaterThan(constraintWidget4.mLeft.mSolverVariable, constraintWidget4.mLeft.mTarget.mSolverVariable, margin8, 1);
                                    linearSystem3.addLowerThan(constraintWidget4.mRight.mSolverVariable, solverVariable5, -margin9, 1);
                                    linearSystem3.addEquality(constraintWidget4.mRight.mSolverVariable, constraintWidget4.mLeft.mSolverVariable, constraintWidget4.getWidth(), 2);
                                } else {
                                    linearSystem3.addEquality(constraintWidget9.mLeft.mSolverVariable, constraintWidget9.mLeft.mTarget.mSolverVariable, margin8, 1);
                                    linearSystem3.addEquality(constraintWidget9.mRight.mSolverVariable, solverVariable5, -margin9, 1);
                                }
                            }
                        } else {
                            ConstraintWidget constraintWidget10 = constraintWidget5;
                            ConstraintWidget constraintWidget11 = null;
                            ConstraintWidget constraintWidget12 = null;
                            boolean z2 = false;
                            while (constraintWidget10 != null) {
                                ConstraintWidget constraintWidget13 = constraintWidget10.mHorizontalNextWidget;
                                if (constraintWidget13 == null) {
                                    constraintWidget = this.mChainEnds[1];
                                    z = true;
                                } else {
                                    constraintWidget = constraintWidget11;
                                    z = z2;
                                }
                                if (i9 != 0) {
                                    ConstraintAnchor constraintAnchor2 = constraintWidget10.mLeft;
                                    int margin10 = constraintAnchor2.getMargin();
                                    if (constraintWidget12 != null) {
                                        margin10 += constraintWidget12.mRight.getMargin();
                                    }
                                    linearSystem3.addGreaterThan(constraintAnchor2.mSolverVariable, constraintAnchor2.mTarget.mSolverVariable, margin10, constraintWidget5 != constraintWidget10 ? 3 : 1);
                                    if (constraintWidget10.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                                        ConstraintAnchor constraintAnchor3 = constraintWidget10.mRight;
                                        if (constraintWidget10.mMatchConstraintDefaultWidth == 1) {
                                            linearSystem3.addEquality(constraintAnchor3.mSolverVariable, constraintAnchor2.mSolverVariable, Math.max(constraintWidget10.mMatchConstraintMinWidth, constraintWidget10.getWidth()), 3);
                                        } else {
                                            linearSystem3.addGreaterThan(constraintAnchor2.mSolverVariable, constraintAnchor2.mTarget.mSolverVariable, constraintAnchor2.mMargin, 3);
                                            linearSystem3.addLowerThan(constraintAnchor3.mSolverVariable, constraintAnchor2.mSolverVariable, constraintWidget10.mMatchConstraintMinWidth, 3);
                                        }
                                    }
                                } else if (i8 != 0 || !z || constraintWidget12 == null) {
                                    if (i8 != 0 || z || constraintWidget12 != null) {
                                        ConstraintAnchor constraintAnchor4 = constraintWidget10.mLeft;
                                        ConstraintAnchor constraintAnchor5 = constraintWidget10.mRight;
                                        int margin11 = constraintAnchor4.getMargin();
                                        int margin12 = constraintAnchor5.getMargin();
                                        constraintWidget2 = constraintWidget10;
                                        i3 = i8;
                                        linearSystem3.addGreaterThan(constraintAnchor4.mSolverVariable, constraintAnchor4.mTarget.mSolverVariable, margin11, 1);
                                        int i14 = i7;
                                        linearSystem3.addLowerThan(constraintAnchor5.mSolverVariable, constraintAnchor5.mTarget.mSolverVariable, -margin12, 1);
                                        SolverVariable solverVariable6 = constraintAnchor4.mTarget != null ? constraintAnchor4.mTarget.mSolverVariable : null;
                                        if (constraintWidget12 == null) {
                                            solverVariable6 = constraintWidget4.mLeft.mTarget != null ? constraintWidget4.mLeft.mTarget.mSolverVariable : null;
                                        }
                                        if (constraintWidget13 == null) {
                                            constraintWidget13 = constraintWidget.mRight.mTarget != null ? constraintWidget.mRight.mTarget.mOwner : null;
                                        }
                                        ConstraintWidget constraintWidget14 = constraintWidget13;
                                        if (constraintWidget14 != null) {
                                            SolverVariable solverVariable7 = constraintWidget14.mLeft.mSolverVariable;
                                            if (z) {
                                                solverVariable7 = constraintWidget.mRight.mTarget != null ? constraintWidget.mRight.mTarget.mSolverVariable : null;
                                            }
                                            if (solverVariable6 != null && solverVariable7 != null) {
                                                SolverVariable solverVariable8 = solverVariable6;
                                                constraintWidget4 = constraintWidget4;
                                                SolverVariable solverVariable9 = solverVariable7;
                                                i4 = i14;
                                                constraintWidget = constraintWidget;
                                                constraintWidget3 = constraintWidget14;
                                                linearSystem3 = linearSystem3;
                                                linearSystem.addCentering(constraintAnchor4.mSolverVariable, solverVariable8, margin11, 0.5f, solverVariable9, constraintAnchor5.mSolverVariable, margin12, 4);
                                            }
                                        }
                                        constraintWidget3 = constraintWidget14;
                                        i4 = i14;
                                    } else if (constraintWidget10.mLeft.mTarget == null) {
                                        linearSystem3.addEquality(constraintWidget10.mLeft.mSolverVariable, constraintWidget10.getDrawX());
                                    } else {
                                        linearSystem3.addEquality(constraintWidget10.mLeft.mSolverVariable, constraintWidget4.mLeft.mTarget.mSolverVariable, constraintWidget10.mLeft.getMargin(), 5);
                                    }
                                    if (z) {
                                        constraintWidget3 = null;
                                    }
                                    constraintWidget4 = constraintWidget4;
                                    z2 = z;
                                    linearSystem3 = linearSystem3;
                                    i7 = i4;
                                    constraintWidget11 = constraintWidget;
                                    constraintWidget12 = constraintWidget2;
                                    i8 = i3;
                                    constraintWidget10 = constraintWidget3;
                                    this = this;
                                } else if (constraintWidget10.mRight.mTarget == null) {
                                    linearSystem3.addEquality(constraintWidget10.mRight.mSolverVariable, constraintWidget10.getDrawRight());
                                } else {
                                    linearSystem3.addEquality(constraintWidget10.mRight.mSolverVariable, constraintWidget.mRight.mTarget.mSolverVariable, -constraintWidget10.mRight.getMargin(), 5);
                                }
                                constraintWidget2 = constraintWidget10;
                                i3 = i8;
                                constraintWidget3 = constraintWidget13;
                                i4 = i7;
                                if (z) {
                                    constraintWidget3 = null;
                                }
                                constraintWidget4 = constraintWidget4;
                                z2 = z;
                                linearSystem3 = linearSystem3;
                                i7 = i4;
                                constraintWidget11 = constraintWidget;
                                constraintWidget12 = constraintWidget2;
                                i8 = i3;
                                constraintWidget10 = constraintWidget3;
                                this = this;
                            }
                            ConstraintWidget constraintWidget15 = constraintWidget4;
                            i = i7;
                            linearSystem2 = linearSystem3;
                            i2 = 0;
                            if (i9 != 0) {
                                ConstraintAnchor constraintAnchor6 = constraintWidget5.mLeft;
                                ConstraintAnchor constraintAnchor7 = constraintWidget11.mRight;
                                int margin13 = constraintAnchor6.getMargin();
                                int margin14 = constraintAnchor7.getMargin();
                                SolverVariable solverVariable10 = constraintWidget15.mLeft.mTarget != null ? constraintWidget15.mLeft.mTarget.mSolverVariable : null;
                                SolverVariable solverVariable11 = constraintWidget11.mRight.mTarget != null ? constraintWidget11.mRight.mTarget.mSolverVariable : null;
                                if (solverVariable10 != null && solverVariable11 != null) {
                                    linearSystem2.addLowerThan(constraintAnchor7.mSolverVariable, solverVariable11, -margin14, 1);
                                    linearSystem.addCentering(constraintAnchor6.mSolverVariable, solverVariable10, margin13, constraintWidget15.mHorizontalBiasPercent, solverVariable11, constraintAnchor7.mSolverVariable, margin14, 4);
                                }
                            }
                        }
                    } else {
                        Optimizer.applyDirectResolutionHorizontalChain(this, linearSystem3, iCountMatchConstraintsChainedWidgets, constraintWidget4);
                    }
                } else {
                    int drawX = constraintWidget4.getDrawX();
                    while (constraintWidget5 != null) {
                        linearSystem3.addEquality(constraintWidget5.mLeft.mSolverVariable, drawX);
                        ConstraintWidget constraintWidget16 = constraintWidget5.mHorizontalNextWidget;
                        drawX += constraintWidget5.mLeft.getMargin() + constraintWidget5.getWidth() + constraintWidget5.mRight.getMargin();
                        constraintWidget5 = constraintWidget16;
                    }
                }
                i = i7;
                i2 = i6;
                linearSystem2 = linearSystem3;
            } else {
                i = i7;
                i2 = i6;
                linearSystem2 = linearSystem3;
            }
            i7 = i + 1;
            linearSystem3 = linearSystem2;
            i6 = i2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:206:0x04df  */
    /* JADX WARN: Code duplicated, block: B:238:0x04e1 A[SYNTHETIC] */
    private void applyVerticalChain(LinearSystem linearSystem) {
        int i;
        LinearSystem linearSystem2;
        int i2;
        ConstraintWidget constraintWidget;
        boolean z;
        ConstraintWidget constraintWidget2;
        int i3;
        ConstraintWidget constraintWidget3;
        int i4;
        SolverVariable solverVariable;
        SolverVariable solverVariable2;
        int i5;
        int margin;
        LinearSystem linearSystem3 = linearSystem;
        int i6 = 0;
        int i7 = 0;
        while (i7 < this.mVerticalChainsSize) {
            ConstraintWidget constraintWidget4 = this.mVerticalChainsArray[i7];
            int iCountMatchConstraintsChainedWidgets = countMatchConstraintsChainedWidgets(linearSystem, this.mChainEnds, this.mVerticalChainsArray[i7], 1, this.flags);
            ConstraintWidget constraintWidget5 = this.mChainEnds[2];
            if (constraintWidget5 != null) {
                if (!this.flags[1]) {
                    int i8 = constraintWidget4.mVerticalChainStyle == 0 ? 1 : i6;
                    int i9 = constraintWidget4.mVerticalChainStyle == 2 ? 1 : i6;
                    int i10 = this.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT ? 1 : i6;
                    if ((this.mOptimizationLevel != 2 && this.mOptimizationLevel != 8) || !this.flags[i6] || !constraintWidget4.mVerticalChainFixedPosition || i9 != 0 || i10 != 0 || constraintWidget4.mVerticalChainStyle != 0) {
                        char c = 3;
                        if (iCountMatchConstraintsChainedWidgets != 0 && i9 == 0) {
                            float f = 0.0f;
                            ConstraintWidget constraintWidget6 = null;
                            while (constraintWidget5 != null) {
                                if (constraintWidget5.mVerticalDimensionBehaviour != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                                    int margin2 = constraintWidget5.mTop.getMargin();
                                    if (constraintWidget6 != null) {
                                        margin2 += constraintWidget6.mBottom.getMargin();
                                    }
                                    linearSystem3.addGreaterThan(constraintWidget5.mTop.mSolverVariable, constraintWidget5.mTop.mTarget.mSolverVariable, margin2, constraintWidget5.mTop.mTarget.mOwner.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT ? 2 : 3);
                                    int margin3 = constraintWidget5.mBottom.getMargin();
                                    if (constraintWidget5.mBottom.mTarget.mOwner.mTop.mTarget != null && constraintWidget5.mBottom.mTarget.mOwner.mTop.mTarget.mOwner == constraintWidget5) {
                                        margin3 += constraintWidget5.mBottom.mTarget.mOwner.mTop.getMargin();
                                    }
                                    linearSystem3.addLowerThan(constraintWidget5.mBottom.mSolverVariable, constraintWidget5.mBottom.mTarget.mSolverVariable, -margin3, constraintWidget5.mBottom.mTarget.mOwner.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT ? 2 : 3);
                                } else {
                                    f += constraintWidget5.mVerticalWeight;
                                    if (constraintWidget5.mBottom.mTarget != null) {
                                        margin = constraintWidget5.mBottom.getMargin();
                                        if (constraintWidget5 != this.mChainEnds[3]) {
                                            margin += constraintWidget5.mBottom.mTarget.mOwner.mTop.getMargin();
                                        }
                                    } else {
                                        margin = i6;
                                    }
                                    linearSystem3.addGreaterThan(constraintWidget5.mBottom.mSolverVariable, constraintWidget5.mTop.mSolverVariable, i6, 1);
                                    linearSystem3.addLowerThan(constraintWidget5.mBottom.mSolverVariable, constraintWidget5.mBottom.mTarget.mSolverVariable, -margin, 1);
                                }
                                constraintWidget6 = constraintWidget5;
                                constraintWidget5 = constraintWidget5.mVerticalNextWidget;
                            }
                            if (iCountMatchConstraintsChainedWidgets != 1) {
                                int i11 = i6;
                                while (true) {
                                    int i12 = iCountMatchConstraintsChainedWidgets - 1;
                                    if (i11 >= i12) {
                                        break;
                                    }
                                    ConstraintWidget constraintWidget7 = this.mMatchConstraintsChainedWidgets[i11];
                                    i11++;
                                    ConstraintWidget constraintWidget8 = this.mMatchConstraintsChainedWidgets[i11];
                                    SolverVariable solverVariable3 = constraintWidget7.mTop.mSolverVariable;
                                    SolverVariable solverVariable4 = constraintWidget7.mBottom.mSolverVariable;
                                    SolverVariable solverVariable5 = constraintWidget8.mTop.mSolverVariable;
                                    SolverVariable solverVariable6 = constraintWidget8.mBottom.mSolverVariable;
                                    if (constraintWidget8 == this.mChainEnds[c]) {
                                        solverVariable6 = this.mChainEnds[1].mBottom.mSolverVariable;
                                    }
                                    int margin4 = constraintWidget7.mTop.getMargin();
                                    if (constraintWidget7.mTop.mTarget != null && constraintWidget7.mTop.mTarget.mOwner.mBottom.mTarget != null && constraintWidget7.mTop.mTarget.mOwner.mBottom.mTarget.mOwner == constraintWidget7) {
                                        margin4 += constraintWidget7.mTop.mTarget.mOwner.mBottom.getMargin();
                                    }
                                    int i13 = iCountMatchConstraintsChainedWidgets;
                                    linearSystem3.addGreaterThan(solverVariable3, constraintWidget7.mTop.mTarget.mSolverVariable, margin4, 2);
                                    int margin5 = constraintWidget7.mBottom.getMargin();
                                    if (constraintWidget7.mBottom.mTarget != null && constraintWidget7.mVerticalNextWidget != null) {
                                        margin5 += constraintWidget7.mVerticalNextWidget.mTop.mTarget != null ? constraintWidget7.mVerticalNextWidget.mTop.getMargin() : 0;
                                    }
                                    linearSystem3.addLowerThan(solverVariable4, constraintWidget7.mBottom.mTarget.mSolverVariable, -margin5, 2);
                                    if (i11 == i12) {
                                        int margin6 = constraintWidget8.mTop.getMargin();
                                        if (constraintWidget8.mTop.mTarget != null && constraintWidget8.mTop.mTarget.mOwner.mBottom.mTarget != null && constraintWidget8.mTop.mTarget.mOwner.mBottom.mTarget.mOwner == constraintWidget8) {
                                            margin6 += constraintWidget8.mTop.mTarget.mOwner.mBottom.getMargin();
                                        }
                                        linearSystem3.addGreaterThan(solverVariable5, constraintWidget8.mTop.mTarget.mSolverVariable, margin6, 2);
                                        ConstraintAnchor constraintAnchor = constraintWidget8.mBottom;
                                        if (constraintWidget8 == this.mChainEnds[3]) {
                                            constraintAnchor = this.mChainEnds[1].mBottom;
                                        }
                                        int margin7 = constraintAnchor.getMargin();
                                        if (constraintAnchor.mTarget != null && constraintAnchor.mTarget.mOwner.mTop.mTarget != null && constraintAnchor.mTarget.mOwner.mTop.mTarget.mOwner == constraintWidget8) {
                                            margin7 += constraintAnchor.mTarget.mOwner.mTop.getMargin();
                                        }
                                        i5 = 2;
                                        linearSystem3.addLowerThan(solverVariable6, constraintAnchor.mTarget.mSolverVariable, -margin7, 2);
                                    } else {
                                        i5 = 2;
                                    }
                                    if (constraintWidget4.mMatchConstraintMaxHeight > 0) {
                                        linearSystem3.addLowerThan(solverVariable4, solverVariable3, constraintWidget4.mMatchConstraintMaxHeight, i5);
                                    }
                                    ArrayRow arrayRowCreateRow = linearSystem.createRow();
                                    arrayRowCreateRow.createRowEqualDimension(constraintWidget7.mVerticalWeight, f, constraintWidget8.mVerticalWeight, solverVariable3, constraintWidget7.mTop.getMargin(), solverVariable4, constraintWidget7.mBottom.getMargin(), solverVariable5, constraintWidget8.mTop.getMargin(), solverVariable6, constraintWidget8.mBottom.getMargin());
                                    linearSystem3.addConstraint(arrayRowCreateRow);
                                    iCountMatchConstraintsChainedWidgets = i13;
                                    c = 3;
                                    i6 = 0;
                                }
                            } else {
                                ConstraintWidget constraintWidget9 = this.mMatchConstraintsChainedWidgets[i6];
                                int margin8 = constraintWidget9.mTop.getMargin();
                                if (constraintWidget9.mTop.mTarget != null) {
                                    margin8 += constraintWidget9.mTop.mTarget.getMargin();
                                }
                                int margin9 = constraintWidget9.mBottom.getMargin();
                                if (constraintWidget9.mBottom.mTarget != null) {
                                    margin9 += constraintWidget9.mBottom.mTarget.getMargin();
                                }
                                SolverVariable solverVariable7 = constraintWidget4.mBottom.mTarget.mSolverVariable;
                                if (constraintWidget9 == this.mChainEnds[3]) {
                                    solverVariable7 = this.mChainEnds[1].mBottom.mTarget.mSolverVariable;
                                }
                                if (constraintWidget9.mMatchConstraintDefaultHeight == 1) {
                                    linearSystem3.addGreaterThan(constraintWidget4.mTop.mSolverVariable, constraintWidget4.mTop.mTarget.mSolverVariable, margin8, 1);
                                    linearSystem3.addLowerThan(constraintWidget4.mBottom.mSolverVariable, solverVariable7, -margin9, 1);
                                    linearSystem3.addEquality(constraintWidget4.mBottom.mSolverVariable, constraintWidget4.mTop.mSolverVariable, constraintWidget4.getHeight(), 2);
                                } else {
                                    linearSystem3.addEquality(constraintWidget9.mTop.mSolverVariable, constraintWidget9.mTop.mTarget.mSolverVariable, margin8, 1);
                                    linearSystem3.addEquality(constraintWidget9.mBottom.mSolverVariable, solverVariable7, -margin9, 1);
                                }
                            }
                        } else {
                            ConstraintWidget constraintWidget10 = constraintWidget5;
                            ConstraintWidget constraintWidget11 = null;
                            ConstraintWidget constraintWidget12 = null;
                            boolean z2 = false;
                            while (constraintWidget10 != null) {
                                ConstraintWidget constraintWidget13 = constraintWidget10.mVerticalNextWidget;
                                if (constraintWidget13 == null) {
                                    constraintWidget = this.mChainEnds[1];
                                    z = true;
                                } else {
                                    constraintWidget = constraintWidget11;
                                    z = z2;
                                }
                                if (i9 != 0) {
                                    ConstraintAnchor constraintAnchor2 = constraintWidget10.mTop;
                                    int margin10 = constraintAnchor2.getMargin();
                                    if (constraintWidget12 != null) {
                                        margin10 += constraintWidget12.mBottom.getMargin();
                                    }
                                    int i14 = constraintWidget5 != constraintWidget10 ? 3 : 1;
                                    if (constraintAnchor2.mTarget != null) {
                                        solverVariable = constraintAnchor2.mSolverVariable;
                                        solverVariable2 = constraintAnchor2.mTarget.mSolverVariable;
                                    } else if (constraintWidget10.mBaseline.mTarget != null) {
                                        solverVariable = constraintWidget10.mBaseline.mSolverVariable;
                                        solverVariable2 = constraintWidget10.mBaseline.mTarget.mSolverVariable;
                                        margin10 -= constraintAnchor2.getMargin();
                                    } else {
                                        solverVariable = null;
                                        solverVariable2 = null;
                                    }
                                    if (solverVariable != null && solverVariable2 != null) {
                                        linearSystem3.addGreaterThan(solverVariable, solverVariable2, margin10, i14);
                                    }
                                    if (constraintWidget10.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                                        ConstraintAnchor constraintAnchor3 = constraintWidget10.mBottom;
                                        if (constraintWidget10.mMatchConstraintDefaultHeight == 1) {
                                            linearSystem3.addEquality(constraintAnchor3.mSolverVariable, constraintAnchor2.mSolverVariable, Math.max(constraintWidget10.mMatchConstraintMinHeight, constraintWidget10.getHeight()), 3);
                                        } else {
                                            linearSystem3.addGreaterThan(constraintAnchor2.mSolverVariable, constraintAnchor2.mTarget.mSolverVariable, constraintAnchor2.mMargin, 3);
                                            linearSystem3.addLowerThan(constraintAnchor3.mSolverVariable, constraintAnchor2.mSolverVariable, constraintWidget10.mMatchConstraintMinHeight, 3);
                                        }
                                    }
                                } else if (i8 != 0 || !z || constraintWidget12 == null) {
                                    if (i8 != 0 || z || constraintWidget12 != null) {
                                        ConstraintAnchor constraintAnchor4 = constraintWidget10.mTop;
                                        ConstraintAnchor constraintAnchor5 = constraintWidget10.mBottom;
                                        int margin11 = constraintAnchor4.getMargin();
                                        int margin12 = constraintAnchor5.getMargin();
                                        constraintWidget2 = constraintWidget10;
                                        i3 = i8;
                                        linearSystem3.addGreaterThan(constraintAnchor4.mSolverVariable, constraintAnchor4.mTarget.mSolverVariable, margin11, 1);
                                        int i15 = i7;
                                        linearSystem3.addLowerThan(constraintAnchor5.mSolverVariable, constraintAnchor5.mTarget.mSolverVariable, -margin12, 1);
                                        SolverVariable solverVariable8 = constraintAnchor4.mTarget != null ? constraintAnchor4.mTarget.mSolverVariable : null;
                                        if (constraintWidget12 == null) {
                                            solverVariable8 = constraintWidget4.mTop.mTarget != null ? constraintWidget4.mTop.mTarget.mSolverVariable : null;
                                        }
                                        if (constraintWidget13 == null) {
                                            constraintWidget13 = constraintWidget.mBottom.mTarget != null ? constraintWidget.mBottom.mTarget.mOwner : null;
                                        }
                                        ConstraintWidget constraintWidget14 = constraintWidget13;
                                        if (constraintWidget14 != null) {
                                            SolverVariable solverVariable9 = constraintWidget14.mTop.mSolverVariable;
                                            if (z) {
                                                solverVariable9 = constraintWidget.mBottom.mTarget != null ? constraintWidget.mBottom.mTarget.mSolverVariable : null;
                                            }
                                            if (solverVariable8 != null && solverVariable9 != null) {
                                                SolverVariable solverVariable10 = solverVariable8;
                                                constraintWidget4 = constraintWidget4;
                                                SolverVariable solverVariable11 = solverVariable9;
                                                i4 = i15;
                                                constraintWidget = constraintWidget;
                                                constraintWidget3 = constraintWidget14;
                                                linearSystem3 = linearSystem3;
                                                linearSystem.addCentering(constraintAnchor4.mSolverVariable, solverVariable10, margin11, 0.5f, solverVariable11, constraintAnchor5.mSolverVariable, margin12, 4);
                                            }
                                        }
                                        constraintWidget3 = constraintWidget14;
                                        i4 = i15;
                                    } else if (constraintWidget10.mTop.mTarget == null) {
                                        linearSystem3.addEquality(constraintWidget10.mTop.mSolverVariable, constraintWidget10.getDrawY());
                                    } else {
                                        linearSystem3.addEquality(constraintWidget10.mTop.mSolverVariable, constraintWidget4.mTop.mTarget.mSolverVariable, constraintWidget10.mTop.getMargin(), 5);
                                    }
                                    if (z) {
                                        constraintWidget3 = null;
                                    }
                                    constraintWidget4 = constraintWidget4;
                                    z2 = z;
                                    linearSystem3 = linearSystem3;
                                    i7 = i4;
                                    constraintWidget11 = constraintWidget;
                                    constraintWidget12 = constraintWidget2;
                                    i8 = i3;
                                    constraintWidget10 = constraintWidget3;
                                    this = this;
                                } else if (constraintWidget10.mBottom.mTarget == null) {
                                    linearSystem3.addEquality(constraintWidget10.mBottom.mSolverVariable, constraintWidget10.getDrawBottom());
                                } else {
                                    linearSystem3.addEquality(constraintWidget10.mBottom.mSolverVariable, constraintWidget.mBottom.mTarget.mSolverVariable, -constraintWidget10.mBottom.getMargin(), 5);
                                }
                                constraintWidget2 = constraintWidget10;
                                i3 = i8;
                                constraintWidget3 = constraintWidget13;
                                i4 = i7;
                                if (z) {
                                    constraintWidget3 = null;
                                }
                                constraintWidget4 = constraintWidget4;
                                z2 = z;
                                linearSystem3 = linearSystem3;
                                i7 = i4;
                                constraintWidget11 = constraintWidget;
                                constraintWidget12 = constraintWidget2;
                                i8 = i3;
                                constraintWidget10 = constraintWidget3;
                                this = this;
                            }
                            ConstraintWidget constraintWidget15 = constraintWidget4;
                            i = i7;
                            linearSystem2 = linearSystem3;
                            i2 = 0;
                            if (i9 != 0) {
                                ConstraintAnchor constraintAnchor6 = constraintWidget5.mTop;
                                ConstraintAnchor constraintAnchor7 = constraintWidget11.mBottom;
                                int margin13 = constraintAnchor6.getMargin();
                                int margin14 = constraintAnchor7.getMargin();
                                SolverVariable solverVariable12 = constraintWidget15.mTop.mTarget != null ? constraintWidget15.mTop.mTarget.mSolverVariable : null;
                                SolverVariable solverVariable13 = constraintWidget11.mBottom.mTarget != null ? constraintWidget11.mBottom.mTarget.mSolverVariable : null;
                                if (solverVariable12 != null && solverVariable13 != null) {
                                    linearSystem2.addLowerThan(constraintAnchor7.mSolverVariable, solverVariable13, -margin14, 1);
                                    linearSystem.addCentering(constraintAnchor6.mSolverVariable, solverVariable12, margin13, constraintWidget15.mVerticalBiasPercent, solverVariable13, constraintAnchor7.mSolverVariable, margin14, 4);
                                }
                            }
                        }
                    } else {
                        Optimizer.applyDirectResolutionVerticalChain(this, linearSystem3, iCountMatchConstraintsChainedWidgets, constraintWidget4);
                    }
                } else {
                    int drawY = constraintWidget4.getDrawY();
                    while (constraintWidget5 != null) {
                        linearSystem3.addEquality(constraintWidget5.mTop.mSolverVariable, drawY);
                        ConstraintWidget constraintWidget16 = constraintWidget5.mVerticalNextWidget;
                        drawY += constraintWidget5.mTop.getMargin() + constraintWidget5.getHeight() + constraintWidget5.mBottom.getMargin();
                        constraintWidget5 = constraintWidget16;
                    }
                }
                i = i7;
                i2 = i6;
                linearSystem2 = linearSystem3;
            } else {
                i = i7;
                i2 = i6;
                linearSystem2 = linearSystem3;
            }
            i7 = i + 1;
            linearSystem3 = linearSystem2;
            i6 = i2;
        }
    }

    private int countMatchConstraintsChainedWidgets(LinearSystem linearSystem, ConstraintWidget[] constraintWidgetArr, ConstraintWidget constraintWidget, int i, boolean[] zArr) {
        int i2;
        char c;
        char c2;
        zArr[0] = true;
        zArr[1] = false;
        ConstraintWidget constraintWidget2 = null;
        constraintWidgetArr[0] = null;
        constraintWidgetArr[2] = null;
        constraintWidgetArr[1] = null;
        constraintWidgetArr[3] = null;
        float f = 0.0f;
        int i3 = 5;
        int i4 = 8;
        if (i == 0) {
            boolean z = constraintWidget.mLeft.mTarget == null || constraintWidget.mLeft.mTarget.mOwner == this;
            constraintWidget.mHorizontalNextWidget = null;
            i2 = 0;
            ConstraintWidget constraintWidget3 = null;
            ConstraintWidget constraintWidget4 = constraintWidget.getVisibility() != 8 ? constraintWidget : null;
            ConstraintWidget constraintWidget5 = constraintWidget4;
            ConstraintWidget constraintWidget6 = constraintWidget;
            while (constraintWidget6.mRight.mTarget != null) {
                constraintWidget6.mHorizontalNextWidget = constraintWidget2;
                if (constraintWidget6.getVisibility() != 8) {
                    if (constraintWidget5 == null) {
                        constraintWidget5 = constraintWidget6;
                    }
                    if (constraintWidget4 != null && constraintWidget4 != constraintWidget6) {
                        constraintWidget4.mHorizontalNextWidget = constraintWidget6;
                    }
                    constraintWidget4 = constraintWidget6;
                } else {
                    linearSystem.addEquality(constraintWidget6.mLeft.mSolverVariable, constraintWidget6.mLeft.mTarget.mSolverVariable, 0, 5);
                    linearSystem.addEquality(constraintWidget6.mRight.mSolverVariable, constraintWidget6.mLeft.mSolverVariable, 0, 5);
                }
                if (constraintWidget6.getVisibility() != 8 && constraintWidget6.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    if (constraintWidget6.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        zArr[0] = false;
                    }
                    if (constraintWidget6.mDimensionRatio <= f) {
                        zArr[0] = false;
                        int i5 = i2 + 1;
                        if (i5 >= this.mMatchConstraintsChainedWidgets.length) {
                            this.mMatchConstraintsChainedWidgets = (ConstraintWidget[]) Arrays.copyOf(this.mMatchConstraintsChainedWidgets, this.mMatchConstraintsChainedWidgets.length * 2);
                        }
                        this.mMatchConstraintsChainedWidgets[i2] = constraintWidget6;
                        i2 = i5;
                    }
                }
                if (constraintWidget6.mRight.mTarget.mOwner.mLeft.mTarget == null || constraintWidget6.mRight.mTarget.mOwner.mLeft.mTarget.mOwner != constraintWidget6 || constraintWidget6.mRight.mTarget.mOwner == constraintWidget6) {
                    break;
                }
                constraintWidget3 = constraintWidget6.mRight.mTarget.mOwner;
                constraintWidget6 = constraintWidget3;
                constraintWidget2 = null;
                f = 0.0f;
            }
            if (constraintWidget6.mRight.mTarget != null && constraintWidget6.mRight.mTarget.mOwner != this) {
                z = false;
            }
            if (constraintWidget.mLeft.mTarget == null || constraintWidget3.mRight.mTarget == null) {
                c2 = 1;
                zArr[1] = true;
            } else {
                c2 = 1;
            }
            constraintWidget.mHorizontalChainFixedPosition = z;
            constraintWidget3.mHorizontalNextWidget = null;
            constraintWidgetArr[0] = constraintWidget;
            constraintWidgetArr[2] = constraintWidget5;
            constraintWidgetArr[c2] = constraintWidget3;
            constraintWidgetArr[3] = constraintWidget4;
        } else {
            boolean z2 = constraintWidget.mTop.mTarget == null || constraintWidget.mTop.mTarget.mOwner == this;
            ConstraintWidget constraintWidget7 = null;
            constraintWidget.mVerticalNextWidget = null;
            int i6 = 0;
            ConstraintWidget constraintWidget8 = null;
            ConstraintWidget constraintWidget9 = constraintWidget.getVisibility() != 8 ? constraintWidget : null;
            ConstraintWidget constraintWidget10 = constraintWidget9;
            ConstraintWidget constraintWidget11 = constraintWidget;
            while (constraintWidget11.mBottom.mTarget != null) {
                constraintWidget11.mVerticalNextWidget = constraintWidget7;
                if (constraintWidget11.getVisibility() != i4) {
                    if (constraintWidget9 == null) {
                        constraintWidget9 = constraintWidget11;
                    }
                    if (constraintWidget10 != null && constraintWidget10 != constraintWidget11) {
                        constraintWidget10.mVerticalNextWidget = constraintWidget11;
                    }
                    constraintWidget10 = constraintWidget11;
                } else {
                    linearSystem.addEquality(constraintWidget11.mTop.mSolverVariable, constraintWidget11.mTop.mTarget.mSolverVariable, 0, i3);
                    linearSystem.addEquality(constraintWidget11.mBottom.mSolverVariable, constraintWidget11.mTop.mSolverVariable, 0, i3);
                }
                if (constraintWidget11.getVisibility() != i4 && constraintWidget11.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    if (constraintWidget11.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        zArr[0] = false;
                    }
                    if (constraintWidget11.mDimensionRatio <= 0.0f) {
                        zArr[0] = false;
                        int i7 = i6 + 1;
                        if (i7 >= this.mMatchConstraintsChainedWidgets.length) {
                            this.mMatchConstraintsChainedWidgets = (ConstraintWidget[]) Arrays.copyOf(this.mMatchConstraintsChainedWidgets, this.mMatchConstraintsChainedWidgets.length * 2);
                        }
                        this.mMatchConstraintsChainedWidgets[i6] = constraintWidget11;
                        i6 = i7;
                    }
                }
                if (constraintWidget11.mBottom.mTarget.mOwner.mTop.mTarget == null || constraintWidget11.mBottom.mTarget.mOwner.mTop.mTarget.mOwner != constraintWidget11 || constraintWidget11.mBottom.mTarget.mOwner == constraintWidget11) {
                    break;
                }
                constraintWidget8 = constraintWidget11.mBottom.mTarget.mOwner;
                constraintWidget11 = constraintWidget8;
                constraintWidget7 = null;
                i3 = 5;
                i4 = 8;
            }
            i2 = i6;
            if (constraintWidget11.mBottom.mTarget != null && constraintWidget11.mBottom.mTarget.mOwner != this) {
                z2 = false;
            }
            if (constraintWidget.mTop.mTarget == null || constraintWidget8.mBottom.mTarget == null) {
                c = 1;
                zArr[1] = true;
            } else {
                c = 1;
            }
            constraintWidget.mVerticalChainFixedPosition = z2;
            constraintWidget8.mVerticalNextWidget = null;
            constraintWidgetArr[0] = constraintWidget;
            constraintWidgetArr[2] = constraintWidget9;
            constraintWidgetArr[c] = constraintWidget8;
            constraintWidgetArr[3] = constraintWidget10;
        }
        return i2;
    }

    public static ConstraintWidgetContainer createContainer(ConstraintWidgetContainer constraintWidgetContainer, String str, ArrayList<ConstraintWidget> arrayList, int i) {
        Rectangle bounds = getBounds(arrayList);
        if (bounds.width == 0 || bounds.height == 0) {
            return null;
        }
        if (i > 0) {
            int iMin = Math.min(bounds.x, bounds.y);
            if (i > iMin) {
                i = iMin;
            }
            bounds.grow(i, i);
        }
        constraintWidgetContainer.setOrigin(bounds.x, bounds.y);
        constraintWidgetContainer.setDimension(bounds.width, bounds.height);
        constraintWidgetContainer.setDebugName(str);
        ConstraintWidget parent = arrayList.get(0).getParent();
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ConstraintWidget constraintWidget = arrayList.get(i2);
            if (constraintWidget.getParent() == parent) {
                constraintWidgetContainer.add(constraintWidget);
                constraintWidget.setX(constraintWidget.getX() - bounds.x);
                constraintWidget.setY(constraintWidget.getY() - bounds.y);
            }
        }
        return constraintWidgetContainer;
    }

    private boolean optimize(LinearSystem linearSystem) {
        int size = this.mChildren.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i);
            constraintWidget.mHorizontalResolution = -1;
            constraintWidget.mVerticalResolution = -1;
            if (constraintWidget.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || constraintWidget.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                constraintWidget.mHorizontalResolution = 1;
                constraintWidget.mVerticalResolution = 1;
            }
        }
        boolean z = false;
        int i2 = 0;
        int i3 = 0;
        while (!z) {
            int i4 = 0;
            int i5 = 0;
            for (int i6 = 0; i6 < size; i6++) {
                ConstraintWidget constraintWidget2 = this.mChildren.get(i6);
                if (constraintWidget2.mHorizontalResolution == -1) {
                    if (this.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                        constraintWidget2.mHorizontalResolution = 1;
                    } else {
                        Optimizer.checkHorizontalSimpleDependency(this, linearSystem, constraintWidget2);
                    }
                }
                if (constraintWidget2.mVerticalResolution == -1) {
                    if (this.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                        constraintWidget2.mVerticalResolution = 1;
                    } else {
                        Optimizer.checkVerticalSimpleDependency(this, linearSystem, constraintWidget2);
                    }
                }
                if (constraintWidget2.mVerticalResolution == -1) {
                    i4++;
                }
                if (constraintWidget2.mHorizontalResolution == -1) {
                    i5++;
                }
            }
            if ((i4 == 0 && i5 == 0) || (i2 == i4 && i3 == i5)) {
                z = true;
            }
            i2 = i4;
            i3 = i5;
        }
        int i7 = 0;
        int i8 = 0;
        for (int i9 = 0; i9 < size; i9++) {
            ConstraintWidget constraintWidget3 = this.mChildren.get(i9);
            if (constraintWidget3.mHorizontalResolution == 1 || constraintWidget3.mHorizontalResolution == -1) {
                i7++;
            }
            if (constraintWidget3.mVerticalResolution == 1 || constraintWidget3.mVerticalResolution == -1) {
                i8++;
            }
        }
        return i7 == 0 && i8 == 0;
    }

    private void resetChains() {
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
    }

    static int setGroup(ConstraintAnchor constraintAnchor, int i) {
        int i2 = constraintAnchor.mGroup;
        if (constraintAnchor.mOwner.getParent() == null) {
            return i;
        }
        if (i2 <= i) {
            return i2;
        }
        constraintAnchor.mGroup = i;
        ConstraintAnchor opposite = constraintAnchor.getOpposite();
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (opposite != null) {
            i = setGroup(opposite, i);
        }
        if (constraintAnchor2 != null) {
            i = setGroup(constraintAnchor2, i);
        }
        if (opposite != null) {
            i = setGroup(opposite, i);
        }
        constraintAnchor.mGroup = i;
        return i;
    }

    void addChain(ConstraintWidget constraintWidget, int i) {
        if (i == 0) {
            while (constraintWidget.mLeft.mTarget != null && constraintWidget.mLeft.mTarget.mOwner.mRight.mTarget != null && constraintWidget.mLeft.mTarget.mOwner.mRight.mTarget == constraintWidget.mLeft && constraintWidget.mLeft.mTarget.mOwner != constraintWidget) {
                constraintWidget = constraintWidget.mLeft.mTarget.mOwner;
            }
            addHorizontalChain(constraintWidget);
            return;
        }
        if (i == 1) {
            while (constraintWidget.mTop.mTarget != null && constraintWidget.mTop.mTarget.mOwner.mBottom.mTarget != null && constraintWidget.mTop.mTarget.mOwner.mBottom.mTarget == constraintWidget.mTop && constraintWidget.mTop.mTarget.mOwner != constraintWidget) {
                constraintWidget = constraintWidget.mTop.mTarget.mOwner;
            }
            addVerticalChain(constraintWidget);
        }
    }

    public boolean addChildrenToSolver(LinearSystem linearSystem, int i) {
        boolean z;
        addToSolver(linearSystem, i);
        int size = this.mChildren.size();
        if (this.mOptimizationLevel == 2 || this.mOptimizationLevel == 4) {
            if (optimize(linearSystem)) {
                return false;
            }
            z = false;
        } else {
            z = true;
        }
        for (int i2 = 0; i2 < size; i2++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i2);
            if (constraintWidget instanceof ConstraintWidgetContainer) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = constraintWidget.mHorizontalDimensionBehaviour;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = constraintWidget.mVerticalDimensionBehaviour;
                if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    constraintWidget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                }
                if (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    constraintWidget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                }
                constraintWidget.addToSolver(linearSystem, i);
                if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    constraintWidget.setHorizontalDimensionBehaviour(dimensionBehaviour);
                }
                if (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    constraintWidget.setVerticalDimensionBehaviour(dimensionBehaviour2);
                }
            } else {
                if (z) {
                    Optimizer.checkMatchParent(this, linearSystem, constraintWidget);
                }
                constraintWidget.addToSolver(linearSystem, i);
            }
        }
        if (this.mHorizontalChainsSize > 0) {
            applyHorizontalChain(linearSystem);
        }
        if (this.mVerticalChainsSize > 0) {
            applyVerticalChain(linearSystem);
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:120:0x01b2 A[PHI: r0
      0x01b2: PHI (r0v3 int) = (r0v2 int), (r0v2 int), (r0v5 int), (r0v5 int) binds: [B:93:0x0152, B:95:0x0158, B:113:0x019a, B:118:0x01a9] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:123:0x01bb  */
    public void findHorizontalWrapRecursive(ConstraintWidget constraintWidget, boolean[] zArr) {
        int optimizerWrapWidth;
        ConstraintWidget constraintWidget2;
        int x = 0;
        if (constraintWidget.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mDimensionRatio > 0.0f) {
            zArr[0] = false;
            return;
        }
        int optimizerWrapWidth2 = constraintWidget.getOptimizerWrapWidth();
        if (constraintWidget.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mVerticalDimensionBehaviour != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mDimensionRatio > 0.0f) {
            zArr[0] = false;
            return;
        }
        boolean z = true;
        constraintWidget.mHorizontalWrapVisited = true;
        if (!(constraintWidget instanceof Guideline)) {
            if (!constraintWidget.mRight.isConnected() && !constraintWidget.mLeft.isConnected()) {
                x = optimizerWrapWidth2 + constraintWidget.getX();
            } else {
                if (constraintWidget.mRight.mTarget != null && constraintWidget.mLeft.mTarget != null && (constraintWidget.mRight.mTarget == constraintWidget.mLeft.mTarget || (constraintWidget.mRight.mTarget.mOwner == constraintWidget.mLeft.mTarget.mOwner && constraintWidget.mRight.mTarget.mOwner != constraintWidget.mParent))) {
                    zArr[0] = false;
                    return;
                }
                ConstraintWidget constraintWidget3 = null;
                if (constraintWidget.mRight.mTarget != null) {
                    constraintWidget2 = constraintWidget.mRight.mTarget.mOwner;
                    optimizerWrapWidth = constraintWidget.mRight.getMargin() + optimizerWrapWidth2;
                    if (!constraintWidget2.isRoot() && !constraintWidget2.mHorizontalWrapVisited) {
                        findHorizontalWrapRecursive(constraintWidget2, zArr);
                    }
                } else {
                    optimizerWrapWidth = optimizerWrapWidth2;
                    constraintWidget2 = null;
                }
                if (constraintWidget.mLeft.mTarget != null) {
                    constraintWidget3 = constraintWidget.mLeft.mTarget.mOwner;
                    optimizerWrapWidth2 += constraintWidget.mLeft.getMargin();
                    if (!constraintWidget3.isRoot() && !constraintWidget3.mHorizontalWrapVisited) {
                        findHorizontalWrapRecursive(constraintWidget3, zArr);
                    }
                }
                if (constraintWidget.mRight.mTarget != null && !constraintWidget2.isRoot()) {
                    if (constraintWidget.mRight.mTarget.mType == ConstraintAnchor.Type.RIGHT) {
                        optimizerWrapWidth += constraintWidget2.mDistToRight - constraintWidget2.getOptimizerWrapWidth();
                    } else if (constraintWidget.mRight.mTarget.getType() == ConstraintAnchor.Type.LEFT) {
                        optimizerWrapWidth += constraintWidget2.mDistToRight;
                    }
                    constraintWidget.mRightHasCentered = constraintWidget2.mRightHasCentered || !(constraintWidget2.mLeft.mTarget == null || constraintWidget2.mRight.mTarget == null || constraintWidget2.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
                    if (constraintWidget.mRightHasCentered && (constraintWidget2.mLeft.mTarget == null || constraintWidget2.mLeft.mTarget.mOwner != constraintWidget)) {
                        optimizerWrapWidth += optimizerWrapWidth - constraintWidget2.mDistToRight;
                    }
                }
                if (constraintWidget.mLeft.mTarget == null || constraintWidget3.isRoot()) {
                    x = optimizerWrapWidth2;
                } else {
                    if (constraintWidget.mLeft.mTarget.getType() == ConstraintAnchor.Type.LEFT) {
                        optimizerWrapWidth2 += constraintWidget3.mDistToLeft - constraintWidget3.getOptimizerWrapWidth();
                    } else if (constraintWidget.mLeft.mTarget.getType() == ConstraintAnchor.Type.RIGHT) {
                        optimizerWrapWidth2 += constraintWidget3.mDistToLeft;
                    }
                    if (!constraintWidget3.mLeftHasCentered && (constraintWidget3.mLeft.mTarget == null || constraintWidget3.mRight.mTarget == null || constraintWidget3.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT)) {
                        z = false;
                    }
                    constraintWidget.mLeftHasCentered = z;
                    if (!constraintWidget.mLeftHasCentered || (constraintWidget3.mRight.mTarget != null && constraintWidget3.mRight.mTarget.mOwner == constraintWidget)) {
                        x = optimizerWrapWidth2;
                    } else {
                        x = optimizerWrapWidth2 + (optimizerWrapWidth2 - constraintWidget3.mDistToLeft);
                    }
                }
            }
            if (constraintWidget.getVisibility() == 8) {
                x -= constraintWidget.mWidth;
                optimizerWrapWidth -= constraintWidget.mWidth;
            }
            constraintWidget.mDistToLeft = x;
            constraintWidget.mDistToRight = optimizerWrapWidth;
        }
        Guideline guideline = (Guideline) constraintWidget;
        if (guideline.getOrientation() != 1) {
            x = optimizerWrapWidth2;
        } else if (guideline.getRelativeBegin() != -1) {
            optimizerWrapWidth2 = 0;
            x = guideline.getRelativeBegin();
        } else {
            optimizerWrapWidth2 = guideline.getRelativeEnd() != -1 ? guideline.getRelativeEnd() : 0;
        }
        optimizerWrapWidth = optimizerWrapWidth2;
        if (constraintWidget.getVisibility() == 8) {
            x -= constraintWidget.mWidth;
            optimizerWrapWidth -= constraintWidget.mWidth;
        }
        constraintWidget.mDistToLeft = x;
        constraintWidget.mDistToRight = optimizerWrapWidth;
    }

    /* JADX WARN: Code duplicated, block: B:134:0x020b  */
    public void findVerticalWrapRecursive(ConstraintWidget constraintWidget, boolean[] zArr) {
        int optimizerWrapHeight;
        ConstraintWidget owner;
        int y = 0;
        if (constraintWidget.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mHorizontalDimensionBehaviour != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mDimensionRatio > 0.0f) {
            zArr[0] = false;
            return;
        }
        int optimizerWrapHeight2 = constraintWidget.getOptimizerWrapHeight();
        boolean z = true;
        constraintWidget.mVerticalWrapVisited = true;
        if (!(constraintWidget instanceof Guideline)) {
            if (constraintWidget.mBaseline.mTarget == null && constraintWidget.mTop.mTarget == null && constraintWidget.mBottom.mTarget == null) {
                y = optimizerWrapHeight2 + constraintWidget.getY();
            } else {
                if (constraintWidget.mBottom.mTarget != null && constraintWidget.mTop.mTarget != null && (constraintWidget.mBottom.mTarget == constraintWidget.mTop.mTarget || (constraintWidget.mBottom.mTarget.mOwner == constraintWidget.mTop.mTarget.mOwner && constraintWidget.mBottom.mTarget.mOwner != constraintWidget.mParent))) {
                    zArr[0] = false;
                    return;
                }
                if (constraintWidget.mBaseline.isConnected()) {
                    ConstraintWidget owner2 = constraintWidget.mBaseline.mTarget.getOwner();
                    if (!owner2.mVerticalWrapVisited) {
                        findVerticalWrapRecursive(owner2, zArr);
                    }
                    int iMax = Math.max((owner2.mDistToTop - owner2.mHeight) + optimizerWrapHeight2, optimizerWrapHeight2);
                    int iMax2 = Math.max((owner2.mDistToBottom - owner2.mHeight) + optimizerWrapHeight2, optimizerWrapHeight2);
                    if (constraintWidget.getVisibility() == 8) {
                        iMax -= constraintWidget.mHeight;
                        iMax2 -= constraintWidget.mHeight;
                    }
                    constraintWidget.mDistToTop = iMax;
                    constraintWidget.mDistToBottom = iMax2;
                    return;
                }
                ConstraintWidget owner3 = null;
                if (constraintWidget.mTop.isConnected()) {
                    owner = constraintWidget.mTop.mTarget.getOwner();
                    optimizerWrapHeight = constraintWidget.mTop.getMargin() + optimizerWrapHeight2;
                    if (!owner.isRoot() && !owner.mVerticalWrapVisited) {
                        findVerticalWrapRecursive(owner, zArr);
                    }
                } else {
                    optimizerWrapHeight = optimizerWrapHeight2;
                    owner = null;
                }
                if (constraintWidget.mBottom.isConnected()) {
                    owner3 = constraintWidget.mBottom.mTarget.getOwner();
                    optimizerWrapHeight2 += constraintWidget.mBottom.getMargin();
                    if (!owner3.isRoot() && !owner3.mVerticalWrapVisited) {
                        findVerticalWrapRecursive(owner3, zArr);
                    }
                }
                if (constraintWidget.mTop.mTarget != null && !owner.isRoot()) {
                    if (constraintWidget.mTop.mTarget.getType() == ConstraintAnchor.Type.TOP) {
                        optimizerWrapHeight += owner.mDistToTop - owner.getOptimizerWrapHeight();
                    } else if (constraintWidget.mTop.mTarget.getType() == ConstraintAnchor.Type.BOTTOM) {
                        optimizerWrapHeight += owner.mDistToTop;
                    }
                    constraintWidget.mTopHasCentered = owner.mTopHasCentered || !(owner.mTop.mTarget == null || owner.mTop.mTarget.mOwner == constraintWidget || owner.mBottom.mTarget == null || owner.mBottom.mTarget.mOwner == constraintWidget || owner.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
                    if (constraintWidget.mTopHasCentered && (owner.mBottom.mTarget == null || owner.mBottom.mTarget.mOwner != constraintWidget)) {
                        optimizerWrapHeight += optimizerWrapHeight - owner.mDistToTop;
                    }
                }
                if (constraintWidget.mBottom.mTarget != null && !owner3.isRoot()) {
                    if (constraintWidget.mBottom.mTarget.getType() == ConstraintAnchor.Type.BOTTOM) {
                        optimizerWrapHeight2 += owner3.mDistToBottom - owner3.getOptimizerWrapHeight();
                    } else if (constraintWidget.mBottom.mTarget.getType() == ConstraintAnchor.Type.TOP) {
                        optimizerWrapHeight2 += owner3.mDistToBottom;
                    }
                    if (!owner3.mBottomHasCentered && (owner3.mTop.mTarget == null || owner3.mTop.mTarget.mOwner == constraintWidget || owner3.mBottom.mTarget == null || owner3.mBottom.mTarget.mOwner == constraintWidget || owner3.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT)) {
                        z = false;
                    }
                    constraintWidget.mBottomHasCentered = z;
                    if (constraintWidget.mBottomHasCentered && (owner3.mTop.mTarget == null || owner3.mTop.mTarget.mOwner != constraintWidget)) {
                        optimizerWrapHeight2 += optimizerWrapHeight2 - owner3.mDistToBottom;
                    }
                }
            }
            if (constraintWidget.getVisibility() == 8) {
                optimizerWrapHeight -= constraintWidget.mHeight;
                optimizerWrapHeight2 -= constraintWidget.mHeight;
            }
            constraintWidget.mDistToTop = optimizerWrapHeight;
            constraintWidget.mDistToBottom = optimizerWrapHeight2;
        }
        Guideline guideline = (Guideline) constraintWidget;
        if (guideline.getOrientation() != 0) {
            y = optimizerWrapHeight2;
        } else if (guideline.getRelativeBegin() != -1) {
            optimizerWrapHeight2 = 0;
            y = guideline.getRelativeBegin();
        } else {
            optimizerWrapHeight2 = guideline.getRelativeEnd() != -1 ? guideline.getRelativeEnd() : 0;
        }
        optimizerWrapHeight = y;
        if (constraintWidget.getVisibility() == 8) {
            optimizerWrapHeight -= constraintWidget.mHeight;
            optimizerWrapHeight2 -= constraintWidget.mHeight;
        }
        constraintWidget.mDistToTop = optimizerWrapHeight;
        constraintWidget.mDistToBottom = optimizerWrapHeight2;
    }

    public void findWrapSize(ArrayList<ConstraintWidget> arrayList, boolean[] zArr) {
        int size = arrayList.size();
        char c = 0;
        zArr[0] = true;
        int i = 0;
        int iMax = 0;
        int iMax2 = 0;
        int i2 = 0;
        int iMax3 = 0;
        int iMax4 = 0;
        int iMax5 = 0;
        while (i < size) {
            ConstraintWidget constraintWidget = arrayList.get(i);
            if (!constraintWidget.isRoot()) {
                if (!constraintWidget.mHorizontalWrapVisited) {
                    findHorizontalWrapRecursive(constraintWidget, zArr);
                }
                if (!constraintWidget.mVerticalWrapVisited) {
                    findVerticalWrapRecursive(constraintWidget, zArr);
                }
                if (!zArr[c]) {
                    return;
                }
                int width = (constraintWidget.mDistToLeft + constraintWidget.mDistToRight) - constraintWidget.getWidth();
                int height = (constraintWidget.mDistToTop + constraintWidget.mDistToBottom) - constraintWidget.getHeight();
                int width2 = constraintWidget.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_PARENT ? constraintWidget.getWidth() + constraintWidget.mLeft.mMargin + constraintWidget.mRight.mMargin : width;
                int height2 = constraintWidget.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_PARENT ? constraintWidget.getHeight() + constraintWidget.mTop.mMargin + constraintWidget.mBottom.mMargin : height;
                if (constraintWidget.getVisibility() == 8) {
                    width2 = 0;
                    height2 = 0;
                }
                iMax = Math.max(iMax, constraintWidget.mDistToLeft);
                iMax2 = Math.max(iMax2, constraintWidget.mDistToRight);
                iMax4 = Math.max(iMax4, constraintWidget.mDistToBottom);
                iMax3 = Math.max(iMax3, constraintWidget.mDistToTop);
                int iMax6 = Math.max(i2, width2);
                iMax5 = Math.max(iMax5, height2);
                i2 = iMax6;
            }
            i++;
            c = 0;
        }
        this.mWrapWidth = Math.max(this.mMinWidth, Math.max(Math.max(iMax, iMax2), i2));
        this.mWrapHeight = Math.max(this.mMinHeight, Math.max(Math.max(iMax3, iMax4), iMax5));
        for (int i3 = 0; i3 < size; i3++) {
            ConstraintWidget constraintWidget2 = arrayList.get(i3);
            constraintWidget2.mHorizontalWrapVisited = false;
            constraintWidget2.mVerticalWrapVisited = false;
            constraintWidget2.mLeftHasCentered = false;
            constraintWidget2.mRightHasCentered = false;
            constraintWidget2.mTopHasCentered = false;
            constraintWidget2.mBottomHasCentered = false;
        }
    }

    public ArrayList<Guideline> getHorizontalGuidelines() {
        ArrayList<Guideline> arrayList = new ArrayList<>();
        int size = this.mChildren.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i);
            if (constraintWidget instanceof Guideline) {
                Guideline guideline = (Guideline) constraintWidget;
                if (guideline.getOrientation() == 0) {
                    arrayList.add(guideline);
                }
            }
        }
        return arrayList;
    }

    public LinearSystem getSystem() {
        return this.mSystem;
    }

    @Override // android.support.constraint.solver.widgets.ConstraintWidget
    public String getType() {
        return "ConstraintLayout";
    }

    public ArrayList<Guideline> getVerticalGuidelines() {
        ArrayList<Guideline> arrayList = new ArrayList<>();
        int size = this.mChildren.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i);
            if (constraintWidget instanceof Guideline) {
                Guideline guideline = (Guideline) constraintWidget;
                if (guideline.getOrientation() == 1) {
                    arrayList.add(guideline);
                }
            }
        }
        return arrayList;
    }

    public boolean handlesInternalConstraints() {
        return false;
    }

    public boolean isHeightMeasuredTooSmall() {
        return this.mHeightMeasuredTooSmall;
    }

    public boolean isWidthMeasuredTooSmall() {
        return this.mWidthMeasuredTooSmall;
    }

    /* JADX WARN: Code duplicated, block: B:112:0x021a A[PHI: r0 r13
      0x021a: PHI (r0v31 boolean) = (r0v30 boolean), (r0v33 boolean), (r0v33 boolean), (r0v33 boolean) binds: [B:99:0x01e5, B:107:0x0204, B:108:0x0206, B:110:0x020c] A[DONT_GENERATE, DONT_INLINE]
      0x021a: PHI (r13v5 boolean) = (r13v4 boolean), (r13v7 boolean), (r13v7 boolean), (r13v7 boolean) binds: [B:99:0x01e5, B:107:0x0204, B:108:0x0206, B:110:0x020c] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.support.constraint.solver.widgets.WidgetContainer
    public void layout() {
        boolean z;
        boolean zAddChildrenToSolver;
        boolean z2;
        int i = this.mX;
        int i2 = this.mY;
        int i3 = 0;
        int iMax = Math.max(0, getWidth());
        int iMax2 = Math.max(0, getHeight());
        this.mWidthMeasuredTooSmall = false;
        this.mHeightMeasuredTooSmall = false;
        if (this.mParent != null) {
            if (this.mSnapshot == null) {
                this.mSnapshot = new Snapshot(this);
            }
            this.mSnapshot.updateFrom(this);
            setX(this.mPaddingLeft);
            setY(this.mPaddingTop);
            resetAnchors();
            resetSolverVariables(this.mSystem.getCache());
        } else {
            this.mX = 0;
            this.mY = 0;
        }
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = this.mVerticalDimensionBehaviour;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = this.mHorizontalDimensionBehaviour;
        char c = 2;
        if (this.mOptimizationLevel == 2 && (this.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || this.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT)) {
            findWrapSize(this.mChildren, this.flags);
            z = this.flags[0];
            if (iMax > 0 && iMax2 > 0 && (this.mWrapWidth > iMax || this.mWrapHeight > iMax2)) {
                z = false;
            }
            if (z) {
                if (this.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    this.mHorizontalDimensionBehaviour = ConstraintWidget.DimensionBehaviour.FIXED;
                    if (iMax <= 0 || iMax >= this.mWrapWidth) {
                        setWidth(Math.max(this.mMinWidth, this.mWrapWidth));
                    } else {
                        this.mWidthMeasuredTooSmall = true;
                        setWidth(iMax);
                    }
                }
                if (this.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    this.mVerticalDimensionBehaviour = ConstraintWidget.DimensionBehaviour.FIXED;
                    if (iMax2 <= 0 || iMax2 >= this.mWrapHeight) {
                        setHeight(Math.max(this.mMinHeight, this.mWrapHeight));
                    } else {
                        this.mHeightMeasuredTooSmall = true;
                        setHeight(iMax2);
                    }
                }
            }
        } else {
            z = false;
        }
        resetChains();
        int size = this.mChildren.size();
        for (int i4 = 0; i4 < size; i4++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i4);
            if (constraintWidget instanceof WidgetContainer) {
                ((WidgetContainer) constraintWidget).layout();
            }
        }
        boolean z3 = z;
        int i5 = 0;
        boolean z4 = true;
        while (z4) {
            int i6 = i5 + 1;
            try {
                this.mSystem.reset();
                zAddChildrenToSolver = addChildrenToSolver(this.mSystem, Integer.MAX_VALUE);
                if (zAddChildrenToSolver) {
                    try {
                        this.mSystem.minimize();
                    } catch (Exception e) {
                        e = e;
                        e.printStackTrace();
                    }
                }
            } catch (Exception e2) {
                e = e2;
                zAddChildrenToSolver = z4;
            }
            if (!zAddChildrenToSolver) {
                updateFromSolver(this.mSystem, Integer.MAX_VALUE);
                for (int i7 = i3; i7 < size; i7++) {
                    ConstraintWidget constraintWidget2 = this.mChildren.get(i7);
                    if (constraintWidget2.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget2.getWidth() < constraintWidget2.getWrapWidth()) {
                        this.flags[c] = true;
                        break;
                    } else {
                        if (constraintWidget2.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget2.getHeight() < constraintWidget2.getWrapHeight()) {
                            this.flags[c] = true;
                            break;
                        }
                    }
                }
            } else {
                updateChildrenFromSolver(this.mSystem, Integer.MAX_VALUE, this.flags);
            }
            if (i6 >= 8 || !this.flags[c]) {
                z2 = false;
            } else {
                int iMax3 = 0;
                int iMax4 = 0;
                for (int i8 = 0; i8 < size; i8++) {
                    ConstraintWidget constraintWidget3 = this.mChildren.get(i8);
                    iMax3 = Math.max(iMax3, constraintWidget3.mX + constraintWidget3.getWidth());
                    iMax4 = Math.max(iMax4, constraintWidget3.mY + constraintWidget3.getHeight());
                }
                int iMax5 = Math.max(this.mMinWidth, iMax3);
                int iMax6 = Math.max(this.mMinHeight, iMax4);
                if (dimensionBehaviour2 != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || getWidth() >= iMax5) {
                    z2 = false;
                } else {
                    setWidth(iMax5);
                    this.mHorizontalDimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    z2 = true;
                    z3 = true;
                }
                if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT && getHeight() < iMax6) {
                    setHeight(iMax6);
                    this.mVerticalDimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    z2 = true;
                    z3 = true;
                }
            }
            int iMax7 = Math.max(this.mMinWidth, getWidth());
            if (iMax7 > getWidth()) {
                setWidth(iMax7);
                this.mHorizontalDimensionBehaviour = ConstraintWidget.DimensionBehaviour.FIXED;
                z2 = true;
                z3 = true;
            }
            int iMax8 = Math.max(this.mMinHeight, getHeight());
            if (iMax8 > getHeight()) {
                setHeight(iMax8);
                this.mVerticalDimensionBehaviour = ConstraintWidget.DimensionBehaviour.FIXED;
                z2 = true;
                z3 = true;
            }
            if (z3) {
                z4 = z2;
            } else {
                if (this.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT && iMax > 0 && getWidth() > iMax) {
                    this.mWidthMeasuredTooSmall = true;
                    this.mHorizontalDimensionBehaviour = ConstraintWidget.DimensionBehaviour.FIXED;
                    setWidth(iMax);
                    z2 = true;
                    z3 = true;
                }
                if (this.mVerticalDimensionBehaviour != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || iMax2 <= 0 || getHeight() <= iMax2) {
                    z4 = z2;
                } else {
                    this.mHeightMeasuredTooSmall = true;
                    this.mVerticalDimensionBehaviour = ConstraintWidget.DimensionBehaviour.FIXED;
                    setHeight(iMax2);
                    z4 = true;
                    z3 = true;
                }
            }
            i5 = i6;
            i3 = 0;
            c = 2;
        }
        if (this.mParent != null) {
            int iMax9 = Math.max(this.mMinWidth, getWidth());
            int iMax10 = Math.max(this.mMinHeight, getHeight());
            this.mSnapshot.applyTo(this);
            setWidth(iMax9 + this.mPaddingLeft + this.mPaddingRight);
            setHeight(iMax10 + this.mPaddingTop + this.mPaddingBottom);
        } else {
            this.mX = i;
            this.mY = i2;
        }
        if (z3) {
            this.mHorizontalDimensionBehaviour = dimensionBehaviour2;
            this.mVerticalDimensionBehaviour = dimensionBehaviour;
        }
        resetSolverVariables(this.mSystem.getCache());
        if (this == getRootConstraintContainer()) {
            updateDrawPosition();
        }
    }

    public int layoutFindGroups() {
        ConstraintAnchor.Type[] typeArr = {ConstraintAnchor.Type.LEFT, ConstraintAnchor.Type.RIGHT, ConstraintAnchor.Type.TOP, ConstraintAnchor.Type.BASELINE, ConstraintAnchor.Type.BOTTOM};
        int size = this.mChildren.size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i2);
            ConstraintAnchor constraintAnchor = constraintWidget.mLeft;
            if (constraintAnchor.mTarget == null) {
                constraintAnchor.mGroup = Integer.MAX_VALUE;
            } else if (setGroup(constraintAnchor, i) == i) {
                i++;
            }
            ConstraintAnchor constraintAnchor2 = constraintWidget.mTop;
            if (constraintAnchor2.mTarget == null) {
                constraintAnchor2.mGroup = Integer.MAX_VALUE;
            } else if (setGroup(constraintAnchor2, i) == i) {
                i++;
            }
            ConstraintAnchor constraintAnchor3 = constraintWidget.mRight;
            if (constraintAnchor3.mTarget == null) {
                constraintAnchor3.mGroup = Integer.MAX_VALUE;
            } else if (setGroup(constraintAnchor3, i) == i) {
                i++;
            }
            ConstraintAnchor constraintAnchor4 = constraintWidget.mBottom;
            if (constraintAnchor4.mTarget == null) {
                constraintAnchor4.mGroup = Integer.MAX_VALUE;
            } else if (setGroup(constraintAnchor4, i) == i) {
                i++;
            }
            ConstraintAnchor constraintAnchor5 = constraintWidget.mBaseline;
            if (constraintAnchor5.mTarget == null) {
                constraintAnchor5.mGroup = Integer.MAX_VALUE;
            } else if (setGroup(constraintAnchor5, i) == i) {
                i++;
            }
        }
        boolean z = true;
        while (z) {
            int i3 = 0;
            boolean z2 = false;
            while (i3 < size) {
                ConstraintWidget constraintWidget2 = this.mChildren.get(i3);
                boolean z3 = z2;
                for (int i4 = 0; i4 < typeArr.length; i4++) {
                    ConstraintAnchor constraintAnchor6 = null;
                    switch (typeArr[i4]) {
                        case LEFT:
                            constraintAnchor6 = constraintWidget2.mLeft;
                            break;
                        case TOP:
                            constraintAnchor6 = constraintWidget2.mTop;
                            break;
                        case RIGHT:
                            constraintAnchor6 = constraintWidget2.mRight;
                            break;
                        case BOTTOM:
                            constraintAnchor6 = constraintWidget2.mBottom;
                            break;
                        case BASELINE:
                            constraintAnchor6 = constraintWidget2.mBaseline;
                            break;
                    }
                    ConstraintAnchor constraintAnchor7 = constraintAnchor6.mTarget;
                    if (constraintAnchor7 != null) {
                        if (constraintAnchor7.mOwner.getParent() != null && constraintAnchor7.mGroup != constraintAnchor6.mGroup) {
                            int i5 = constraintAnchor6.mGroup > constraintAnchor7.mGroup ? constraintAnchor7.mGroup : constraintAnchor6.mGroup;
                            constraintAnchor6.mGroup = i5;
                            constraintAnchor7.mGroup = i5;
                            z3 = true;
                        }
                        ConstraintAnchor opposite = constraintAnchor7.getOpposite();
                        if (opposite != null && opposite.mGroup != constraintAnchor6.mGroup) {
                            int i6 = constraintAnchor6.mGroup > opposite.mGroup ? opposite.mGroup : constraintAnchor6.mGroup;
                            constraintAnchor6.mGroup = i6;
                            opposite.mGroup = i6;
                            z3 = true;
                        }
                    }
                }
                i3++;
                z2 = z3;
            }
            z = z2;
        }
        int[] iArr = new int[(this.mChildren.size() * typeArr.length) + 1];
        Arrays.fill(iArr, -1);
        int i7 = 0;
        for (int i8 = 0; i8 < size; i8++) {
            ConstraintWidget constraintWidget3 = this.mChildren.get(i8);
            ConstraintAnchor constraintAnchor8 = constraintWidget3.mLeft;
            if (constraintAnchor8.mGroup != Integer.MAX_VALUE) {
                int i9 = constraintAnchor8.mGroup;
                if (iArr[i9] == -1) {
                    iArr[i9] = i7;
                    i7++;
                }
                constraintAnchor8.mGroup = iArr[i9];
            }
            ConstraintAnchor constraintAnchor9 = constraintWidget3.mTop;
            if (constraintAnchor9.mGroup != Integer.MAX_VALUE) {
                int i10 = constraintAnchor9.mGroup;
                if (iArr[i10] == -1) {
                    iArr[i10] = i7;
                    i7++;
                }
                constraintAnchor9.mGroup = iArr[i10];
            }
            ConstraintAnchor constraintAnchor10 = constraintWidget3.mRight;
            if (constraintAnchor10.mGroup != Integer.MAX_VALUE) {
                int i11 = constraintAnchor10.mGroup;
                if (iArr[i11] == -1) {
                    iArr[i11] = i7;
                    i7++;
                }
                constraintAnchor10.mGroup = iArr[i11];
            }
            ConstraintAnchor constraintAnchor11 = constraintWidget3.mBottom;
            if (constraintAnchor11.mGroup != Integer.MAX_VALUE) {
                int i12 = constraintAnchor11.mGroup;
                if (iArr[i12] == -1) {
                    iArr[i12] = i7;
                    i7++;
                }
                constraintAnchor11.mGroup = iArr[i12];
            }
            ConstraintAnchor constraintAnchor12 = constraintWidget3.mBaseline;
            if (constraintAnchor12.mGroup != Integer.MAX_VALUE) {
                int i13 = constraintAnchor12.mGroup;
                if (iArr[i13] == -1) {
                    iArr[i13] = i7;
                    i7++;
                }
                constraintAnchor12.mGroup = iArr[i13];
            }
        }
        return i7;
    }

    public int layoutFindGroupsSimple() {
        int size = this.mChildren.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i);
            constraintWidget.mLeft.mGroup = 0;
            constraintWidget.mRight.mGroup = 0;
            constraintWidget.mTop.mGroup = 1;
            constraintWidget.mBottom.mGroup = 1;
            constraintWidget.mBaseline.mGroup = 1;
        }
        return 2;
    }

    public void layoutWithGroup(int i) {
        int i2 = this.mX;
        int i3 = this.mY;
        if (this.mParent != null) {
            if (this.mSnapshot == null) {
                this.mSnapshot = new Snapshot(this);
            }
            this.mSnapshot.updateFrom(this);
            this.mX = 0;
            this.mY = 0;
            resetAnchors();
            resetSolverVariables(this.mSystem.getCache());
        } else {
            this.mX = 0;
            this.mY = 0;
        }
        int size = this.mChildren.size();
        for (int i4 = 0; i4 < size; i4++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i4);
            if (constraintWidget instanceof WidgetContainer) {
                ((WidgetContainer) constraintWidget).layout();
            }
        }
        this.mLeft.mGroup = 0;
        this.mRight.mGroup = 0;
        this.mTop.mGroup = 1;
        this.mBottom.mGroup = 1;
        this.mSystem.reset();
        for (int i5 = 0; i5 < i; i5++) {
            try {
                addToSolver(this.mSystem, i5);
                this.mSystem.minimize();
                updateFromSolver(this.mSystem, i5);
            } catch (Exception e) {
                e.printStackTrace();
            }
            updateFromSolver(this.mSystem, -2);
        }
        if (this.mParent != null) {
            int width = getWidth();
            int height = getHeight();
            this.mSnapshot.applyTo(this);
            setWidth(width);
            setHeight(height);
        } else {
            this.mX = i2;
            this.mY = i3;
        }
        if (this == getRootConstraintContainer()) {
            updateDrawPosition();
        }
    }

    @Override // android.support.constraint.solver.widgets.WidgetContainer, android.support.constraint.solver.widgets.ConstraintWidget
    public void reset() {
        this.mSystem.reset();
        this.mPaddingLeft = 0;
        this.mPaddingRight = 0;
        this.mPaddingTop = 0;
        this.mPaddingBottom = 0;
        super.reset();
    }

    public void setOptimizationLevel(int i) {
        this.mOptimizationLevel = i;
    }

    public void setPadding(int i, int i2, int i3, int i4) {
        this.mPaddingLeft = i;
        this.mPaddingTop = i2;
        this.mPaddingRight = i3;
        this.mPaddingBottom = i4;
    }

    public void updateChildrenFromSolver(LinearSystem linearSystem, int i, boolean[] zArr) {
        zArr[2] = false;
        updateFromSolver(linearSystem, i);
        int size = this.mChildren.size();
        for (int i2 = 0; i2 < size; i2++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i2);
            constraintWidget.updateFromSolver(linearSystem, i);
            if (constraintWidget.mHorizontalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.getWidth() < constraintWidget.getWrapWidth()) {
                zArr[2] = true;
            }
            if (constraintWidget.mVerticalDimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.getHeight() < constraintWidget.getWrapHeight()) {
                zArr[2] = true;
            }
        }
    }
}
