package android.support.constraint.solver.widgets;

import android.support.constraint.solver.ArrayRow;
import android.support.constraint.solver.Cache;
import android.support.constraint.solver.LinearSystem;
import android.support.constraint.solver.SolverVariable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ConstraintWidget {
    private static final boolean AUTOTAG_CENTER = false;
    public static final int CHAIN_PACKED = 2;
    public static final int CHAIN_SPREAD = 0;
    public static final int CHAIN_SPREAD_INSIDE = 1;
    public static float DEFAULT_BIAS = 0.5f;
    protected static final int DIRECT = 2;
    public static final int GONE = 8;
    public static final int HORIZONTAL = 0;
    public static final int INVISIBLE = 4;
    public static final int MATCH_CONSTRAINT_SPREAD = 0;
    public static final int MATCH_CONSTRAINT_WRAP = 1;
    protected static final int SOLVER = 1;
    public static final int UNKNOWN = -1;
    public static final int VERTICAL = 1;
    public static final int VISIBLE = 0;
    protected ArrayList<ConstraintAnchor> mAnchors;
    ConstraintAnchor mBaseline;
    int mBaselineDistance;
    ConstraintAnchor mBottom;
    boolean mBottomHasCentered;
    ConstraintAnchor mCenter;
    ConstraintAnchor mCenterX;
    ConstraintAnchor mCenterY;
    private Object mCompanionWidget;
    private int mContainerItemSkip;
    private String mDebugName;
    protected float mDimensionRatio;
    protected int mDimensionRatioSide;
    int mDistToBottom;
    int mDistToLeft;
    int mDistToRight;
    int mDistToTop;
    private int mDrawHeight;
    private int mDrawWidth;
    private int mDrawX;
    private int mDrawY;
    int mHeight;
    float mHorizontalBiasPercent;
    boolean mHorizontalChainFixedPosition;
    int mHorizontalChainStyle;
    DimensionBehaviour mHorizontalDimensionBehaviour;
    ConstraintWidget mHorizontalNextWidget;
    public int mHorizontalResolution;
    float mHorizontalWeight;
    boolean mHorizontalWrapVisited;
    ConstraintAnchor mLeft;
    boolean mLeftHasCentered;
    int mMatchConstraintDefaultHeight;
    int mMatchConstraintDefaultWidth;
    int mMatchConstraintMaxHeight;
    int mMatchConstraintMaxWidth;
    int mMatchConstraintMinHeight;
    int mMatchConstraintMinWidth;
    protected int mMinHeight;
    protected int mMinWidth;
    protected int mOffsetX;
    protected int mOffsetY;
    ConstraintWidget mParent;
    ConstraintAnchor mRight;
    boolean mRightHasCentered;
    private int mSolverBottom;
    private int mSolverLeft;
    private int mSolverRight;
    private int mSolverTop;
    ConstraintAnchor mTop;
    boolean mTopHasCentered;
    private String mType;
    float mVerticalBiasPercent;
    boolean mVerticalChainFixedPosition;
    int mVerticalChainStyle;
    DimensionBehaviour mVerticalDimensionBehaviour;
    ConstraintWidget mVerticalNextWidget;
    public int mVerticalResolution;
    float mVerticalWeight;
    boolean mVerticalWrapVisited;
    private int mVisibility;
    int mWidth;
    private int mWrapHeight;
    private int mWrapWidth;
    protected int mX;
    protected int mY;

    public enum ContentAlignment {
        BEGIN,
        MIDDLE,
        END,
        TOP,
        VERTICAL_MIDDLE,
        BOTTOM,
        LEFT,
        RIGHT
    }

    public enum DimensionBehaviour {
        FIXED,
        WRAP_CONTENT,
        MATCH_CONSTRAINT,
        MATCH_PARENT
    }

    public ConstraintWidget() {
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMaxWidth = 0;
        this.mMatchConstraintMinHeight = 0;
        this.mMatchConstraintMaxHeight = 0;
        this.mLeft = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
        this.mTop = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
        this.mRight = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
        this.mBottom = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
        this.mBaseline = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
        this.mCenterX = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
        this.mCenterY = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
        this.mCenter = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
        this.mAnchors = new ArrayList<>();
        this.mParent = null;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.mSolverLeft = 0;
        this.mSolverTop = 0;
        this.mSolverRight = 0;
        this.mSolverBottom = 0;
        this.mX = 0;
        this.mY = 0;
        this.mDrawX = 0;
        this.mDrawY = 0;
        this.mDrawWidth = 0;
        this.mDrawHeight = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mBaselineDistance = 0;
        this.mHorizontalBiasPercent = DEFAULT_BIAS;
        this.mVerticalBiasPercent = DEFAULT_BIAS;
        this.mHorizontalDimensionBehaviour = DimensionBehaviour.FIXED;
        this.mVerticalDimensionBehaviour = DimensionBehaviour.FIXED;
        this.mContainerItemSkip = 0;
        this.mVisibility = 0;
        this.mDebugName = null;
        this.mType = null;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        this.mHorizontalWeight = 0.0f;
        this.mVerticalWeight = 0.0f;
        this.mHorizontalNextWidget = null;
        this.mVerticalNextWidget = null;
        addAnchors();
    }

    public ConstraintWidget(int i, int i2) {
        this(0, 0, i, i2);
    }

    public ConstraintWidget(int i, int i2, int i3, int i4) {
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMaxWidth = 0;
        this.mMatchConstraintMinHeight = 0;
        this.mMatchConstraintMaxHeight = 0;
        this.mLeft = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
        this.mTop = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
        this.mRight = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
        this.mBottom = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
        this.mBaseline = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
        this.mCenterX = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
        this.mCenterY = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
        this.mCenter = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
        this.mAnchors = new ArrayList<>();
        this.mParent = null;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.mSolverLeft = 0;
        this.mSolverTop = 0;
        this.mSolverRight = 0;
        this.mSolverBottom = 0;
        this.mX = 0;
        this.mY = 0;
        this.mDrawX = 0;
        this.mDrawY = 0;
        this.mDrawWidth = 0;
        this.mDrawHeight = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mBaselineDistance = 0;
        this.mHorizontalBiasPercent = DEFAULT_BIAS;
        this.mVerticalBiasPercent = DEFAULT_BIAS;
        this.mHorizontalDimensionBehaviour = DimensionBehaviour.FIXED;
        this.mVerticalDimensionBehaviour = DimensionBehaviour.FIXED;
        this.mContainerItemSkip = 0;
        this.mVisibility = 0;
        this.mDebugName = null;
        this.mType = null;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        this.mHorizontalWeight = 0.0f;
        this.mVerticalWeight = 0.0f;
        this.mHorizontalNextWidget = null;
        this.mVerticalNextWidget = null;
        this.mX = i;
        this.mY = i2;
        this.mWidth = i3;
        this.mHeight = i4;
        addAnchors();
        forceUpdateDrawPosition();
    }

    private void addAnchors() {
        this.mAnchors.add(this.mLeft);
        this.mAnchors.add(this.mTop);
        this.mAnchors.add(this.mRight);
        this.mAnchors.add(this.mBottom);
        this.mAnchors.add(this.mCenterX);
        this.mAnchors.add(this.mCenterY);
        this.mAnchors.add(this.mBaseline);
    }

    private void applyConstraints(LinearSystem linearSystem, boolean z, boolean z2, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i, int i2, int i3, int i4, float f, boolean z3, boolean z4, int i5, int i6, int i7) {
        boolean z5;
        int i8;
        int i9 = i6;
        SolverVariable solverVariableCreateObjectVariable = linearSystem.createObjectVariable(constraintAnchor);
        SolverVariable solverVariableCreateObjectVariable2 = linearSystem.createObjectVariable(constraintAnchor2);
        SolverVariable solverVariableCreateObjectVariable3 = linearSystem.createObjectVariable(constraintAnchor.getTarget());
        SolverVariable solverVariableCreateObjectVariable4 = linearSystem.createObjectVariable(constraintAnchor2.getTarget());
        int margin = constraintAnchor.getMargin();
        int margin2 = constraintAnchor2.getMargin();
        if (this.mVisibility == 8) {
            z5 = true;
            i8 = 0;
        } else {
            z5 = z2;
            i8 = i3;
        }
        if (solverVariableCreateObjectVariable3 == null && solverVariableCreateObjectVariable4 == null) {
            linearSystem.addConstraint(linearSystem.createRow().createRowEquals(solverVariableCreateObjectVariable, i));
            if (z3) {
                return;
            }
            if (z) {
                linearSystem.addConstraint(LinearSystem.createRowEquals(linearSystem, solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, i4, true));
                return;
            } else if (z5) {
                linearSystem.addConstraint(LinearSystem.createRowEquals(linearSystem, solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, i8, false));
                return;
            } else {
                linearSystem.addConstraint(linearSystem.createRow().createRowEquals(solverVariableCreateObjectVariable2, i2));
                return;
            }
        }
        if (solverVariableCreateObjectVariable3 != null && solverVariableCreateObjectVariable4 == null) {
            linearSystem.addConstraint(linearSystem.createRow().createRowEquals(solverVariableCreateObjectVariable, solverVariableCreateObjectVariable3, margin));
            if (z) {
                linearSystem.addConstraint(LinearSystem.createRowEquals(linearSystem, solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, i4, true));
                return;
            } else {
                if (z3) {
                    return;
                }
                if (z5) {
                    linearSystem.addConstraint(linearSystem.createRow().createRowEquals(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, i8));
                    return;
                } else {
                    linearSystem.addConstraint(linearSystem.createRow().createRowEquals(solverVariableCreateObjectVariable2, i2));
                    return;
                }
            }
        }
        if (solverVariableCreateObjectVariable3 == null && solverVariableCreateObjectVariable4 != null) {
            linearSystem.addConstraint(linearSystem.createRow().createRowEquals(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable4, margin2 * (-1)));
            if (z) {
                linearSystem.addConstraint(LinearSystem.createRowEquals(linearSystem, solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, i4, true));
                return;
            } else {
                if (z3) {
                    return;
                }
                if (z5) {
                    linearSystem.addConstraint(linearSystem.createRow().createRowEquals(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, i8));
                    return;
                } else {
                    linearSystem.addConstraint(linearSystem.createRow().createRowEquals(solverVariableCreateObjectVariable, i));
                    return;
                }
            }
        }
        if (z5) {
            if (z) {
                linearSystem.addConstraint(LinearSystem.createRowEquals(linearSystem, solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, i4, true));
            } else {
                linearSystem.addConstraint(linearSystem.createRow().createRowEquals(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, i8));
            }
            if (constraintAnchor.getStrength() == constraintAnchor2.getStrength()) {
                if (solverVariableCreateObjectVariable3 == solverVariableCreateObjectVariable4) {
                    linearSystem.addConstraint(LinearSystem.createRowCentering(linearSystem, solverVariableCreateObjectVariable, solverVariableCreateObjectVariable3, 0, 0.5f, solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable2, 0, true));
                    return;
                } else {
                    if (z4) {
                        return;
                    }
                    linearSystem.addConstraint(LinearSystem.createRowGreaterThan(linearSystem, solverVariableCreateObjectVariable, solverVariableCreateObjectVariable3, margin, constraintAnchor.getConnectionType() != ConstraintAnchor.ConnectionType.STRICT));
                    linearSystem.addConstraint(LinearSystem.createRowLowerThan(linearSystem, solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable4, margin2 * (-1), constraintAnchor2.getConnectionType() != ConstraintAnchor.ConnectionType.STRICT));
                    linearSystem.addConstraint(LinearSystem.createRowCentering(linearSystem, solverVariableCreateObjectVariable, solverVariableCreateObjectVariable3, margin, f, solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable2, margin2, false));
                    return;
                }
            }
            if (constraintAnchor.getStrength() == ConstraintAnchor.Strength.STRONG) {
                linearSystem.addConstraint(linearSystem.createRow().createRowEquals(solverVariableCreateObjectVariable, solverVariableCreateObjectVariable3, margin));
                SolverVariable solverVariableCreateSlackVariable = linearSystem.createSlackVariable();
                ArrayRow arrayRowCreateRow = linearSystem.createRow();
                arrayRowCreateRow.createRowLowerThan(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable4, solverVariableCreateSlackVariable, margin2 * (-1));
                linearSystem.addConstraint(arrayRowCreateRow);
                return;
            }
            SolverVariable solverVariableCreateSlackVariable2 = linearSystem.createSlackVariable();
            ArrayRow arrayRowCreateRow2 = linearSystem.createRow();
            arrayRowCreateRow2.createRowGreaterThan(solverVariableCreateObjectVariable, solverVariableCreateObjectVariable3, solverVariableCreateSlackVariable2, margin);
            linearSystem.addConstraint(arrayRowCreateRow2);
            linearSystem.addConstraint(linearSystem.createRow().createRowEquals(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable4, margin2 * (-1)));
            return;
        }
        if (z3) {
            linearSystem.addGreaterThan(solverVariableCreateObjectVariable, solverVariableCreateObjectVariable3, margin, 3);
            linearSystem.addLowerThan(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable4, margin2 * (-1), 3);
            linearSystem.addConstraint(LinearSystem.createRowCentering(linearSystem, solverVariableCreateObjectVariable, solverVariableCreateObjectVariable3, margin, f, solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable2, margin2, true));
            return;
        }
        if (z4) {
            return;
        }
        if (i5 != 1) {
            if (i9 == 0 && i7 == 0) {
                linearSystem.addConstraint(linearSystem.createRow().createRowEquals(solverVariableCreateObjectVariable, solverVariableCreateObjectVariable3, margin));
                linearSystem.addConstraint(linearSystem.createRow().createRowEquals(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable4, margin2 * (-1)));
                return;
            }
            if (i7 > 0) {
                linearSystem.addLowerThan(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, i7, 3);
            }
            linearSystem.addGreaterThan(solverVariableCreateObjectVariable, solverVariableCreateObjectVariable3, margin, 2);
            linearSystem.addLowerThan(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable4, -margin2, 2);
            linearSystem.addCentering(solverVariableCreateObjectVariable, solverVariableCreateObjectVariable3, margin, f, solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable2, margin2, 4);
            return;
        }
        if (i9 <= i8) {
            i9 = i8;
        }
        int i10 = i7;
        if (i10 <= 0) {
            i10 = i9;
        } else if (i10 >= i9) {
            linearSystem.addLowerThan(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, i10, 3);
            i10 = i9;
        }
        linearSystem.addEquality(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, i10, 3);
        linearSystem.addGreaterThan(solverVariableCreateObjectVariable, solverVariableCreateObjectVariable3, margin, 2);
        linearSystem.addLowerThan(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable4, -margin2, 2);
        linearSystem.addCentering(solverVariableCreateObjectVariable, solverVariableCreateObjectVariable3, margin, f, solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable2, margin2, 4);
    }

    public void addToSolver(LinearSystem linearSystem) {
        addToSolver(linearSystem, Integer.MAX_VALUE);
    }

    /* JADX WARN: Code duplicated, block: B:178:0x02c9  */
    /* JADX WARN: Code duplicated, block: B:216:0x03ff A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:217:0x0400  */
    /* JADX WARN: Code duplicated, block: B:222:0x040c  */
    /* JADX WARN: Code duplicated, block: B:224:0x0410  */
    /* JADX WARN: Code duplicated, block: B:226:0x0415  */
    /* JADX WARN: Code duplicated, block: B:229:0x0419  */
    /* JADX WARN: Code duplicated, block: B:231:0x041c  */
    /* JADX WARN: Code duplicated, block: B:235:0x0426  */
    /* JADX WARN: Code duplicated, block: B:237:0x0430  */
    /* JADX WARN: Code duplicated, block: B:243:0x0442  */
    /* JADX WARN: Code duplicated, block: B:246:0x0455  */
    /* JADX WARN: Code duplicated, block: B:247:0x045d  */
    /* JADX WARN: Code duplicated, block: B:249:0x0462  */
    /* JADX WARN: Code duplicated, block: B:255:0x0475 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:256:0x0477  */
    /* JADX WARN: Code duplicated, block: B:265:0x04e1  */
    /* JADX WARN: Code duplicated, block: B:266:0x052a  */
    /* JADX WARN: Code duplicated, block: B:268:0x053b  */
    /* JADX WARN: Code duplicated, block: B:270:0x0543  */
    /* JADX WARN: Code duplicated, block: B:274:0x0550  */
    /* JADX WARN: Code duplicated, block: B:276:0x0554  */
    /* JADX WARN: Code duplicated, block: B:285:0x05e1  */
    /* JADX WARN: Code duplicated, block: B:287:0x05ec  */
    /* JADX WARN: Code duplicated, block: B:289:0x05f4  */
    /* JADX WARN: Code duplicated, block: B:292:0x05fb  */
    /* JADX WARN: Code duplicated, block: B:295:0x0601  */
    /* JADX WARN: Code duplicated, block: B:296:0x0616  */
    /* JADX WARN: Code duplicated, block: B:298:0x061b  */
    /* JADX WARN: Code duplicated, block: B:299:0x062e  */
    /* JADX WARN: Code duplicated, block: B:301:0x0632  */
    /* JADX WARN: Code duplicated, block: B:302:0x063d  */
    /* JADX WARN: Code duplicated, block: B:305:0x0646  */
    /* JADX WARN: Code duplicated, block: B:306:0x0650  */
    /* JADX WARN: Code duplicated, block: B:309:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:310:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    public void addToSolver(LinearSystem linearSystem, int i) {
        boolean z;
        boolean z2;
        int i2;
        float f;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        int i3;
        int i4;
        boolean z7;
        int i5;
        SolverVariable solverVariable;
        SolverVariable solverVariable2;
        ConstraintWidget constraintWidget;
        SolverVariable solverVariable3;
        SolverVariable solverVariable4;
        ArrayRow arrayRowCreateRow;
        ConstraintWidget constraintWidget2;
        int i6;
        SolverVariable solverVariable5;
        SolverVariable solverVariable6;
        int i7;
        SolverVariable solverVariable7;
        SolverVariable solverVariable8;
        ConstraintAnchor constraintAnchor;
        SolverVariable solverVariable9;
        LinearSystem linearSystem2;
        ConstraintAnchor constraintAnchor2;
        int i8;
        boolean z8;
        boolean z9;
        ConstraintWidget constraintWidget3 = this;
        SolverVariable solverVariableCreateObjectVariable = (i == Integer.MAX_VALUE || constraintWidget3.mLeft.mGroup == i) ? linearSystem.createObjectVariable(constraintWidget3.mLeft) : null;
        SolverVariable solverVariableCreateObjectVariable2 = (i == Integer.MAX_VALUE || constraintWidget3.mRight.mGroup == i) ? linearSystem.createObjectVariable(constraintWidget3.mRight) : null;
        SolverVariable solverVariableCreateObjectVariable3 = (i == Integer.MAX_VALUE || constraintWidget3.mTop.mGroup == i) ? linearSystem.createObjectVariable(constraintWidget3.mTop) : null;
        SolverVariable solverVariableCreateObjectVariable4 = (i == Integer.MAX_VALUE || constraintWidget3.mBottom.mGroup == i) ? linearSystem.createObjectVariable(constraintWidget3.mBottom) : null;
        SolverVariable solverVariableCreateObjectVariable5 = (i == Integer.MAX_VALUE || constraintWidget3.mBaseline.mGroup == i) ? linearSystem.createObjectVariable(constraintWidget3.mBaseline) : null;
        if (constraintWidget3.mParent != null) {
            if ((constraintWidget3.mLeft.mTarget == null || constraintWidget3.mLeft.mTarget.mTarget != constraintWidget3.mLeft) && (constraintWidget3.mRight.mTarget == null || constraintWidget3.mRight.mTarget.mTarget != constraintWidget3.mRight)) {
                z8 = false;
            } else {
                ((ConstraintWidgetContainer) constraintWidget3.mParent).addChain(constraintWidget3, 0);
                z8 = true;
            }
            if ((constraintWidget3.mTop.mTarget == null || constraintWidget3.mTop.mTarget.mTarget != constraintWidget3.mTop) && (constraintWidget3.mBottom.mTarget == null || constraintWidget3.mBottom.mTarget.mTarget != constraintWidget3.mBottom)) {
                z9 = false;
            } else {
                ((ConstraintWidgetContainer) constraintWidget3.mParent).addChain(constraintWidget3, 1);
                z9 = true;
            }
            if (constraintWidget3.mParent.getHorizontalDimensionBehaviour() == DimensionBehaviour.WRAP_CONTENT && !z8) {
                if (constraintWidget3.mLeft.mTarget == null || constraintWidget3.mLeft.mTarget.mOwner != constraintWidget3.mParent) {
                    SolverVariable solverVariableCreateObjectVariable6 = linearSystem.createObjectVariable(constraintWidget3.mParent.mLeft);
                    ArrayRow arrayRowCreateRow2 = linearSystem.createRow();
                    arrayRowCreateRow2.createRowGreaterThan(solverVariableCreateObjectVariable, solverVariableCreateObjectVariable6, linearSystem.createSlackVariable(), 0);
                    linearSystem.addConstraint(arrayRowCreateRow2);
                } else if (constraintWidget3.mLeft.mTarget != null && constraintWidget3.mLeft.mTarget.mOwner == constraintWidget3.mParent) {
                    constraintWidget3.mLeft.setConnectionType(ConstraintAnchor.ConnectionType.STRICT);
                }
                if (constraintWidget3.mRight.mTarget == null || constraintWidget3.mRight.mTarget.mOwner != constraintWidget3.mParent) {
                    SolverVariable solverVariableCreateObjectVariable7 = linearSystem.createObjectVariable(constraintWidget3.mParent.mRight);
                    ArrayRow arrayRowCreateRow3 = linearSystem.createRow();
                    arrayRowCreateRow3.createRowGreaterThan(solverVariableCreateObjectVariable7, solverVariableCreateObjectVariable2, linearSystem.createSlackVariable(), 0);
                    linearSystem.addConstraint(arrayRowCreateRow3);
                } else if (constraintWidget3.mRight.mTarget != null && constraintWidget3.mRight.mTarget.mOwner == constraintWidget3.mParent) {
                    constraintWidget3.mRight.setConnectionType(ConstraintAnchor.ConnectionType.STRICT);
                }
            }
            if (constraintWidget3.mParent.getVerticalDimensionBehaviour() == DimensionBehaviour.WRAP_CONTENT && !z9) {
                if (constraintWidget3.mTop.mTarget == null || constraintWidget3.mTop.mTarget.mOwner != constraintWidget3.mParent) {
                    SolverVariable solverVariableCreateObjectVariable8 = linearSystem.createObjectVariable(constraintWidget3.mParent.mTop);
                    ArrayRow arrayRowCreateRow4 = linearSystem.createRow();
                    arrayRowCreateRow4.createRowGreaterThan(solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable8, linearSystem.createSlackVariable(), 0);
                    linearSystem.addConstraint(arrayRowCreateRow4);
                } else if (constraintWidget3.mTop.mTarget != null && constraintWidget3.mTop.mTarget.mOwner == constraintWidget3.mParent) {
                    constraintWidget3.mTop.setConnectionType(ConstraintAnchor.ConnectionType.STRICT);
                }
                if (constraintWidget3.mBottom.mTarget == null || constraintWidget3.mBottom.mTarget.mOwner != constraintWidget3.mParent) {
                    SolverVariable solverVariableCreateObjectVariable9 = linearSystem.createObjectVariable(constraintWidget3.mParent.mBottom);
                    ArrayRow arrayRowCreateRow5 = linearSystem.createRow();
                    arrayRowCreateRow5.createRowGreaterThan(solverVariableCreateObjectVariable9, solverVariableCreateObjectVariable4, linearSystem.createSlackVariable(), 0);
                    linearSystem.addConstraint(arrayRowCreateRow5);
                } else if (constraintWidget3.mBottom.mTarget != null && constraintWidget3.mBottom.mTarget.mOwner == constraintWidget3.mParent) {
                    constraintWidget3.mBottom.setConnectionType(ConstraintAnchor.ConnectionType.STRICT);
                }
            }
            z = z8;
            z2 = z9;
        } else {
            z = false;
            z2 = false;
        }
        int i9 = constraintWidget3.mWidth;
        if (i9 < constraintWidget3.mMinWidth) {
            i9 = constraintWidget3.mMinWidth;
        }
        int i10 = constraintWidget3.mHeight;
        if (i10 < constraintWidget3.mMinHeight) {
            i10 = constraintWidget3.mMinHeight;
        }
        boolean z10 = constraintWidget3.mHorizontalDimensionBehaviour != DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z11 = constraintWidget3.mVerticalDimensionBehaviour != DimensionBehaviour.MATCH_CONSTRAINT;
        if (!z10 && constraintWidget3.mLeft != null && constraintWidget3.mRight != null && (constraintWidget3.mLeft.mTarget == null || constraintWidget3.mRight.mTarget == null)) {
            z10 = true;
        }
        if (!z11 && constraintWidget3.mTop != null && constraintWidget3.mBottom != null && ((constraintWidget3.mTop.mTarget == null || constraintWidget3.mBottom.mTarget == null) && (constraintWidget3.mBaselineDistance == 0 || (constraintWidget3.mBaseline != null && (constraintWidget3.mTop.mTarget == null || constraintWidget3.mBaseline.mTarget == null))))) {
            z11 = true;
        }
        int i11 = constraintWidget3.mDimensionRatioSide;
        float f2 = constraintWidget3.mDimensionRatio;
        SolverVariable solverVariable10 = solverVariableCreateObjectVariable4;
        if (constraintWidget3.mDimensionRatio <= 0.0f || constraintWidget3.mVisibility == 8) {
            i9 = i9;
            i10 = i10;
            z11 = z11;
            i2 = i11;
            f = f2;
            z3 = false;
            z4 = z10;
        } else if (constraintWidget3.mHorizontalDimensionBehaviour == DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget3.mVerticalDimensionBehaviour == DimensionBehaviour.MATCH_CONSTRAINT) {
            if (z10 && !z11) {
                i9 = i9;
                i10 = i10;
                z11 = z11;
                f = f2;
                i2 = 0;
            } else if (z10 || !z11) {
                i9 = i9;
                i10 = i10;
                z11 = z11;
                i2 = i11;
                f = f2;
            } else {
                f = constraintWidget3.mDimensionRatioSide == -1 ? 1.0f / f2 : f2;
                i2 = 1;
            }
            z3 = true;
            z4 = z10;
        } else if (constraintWidget3.mHorizontalDimensionBehaviour == DimensionBehaviour.MATCH_CONSTRAINT) {
            i9 = (int) (constraintWidget3.mHeight * f2);
            i10 = i10;
            z11 = z11;
            f = f2;
            z4 = true;
            i2 = 0;
            z3 = false;
        } else if (constraintWidget3.mVerticalDimensionBehaviour == DimensionBehaviour.MATCH_CONSTRAINT) {
            if (constraintWidget3.mDimensionRatioSide == -1) {
                f2 = 1.0f / f2;
            }
            i9 = i9;
            i10 = (int) (constraintWidget3.mWidth * f2);
            z4 = z10;
            f = f2;
            i2 = 1;
            z3 = false;
            z11 = true;
        } else {
            i9 = i9;
            i10 = i10;
            z11 = z11;
            i2 = i11;
            f = f2;
            z3 = false;
            z4 = z10;
        }
        boolean z12 = z3 && (i2 == 0 || i2 == -1);
        boolean z13 = constraintWidget3.mHorizontalDimensionBehaviour == DimensionBehaviour.WRAP_CONTENT && (constraintWidget3 instanceof ConstraintWidgetContainer);
        if (constraintWidget3.mHorizontalResolution != 2) {
            if (i != Integer.MAX_VALUE && (constraintWidget3.mLeft.mGroup != i || constraintWidget3.mRight.mGroup != i)) {
                i10 = i10;
                solverVariableCreateObjectVariable5 = solverVariableCreateObjectVariable5;
                solverVariableCreateObjectVariable3 = solverVariableCreateObjectVariable3;
                solverVariableCreateObjectVariable2 = solverVariableCreateObjectVariable2;
                solverVariableCreateObjectVariable = solverVariableCreateObjectVariable;
                i2 = i2;
                solverVariable10 = solverVariable10;
                z5 = false;
            } else if (!z12 || constraintWidget3.mLeft.mTarget == null || constraintWidget3.mRight.mTarget == null) {
                z5 = false;
                applyConstraints(linearSystem, z13, z4, constraintWidget3.mLeft, constraintWidget3.mRight, constraintWidget3.mX, constraintWidget3.mX + i9, i9, constraintWidget3.mMinWidth, constraintWidget3.mHorizontalBiasPercent, z12, z, constraintWidget3.mMatchConstraintDefaultWidth, constraintWidget3.mMatchConstraintMinWidth, constraintWidget3.mMatchConstraintMaxWidth);
            } else {
                SolverVariable solverVariableCreateObjectVariable10 = linearSystem.createObjectVariable(constraintWidget3.mLeft);
                SolverVariable solverVariableCreateObjectVariable11 = linearSystem.createObjectVariable(constraintWidget3.mRight);
                SolverVariable solverVariableCreateObjectVariable12 = linearSystem.createObjectVariable(constraintWidget3.mLeft.getTarget());
                SolverVariable solverVariableCreateObjectVariable13 = linearSystem.createObjectVariable(constraintWidget3.mRight.getTarget());
                linearSystem.addGreaterThan(solverVariableCreateObjectVariable10, solverVariableCreateObjectVariable12, constraintWidget3.mLeft.getMargin(), 3);
                linearSystem.addLowerThan(solverVariableCreateObjectVariable11, solverVariableCreateObjectVariable13, constraintWidget3.mRight.getMargin() * (-1), 3);
                if (z) {
                    z5 = false;
                } else {
                    z5 = false;
                    linearSystem.addCentering(solverVariableCreateObjectVariable10, solverVariableCreateObjectVariable12, constraintWidget3.mLeft.getMargin(), constraintWidget3.mHorizontalBiasPercent, solverVariableCreateObjectVariable13, solverVariableCreateObjectVariable11, constraintWidget3.mRight.getMargin(), 4);
                }
                solverVariableCreateObjectVariable3 = solverVariableCreateObjectVariable3;
                solverVariableCreateObjectVariable2 = solverVariableCreateObjectVariable2;
                solverVariableCreateObjectVariable = solverVariableCreateObjectVariable;
                i2 = i2;
            }
            if (constraintWidget3.mVerticalResolution == 2) {
                return;
            }
            if (constraintWidget3.mVerticalDimensionBehaviour == DimensionBehaviour.WRAP_CONTENT || !(constraintWidget3 instanceof ConstraintWidgetContainer)) {
                z6 = z5;
            } else {
                z6 = true;
            }
            if (z3) {
                i3 = i2;
                if (i3 != 1) {
                    i4 = -1;
                    if (i3 == -1) {
                    }
                    if (constraintWidget3.mBaselineDistance > 0) {
                        i5 = i3;
                        int i12 = i10;
                        solverVariable = solverVariable10;
                        solverVariable2 = solverVariableCreateObjectVariable3;
                        if (i != Integer.MAX_VALUE) {
                            constraintWidget = this;
                            if (constraintWidget.mTop.mGroup == i || constraintWidget.mBottom.mGroup != i) {
                            }
                            if (z3) {
                                arrayRowCreateRow = linearSystem.createRow();
                                if (i != Integer.MAX_VALUE) {
                                    constraintWidget2 = this;
                                    if (constraintWidget2.mLeft.mGroup == i || constraintWidget2.mRight.mGroup != i) {
                                        return;
                                    }
                                } else {
                                    constraintWidget2 = this;
                                }
                                i6 = i5;
                                if (i6 == 0) {
                                    linearSystem.addConstraint(arrayRowCreateRow.createRowDimensionRatio(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, solverVariable3, solverVariable4, f));
                                    return;
                                }
                                if (i6 == 1) {
                                    linearSystem.addConstraint(arrayRowCreateRow.createRowDimensionRatio(solverVariable3, solverVariable4, solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, f));
                                    return;
                                }
                                if (constraintWidget2.mMatchConstraintMinWidth > 0) {
                                    solverVariable5 = solverVariableCreateObjectVariable2;
                                    solverVariable6 = solverVariableCreateObjectVariable;
                                    i7 = 3;
                                    linearSystem.addGreaterThan(solverVariable5, solverVariable6, constraintWidget2.mMatchConstraintMinWidth, 3);
                                } else {
                                    solverVariable5 = solverVariableCreateObjectVariable2;
                                    solverVariable6 = solverVariableCreateObjectVariable;
                                    i7 = 3;
                                }
                                if (constraintWidget2.mMatchConstraintMinHeight > 0) {
                                    solverVariable7 = solverVariable3;
                                    solverVariable8 = solverVariable4;
                                    linearSystem.addGreaterThan(solverVariable7, solverVariable8, constraintWidget2.mMatchConstraintMinHeight, i7);
                                } else {
                                    solverVariable7 = solverVariable3;
                                    solverVariable8 = solverVariable4;
                                }
                                arrayRowCreateRow.createRowDimensionRatio(solverVariable5, solverVariable6, solverVariable7, solverVariable8, f);
                                SolverVariable solverVariableCreateErrorVariable = linearSystem.createErrorVariable();
                                SolverVariable solverVariableCreateErrorVariable2 = linearSystem.createErrorVariable();
                                solverVariableCreateErrorVariable.strength = 4;
                                solverVariableCreateErrorVariable2.strength = 4;
                                arrayRowCreateRow.addError(solverVariableCreateErrorVariable, solverVariableCreateErrorVariable2);
                                linearSystem.addConstraint(arrayRowCreateRow);
                            }
                        }
                        constraintWidget = this;
                        if (z7 || constraintWidget.mTop.mTarget == null || constraintWidget.mBottom.mTarget == null) {
                            solverVariable3 = solverVariable;
                            solverVariable4 = solverVariable2;
                            applyConstraints(linearSystem, z6, z11, constraintWidget.mTop, constraintWidget.mBottom, constraintWidget.mY, constraintWidget.mY + i12, i12, constraintWidget.mMinHeight, constraintWidget.mVerticalBiasPercent, z7, z2, constraintWidget.mMatchConstraintDefaultHeight, constraintWidget.mMatchConstraintMinHeight, constraintWidget.mMatchConstraintMaxHeight);
                        } else {
                            SolverVariable solverVariableCreateObjectVariable14 = linearSystem.createObjectVariable(constraintWidget.mTop);
                            SolverVariable solverVariableCreateObjectVariable15 = linearSystem.createObjectVariable(constraintWidget.mBottom);
                            SolverVariable solverVariableCreateObjectVariable16 = linearSystem.createObjectVariable(constraintWidget.mTop.getTarget());
                            SolverVariable solverVariableCreateObjectVariable17 = linearSystem.createObjectVariable(constraintWidget.mBottom.getTarget());
                            linearSystem.addGreaterThan(solverVariableCreateObjectVariable14, solverVariableCreateObjectVariable16, constraintWidget.mTop.getMargin(), 3);
                            linearSystem.addLowerThan(solverVariableCreateObjectVariable15, solverVariableCreateObjectVariable17, constraintWidget.mBottom.getMargin() * i4, 3);
                            if (!z2) {
                                linearSystem.addCentering(solverVariableCreateObjectVariable14, solverVariableCreateObjectVariable16, constraintWidget.mTop.getMargin(), constraintWidget.mVerticalBiasPercent, solverVariableCreateObjectVariable17, solverVariableCreateObjectVariable15, constraintWidget.mBottom.getMargin(), 4);
                            }
                        }
                        if (z3) {
                            arrayRowCreateRow = linearSystem.createRow();
                            if (i != Integer.MAX_VALUE) {
                                constraintWidget2 = this;
                                if (constraintWidget2.mLeft.mGroup == i) {
                                    return;
                                } else {
                                    return;
                                }
                            }
                            constraintWidget2 = this;
                            i6 = i5;
                            if (i6 == 0) {
                                linearSystem.addConstraint(arrayRowCreateRow.createRowDimensionRatio(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, solverVariable3, solverVariable4, f));
                                return;
                            }
                            if (i6 == 1) {
                                linearSystem.addConstraint(arrayRowCreateRow.createRowDimensionRatio(solverVariable3, solverVariable4, solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, f));
                                return;
                            }
                            if (constraintWidget2.mMatchConstraintMinWidth > 0) {
                                solverVariable5 = solverVariableCreateObjectVariable2;
                                solverVariable6 = solverVariableCreateObjectVariable;
                                i7 = 3;
                                linearSystem.addGreaterThan(solverVariable5, solverVariable6, constraintWidget2.mMatchConstraintMinWidth, 3);
                            } else {
                                solverVariable5 = solverVariableCreateObjectVariable2;
                                solverVariable6 = solverVariableCreateObjectVariable;
                                i7 = 3;
                            }
                            if (constraintWidget2.mMatchConstraintMinHeight > 0) {
                                solverVariable7 = solverVariable3;
                                solverVariable8 = solverVariable4;
                                linearSystem.addGreaterThan(solverVariable7, solverVariable8, constraintWidget2.mMatchConstraintMinHeight, i7);
                            } else {
                                solverVariable7 = solverVariable3;
                                solverVariable8 = solverVariable4;
                            }
                            arrayRowCreateRow.createRowDimensionRatio(solverVariable5, solverVariable6, solverVariable7, solverVariable8, f);
                            SolverVariable solverVariableCreateErrorVariable3 = linearSystem.createErrorVariable();
                            SolverVariable solverVariableCreateErrorVariable4 = linearSystem.createErrorVariable();
                            solverVariableCreateErrorVariable3.strength = 4;
                            solverVariableCreateErrorVariable4.strength = 4;
                            arrayRowCreateRow.addError(solverVariableCreateErrorVariable3, solverVariableCreateErrorVariable4);
                            linearSystem.addConstraint(arrayRowCreateRow);
                        }
                    }
                    constraintAnchor = constraintWidget3.mBottom;
                    if (i != Integer.MAX_VALUE || (constraintWidget3.mBottom.mGroup == i && constraintWidget3.mBaseline.mGroup == i)) {
                        solverVariable9 = solverVariableCreateObjectVariable3;
                        linearSystem2 = linearSystem;
                        linearSystem2.addEquality(solverVariableCreateObjectVariable5, solverVariable9, getBaselineDistance(), 5);
                    } else {
                        solverVariable9 = solverVariableCreateObjectVariable3;
                        linearSystem2 = linearSystem;
                    }
                    if (constraintWidget3.mBaseline.mTarget != null) {
                        i8 = constraintWidget3.mBaselineDistance;
                        constraintAnchor2 = constraintWidget3.mBaseline;
                    } else {
                        constraintAnchor2 = constraintAnchor;
                        i8 = i10;
                    }
                    if (i == Integer.MAX_VALUE && (constraintWidget3.mTop.mGroup != i || constraintAnchor2.mGroup != i)) {
                        i5 = i3;
                        solverVariable = solverVariable10;
                        solverVariable2 = solverVariable9;
                    } else if (z7 || constraintWidget3.mTop.mTarget == null || constraintWidget3.mBottom.mTarget == null) {
                        i5 = i3;
                        applyConstraints(linearSystem, z6, z11, constraintWidget3.mTop, constraintAnchor2, constraintWidget3.mY, constraintWidget3.mY + i8, i8, constraintWidget3.mMinHeight, constraintWidget3.mVerticalBiasPercent, z7, z2, constraintWidget3.mMatchConstraintDefaultHeight, constraintWidget3.mMatchConstraintMinHeight, constraintWidget3.mMatchConstraintMaxHeight);
                        solverVariable = solverVariable10;
                        solverVariable2 = solverVariable9;
                        linearSystem.addEquality(solverVariable, solverVariable2, i10, 5);
                    } else {
                        SolverVariable solverVariableCreateObjectVariable18 = linearSystem2.createObjectVariable(constraintWidget3.mTop);
                        SolverVariable solverVariableCreateObjectVariable19 = linearSystem2.createObjectVariable(constraintWidget3.mBottom);
                        SolverVariable solverVariableCreateObjectVariable20 = linearSystem2.createObjectVariable(constraintWidget3.mTop.getTarget());
                        SolverVariable solverVariableCreateObjectVariable21 = linearSystem2.createObjectVariable(constraintWidget3.mBottom.getTarget());
                        linearSystem2.addGreaterThan(solverVariableCreateObjectVariable18, solverVariableCreateObjectVariable20, constraintWidget3.mTop.getMargin(), 3);
                        linearSystem2.addLowerThan(solverVariableCreateObjectVariable19, solverVariableCreateObjectVariable21, constraintWidget3.mBottom.getMargin() * i4, 3);
                        if (!z2) {
                            linearSystem.addCentering(solverVariableCreateObjectVariable18, solverVariableCreateObjectVariable20, constraintWidget3.mTop.getMargin(), constraintWidget3.mVerticalBiasPercent, solverVariableCreateObjectVariable21, solverVariableCreateObjectVariable19, constraintWidget3.mBottom.getMargin(), 4);
                        }
                        i5 = i3;
                        solverVariable = solverVariable10;
                        solverVariable2 = solverVariable9;
                    }
                    solverVariable3 = solverVariable;
                    solverVariable4 = solverVariable2;
                    if (z3) {
                        arrayRowCreateRow = linearSystem.createRow();
                        if (i != Integer.MAX_VALUE) {
                            constraintWidget2 = this;
                            if (constraintWidget2.mLeft.mGroup == i) {
                                return;
                            } else {
                                return;
                            }
                        }
                        constraintWidget2 = this;
                        i6 = i5;
                        if (i6 == 0) {
                            linearSystem.addConstraint(arrayRowCreateRow.createRowDimensionRatio(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, solverVariable3, solverVariable4, f));
                            return;
                        }
                        if (i6 == 1) {
                            linearSystem.addConstraint(arrayRowCreateRow.createRowDimensionRatio(solverVariable3, solverVariable4, solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, f));
                            return;
                        }
                        if (constraintWidget2.mMatchConstraintMinWidth > 0) {
                            solverVariable5 = solverVariableCreateObjectVariable2;
                            solverVariable6 = solverVariableCreateObjectVariable;
                            i7 = 3;
                            linearSystem.addGreaterThan(solverVariable5, solverVariable6, constraintWidget2.mMatchConstraintMinWidth, 3);
                        } else {
                            solverVariable5 = solverVariableCreateObjectVariable2;
                            solverVariable6 = solverVariableCreateObjectVariable;
                            i7 = 3;
                        }
                        if (constraintWidget2.mMatchConstraintMinHeight > 0) {
                            solverVariable7 = solverVariable3;
                            solverVariable8 = solverVariable4;
                            linearSystem.addGreaterThan(solverVariable7, solverVariable8, constraintWidget2.mMatchConstraintMinHeight, i7);
                        } else {
                            solverVariable7 = solverVariable3;
                            solverVariable8 = solverVariable4;
                        }
                        arrayRowCreateRow.createRowDimensionRatio(solverVariable5, solverVariable6, solverVariable7, solverVariable8, f);
                        SolverVariable solverVariableCreateErrorVariable5 = linearSystem.createErrorVariable();
                        SolverVariable solverVariableCreateErrorVariable6 = linearSystem.createErrorVariable();
                        solverVariableCreateErrorVariable5.strength = 4;
                        solverVariableCreateErrorVariable6.strength = 4;
                        arrayRowCreateRow.addError(solverVariableCreateErrorVariable5, solverVariableCreateErrorVariable6);
                        linearSystem.addConstraint(arrayRowCreateRow);
                    }
                }
                i4 = -1;
                z7 = true;
                if (constraintWidget3.mBaselineDistance > 0) {
                    i5 = i3;
                    int i13 = i10;
                    solverVariable = solverVariable10;
                    solverVariable2 = solverVariableCreateObjectVariable3;
                    if (i != Integer.MAX_VALUE) {
                        constraintWidget = this;
                        if (constraintWidget.mTop.mGroup == i) {
                        }
                    } else {
                        constraintWidget = this;
                    }
                    if (z7) {
                    }
                    solverVariable3 = solverVariable;
                    solverVariable4 = solverVariable2;
                    applyConstraints(linearSystem, z6, z11, constraintWidget.mTop, constraintWidget.mBottom, constraintWidget.mY, constraintWidget.mY + i13, i13, constraintWidget.mMinHeight, constraintWidget.mVerticalBiasPercent, z7, z2, constraintWidget.mMatchConstraintDefaultHeight, constraintWidget.mMatchConstraintMinHeight, constraintWidget.mMatchConstraintMaxHeight);
                    if (z3) {
                        arrayRowCreateRow = linearSystem.createRow();
                        if (i != Integer.MAX_VALUE) {
                            constraintWidget2 = this;
                            if (constraintWidget2.mLeft.mGroup == i) {
                                return;
                            } else {
                                return;
                            }
                        }
                        constraintWidget2 = this;
                        i6 = i5;
                        if (i6 == 0) {
                            linearSystem.addConstraint(arrayRowCreateRow.createRowDimensionRatio(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, solverVariable3, solverVariable4, f));
                            return;
                        }
                        if (i6 == 1) {
                            linearSystem.addConstraint(arrayRowCreateRow.createRowDimensionRatio(solverVariable3, solverVariable4, solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, f));
                            return;
                        }
                        if (constraintWidget2.mMatchConstraintMinWidth > 0) {
                            solverVariable5 = solverVariableCreateObjectVariable2;
                            solverVariable6 = solverVariableCreateObjectVariable;
                            i7 = 3;
                            linearSystem.addGreaterThan(solverVariable5, solverVariable6, constraintWidget2.mMatchConstraintMinWidth, 3);
                        } else {
                            solverVariable5 = solverVariableCreateObjectVariable2;
                            solverVariable6 = solverVariableCreateObjectVariable;
                            i7 = 3;
                        }
                        if (constraintWidget2.mMatchConstraintMinHeight > 0) {
                            solverVariable7 = solverVariable3;
                            solverVariable8 = solverVariable4;
                            linearSystem.addGreaterThan(solverVariable7, solverVariable8, constraintWidget2.mMatchConstraintMinHeight, i7);
                        } else {
                            solverVariable7 = solverVariable3;
                            solverVariable8 = solverVariable4;
                        }
                        arrayRowCreateRow.createRowDimensionRatio(solverVariable5, solverVariable6, solverVariable7, solverVariable8, f);
                        SolverVariable solverVariableCreateErrorVariable7 = linearSystem.createErrorVariable();
                        SolverVariable solverVariableCreateErrorVariable8 = linearSystem.createErrorVariable();
                        solverVariableCreateErrorVariable7.strength = 4;
                        solverVariableCreateErrorVariable8.strength = 4;
                        arrayRowCreateRow.addError(solverVariableCreateErrorVariable7, solverVariableCreateErrorVariable8);
                        linearSystem.addConstraint(arrayRowCreateRow);
                    }
                }
                constraintAnchor = constraintWidget3.mBottom;
                if (i != Integer.MAX_VALUE) {
                    solverVariable9 = solverVariableCreateObjectVariable3;
                    linearSystem2 = linearSystem;
                    linearSystem2.addEquality(solverVariableCreateObjectVariable5, solverVariable9, getBaselineDistance(), 5);
                } else {
                    solverVariable9 = solverVariableCreateObjectVariable3;
                    linearSystem2 = linearSystem;
                    linearSystem2.addEquality(solverVariableCreateObjectVariable5, solverVariable9, getBaselineDistance(), 5);
                }
                if (constraintWidget3.mBaseline.mTarget != null) {
                    i8 = constraintWidget3.mBaselineDistance;
                    constraintAnchor2 = constraintWidget3.mBaseline;
                } else {
                    constraintAnchor2 = constraintAnchor;
                    i8 = i10;
                }
                if (i == Integer.MAX_VALUE) {
                    if (z7) {
                        i5 = i3;
                        applyConstraints(linearSystem, z6, z11, constraintWidget3.mTop, constraintAnchor2, constraintWidget3.mY, constraintWidget3.mY + i8, i8, constraintWidget3.mMinHeight, constraintWidget3.mVerticalBiasPercent, z7, z2, constraintWidget3.mMatchConstraintDefaultHeight, constraintWidget3.mMatchConstraintMinHeight, constraintWidget3.mMatchConstraintMaxHeight);
                        solverVariable = solverVariable10;
                        solverVariable2 = solverVariable9;
                        linearSystem.addEquality(solverVariable, solverVariable2, i10, 5);
                    } else {
                        i5 = i3;
                        applyConstraints(linearSystem, z6, z11, constraintWidget3.mTop, constraintAnchor2, constraintWidget3.mY, constraintWidget3.mY + i8, i8, constraintWidget3.mMinHeight, constraintWidget3.mVerticalBiasPercent, z7, z2, constraintWidget3.mMatchConstraintDefaultHeight, constraintWidget3.mMatchConstraintMinHeight, constraintWidget3.mMatchConstraintMaxHeight);
                        solverVariable = solverVariable10;
                        solverVariable2 = solverVariable9;
                        linearSystem.addEquality(solverVariable, solverVariable2, i10, 5);
                    }
                } else if (z7) {
                    i5 = i3;
                    applyConstraints(linearSystem, z6, z11, constraintWidget3.mTop, constraintAnchor2, constraintWidget3.mY, constraintWidget3.mY + i8, i8, constraintWidget3.mMinHeight, constraintWidget3.mVerticalBiasPercent, z7, z2, constraintWidget3.mMatchConstraintDefaultHeight, constraintWidget3.mMatchConstraintMinHeight, constraintWidget3.mMatchConstraintMaxHeight);
                    solverVariable = solverVariable10;
                    solverVariable2 = solverVariable9;
                    linearSystem.addEquality(solverVariable, solverVariable2, i10, 5);
                } else {
                    i5 = i3;
                    applyConstraints(linearSystem, z6, z11, constraintWidget3.mTop, constraintAnchor2, constraintWidget3.mY, constraintWidget3.mY + i8, i8, constraintWidget3.mMinHeight, constraintWidget3.mVerticalBiasPercent, z7, z2, constraintWidget3.mMatchConstraintDefaultHeight, constraintWidget3.mMatchConstraintMinHeight, constraintWidget3.mMatchConstraintMaxHeight);
                    solverVariable = solverVariable10;
                    solverVariable2 = solverVariable9;
                    linearSystem.addEquality(solverVariable, solverVariable2, i10, 5);
                }
                solverVariable3 = solverVariable;
                solverVariable4 = solverVariable2;
                if (z3) {
                    arrayRowCreateRow = linearSystem.createRow();
                    if (i != Integer.MAX_VALUE) {
                        constraintWidget2 = this;
                        if (constraintWidget2.mLeft.mGroup == i) {
                            return;
                        } else {
                            return;
                        }
                    }
                    constraintWidget2 = this;
                    i6 = i5;
                    if (i6 == 0) {
                        linearSystem.addConstraint(arrayRowCreateRow.createRowDimensionRatio(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, solverVariable3, solverVariable4, f));
                        return;
                    }
                    if (i6 == 1) {
                        linearSystem.addConstraint(arrayRowCreateRow.createRowDimensionRatio(solverVariable3, solverVariable4, solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, f));
                        return;
                    }
                    if (constraintWidget2.mMatchConstraintMinWidth > 0) {
                        solverVariable5 = solverVariableCreateObjectVariable2;
                        solverVariable6 = solverVariableCreateObjectVariable;
                        i7 = 3;
                        linearSystem.addGreaterThan(solverVariable5, solverVariable6, constraintWidget2.mMatchConstraintMinWidth, 3);
                    } else {
                        solverVariable5 = solverVariableCreateObjectVariable2;
                        solverVariable6 = solverVariableCreateObjectVariable;
                        i7 = 3;
                    }
                    if (constraintWidget2.mMatchConstraintMinHeight > 0) {
                        solverVariable7 = solverVariable3;
                        solverVariable8 = solverVariable4;
                        linearSystem.addGreaterThan(solverVariable7, solverVariable8, constraintWidget2.mMatchConstraintMinHeight, i7);
                    } else {
                        solverVariable7 = solverVariable3;
                        solverVariable8 = solverVariable4;
                    }
                    arrayRowCreateRow.createRowDimensionRatio(solverVariable5, solverVariable6, solverVariable7, solverVariable8, f);
                    SolverVariable solverVariableCreateErrorVariable9 = linearSystem.createErrorVariable();
                    SolverVariable solverVariableCreateErrorVariable10 = linearSystem.createErrorVariable();
                    solverVariableCreateErrorVariable9.strength = 4;
                    solverVariableCreateErrorVariable10.strength = 4;
                    arrayRowCreateRow.addError(solverVariableCreateErrorVariable9, solverVariableCreateErrorVariable10);
                    linearSystem.addConstraint(arrayRowCreateRow);
                }
            }
            i3 = i2;
            i4 = -1;
            z7 = z5;
            if (constraintWidget3.mBaselineDistance > 0) {
                i5 = i3;
                int i14 = i10;
                solverVariable = solverVariable10;
                solverVariable2 = solverVariableCreateObjectVariable3;
                if (i != Integer.MAX_VALUE) {
                    constraintWidget = this;
                    if (constraintWidget.mTop.mGroup == i) {
                    }
                } else {
                    constraintWidget = this;
                }
                if (z7) {
                }
                solverVariable3 = solverVariable;
                solverVariable4 = solverVariable2;
                applyConstraints(linearSystem, z6, z11, constraintWidget.mTop, constraintWidget.mBottom, constraintWidget.mY, constraintWidget.mY + i14, i14, constraintWidget.mMinHeight, constraintWidget.mVerticalBiasPercent, z7, z2, constraintWidget.mMatchConstraintDefaultHeight, constraintWidget.mMatchConstraintMinHeight, constraintWidget.mMatchConstraintMaxHeight);
                if (z3) {
                    arrayRowCreateRow = linearSystem.createRow();
                    if (i != Integer.MAX_VALUE) {
                        constraintWidget2 = this;
                        if (constraintWidget2.mLeft.mGroup == i) {
                            return;
                        } else {
                            return;
                        }
                    }
                    constraintWidget2 = this;
                    i6 = i5;
                    if (i6 == 0) {
                        linearSystem.addConstraint(arrayRowCreateRow.createRowDimensionRatio(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, solverVariable3, solverVariable4, f));
                        return;
                    }
                    if (i6 == 1) {
                        linearSystem.addConstraint(arrayRowCreateRow.createRowDimensionRatio(solverVariable3, solverVariable4, solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, f));
                        return;
                    }
                    if (constraintWidget2.mMatchConstraintMinWidth > 0) {
                        solverVariable5 = solverVariableCreateObjectVariable2;
                        solverVariable6 = solverVariableCreateObjectVariable;
                        i7 = 3;
                        linearSystem.addGreaterThan(solverVariable5, solverVariable6, constraintWidget2.mMatchConstraintMinWidth, 3);
                    } else {
                        solverVariable5 = solverVariableCreateObjectVariable2;
                        solverVariable6 = solverVariableCreateObjectVariable;
                        i7 = 3;
                    }
                    if (constraintWidget2.mMatchConstraintMinHeight > 0) {
                        solverVariable7 = solverVariable3;
                        solverVariable8 = solverVariable4;
                        linearSystem.addGreaterThan(solverVariable7, solverVariable8, constraintWidget2.mMatchConstraintMinHeight, i7);
                    } else {
                        solverVariable7 = solverVariable3;
                        solverVariable8 = solverVariable4;
                    }
                    arrayRowCreateRow.createRowDimensionRatio(solverVariable5, solverVariable6, solverVariable7, solverVariable8, f);
                    SolverVariable solverVariableCreateErrorVariable11 = linearSystem.createErrorVariable();
                    SolverVariable solverVariableCreateErrorVariable12 = linearSystem.createErrorVariable();
                    solverVariableCreateErrorVariable11.strength = 4;
                    solverVariableCreateErrorVariable12.strength = 4;
                    arrayRowCreateRow.addError(solverVariableCreateErrorVariable11, solverVariableCreateErrorVariable12);
                    linearSystem.addConstraint(arrayRowCreateRow);
                }
            }
            constraintAnchor = constraintWidget3.mBottom;
            if (i != Integer.MAX_VALUE) {
                solverVariable9 = solverVariableCreateObjectVariable3;
                linearSystem2 = linearSystem;
                linearSystem2.addEquality(solverVariableCreateObjectVariable5, solverVariable9, getBaselineDistance(), 5);
            } else {
                solverVariable9 = solverVariableCreateObjectVariable3;
                linearSystem2 = linearSystem;
                linearSystem2.addEquality(solverVariableCreateObjectVariable5, solverVariable9, getBaselineDistance(), 5);
            }
            if (constraintWidget3.mBaseline.mTarget != null) {
                i8 = constraintWidget3.mBaselineDistance;
                constraintAnchor2 = constraintWidget3.mBaseline;
            } else {
                constraintAnchor2 = constraintAnchor;
                i8 = i10;
            }
            if (i == Integer.MAX_VALUE) {
                if (z7) {
                    i5 = i3;
                    applyConstraints(linearSystem, z6, z11, constraintWidget3.mTop, constraintAnchor2, constraintWidget3.mY, constraintWidget3.mY + i8, i8, constraintWidget3.mMinHeight, constraintWidget3.mVerticalBiasPercent, z7, z2, constraintWidget3.mMatchConstraintDefaultHeight, constraintWidget3.mMatchConstraintMinHeight, constraintWidget3.mMatchConstraintMaxHeight);
                    solverVariable = solverVariable10;
                    solverVariable2 = solverVariable9;
                    linearSystem.addEquality(solverVariable, solverVariable2, i10, 5);
                } else {
                    i5 = i3;
                    applyConstraints(linearSystem, z6, z11, constraintWidget3.mTop, constraintAnchor2, constraintWidget3.mY, constraintWidget3.mY + i8, i8, constraintWidget3.mMinHeight, constraintWidget3.mVerticalBiasPercent, z7, z2, constraintWidget3.mMatchConstraintDefaultHeight, constraintWidget3.mMatchConstraintMinHeight, constraintWidget3.mMatchConstraintMaxHeight);
                    solverVariable = solverVariable10;
                    solverVariable2 = solverVariable9;
                    linearSystem.addEquality(solverVariable, solverVariable2, i10, 5);
                }
            } else if (z7) {
                i5 = i3;
                applyConstraints(linearSystem, z6, z11, constraintWidget3.mTop, constraintAnchor2, constraintWidget3.mY, constraintWidget3.mY + i8, i8, constraintWidget3.mMinHeight, constraintWidget3.mVerticalBiasPercent, z7, z2, constraintWidget3.mMatchConstraintDefaultHeight, constraintWidget3.mMatchConstraintMinHeight, constraintWidget3.mMatchConstraintMaxHeight);
                solverVariable = solverVariable10;
                solverVariable2 = solverVariable9;
                linearSystem.addEquality(solverVariable, solverVariable2, i10, 5);
            } else {
                i5 = i3;
                applyConstraints(linearSystem, z6, z11, constraintWidget3.mTop, constraintAnchor2, constraintWidget3.mY, constraintWidget3.mY + i8, i8, constraintWidget3.mMinHeight, constraintWidget3.mVerticalBiasPercent, z7, z2, constraintWidget3.mMatchConstraintDefaultHeight, constraintWidget3.mMatchConstraintMinHeight, constraintWidget3.mMatchConstraintMaxHeight);
                solverVariable = solverVariable10;
                solverVariable2 = solverVariable9;
                linearSystem.addEquality(solverVariable, solverVariable2, i10, 5);
            }
            solverVariable3 = solverVariable;
            solverVariable4 = solverVariable2;
            if (z3) {
                arrayRowCreateRow = linearSystem.createRow();
                if (i != Integer.MAX_VALUE) {
                    constraintWidget2 = this;
                    if (constraintWidget2.mLeft.mGroup == i) {
                        return;
                    } else {
                        return;
                    }
                }
                constraintWidget2 = this;
                i6 = i5;
                if (i6 == 0) {
                    linearSystem.addConstraint(arrayRowCreateRow.createRowDimensionRatio(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, solverVariable3, solverVariable4, f));
                    return;
                }
                if (i6 == 1) {
                    linearSystem.addConstraint(arrayRowCreateRow.createRowDimensionRatio(solverVariable3, solverVariable4, solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, f));
                    return;
                }
                if (constraintWidget2.mMatchConstraintMinWidth > 0) {
                    solverVariable5 = solverVariableCreateObjectVariable2;
                    solverVariable6 = solverVariableCreateObjectVariable;
                    i7 = 3;
                    linearSystem.addGreaterThan(solverVariable5, solverVariable6, constraintWidget2.mMatchConstraintMinWidth, 3);
                } else {
                    solverVariable5 = solverVariableCreateObjectVariable2;
                    solverVariable6 = solverVariableCreateObjectVariable;
                    i7 = 3;
                }
                if (constraintWidget2.mMatchConstraintMinHeight > 0) {
                    solverVariable7 = solverVariable3;
                    solverVariable8 = solverVariable4;
                    linearSystem.addGreaterThan(solverVariable7, solverVariable8, constraintWidget2.mMatchConstraintMinHeight, i7);
                } else {
                    solverVariable7 = solverVariable3;
                    solverVariable8 = solverVariable4;
                }
                arrayRowCreateRow.createRowDimensionRatio(solverVariable5, solverVariable6, solverVariable7, solverVariable8, f);
                SolverVariable solverVariableCreateErrorVariable13 = linearSystem.createErrorVariable();
                SolverVariable solverVariableCreateErrorVariable14 = linearSystem.createErrorVariable();
                solverVariableCreateErrorVariable13.strength = 4;
                solverVariableCreateErrorVariable14.strength = 4;
                arrayRowCreateRow.addError(solverVariableCreateErrorVariable13, solverVariableCreateErrorVariable14);
                linearSystem.addConstraint(arrayRowCreateRow);
            }
        }
        z5 = false;
        constraintWidget3 = this;
        if (constraintWidget3.mVerticalResolution == 2) {
            return;
        }
        if (constraintWidget3.mVerticalDimensionBehaviour == DimensionBehaviour.WRAP_CONTENT) {
            z6 = z5;
        } else {
            z6 = z5;
        }
        if (z3) {
            i3 = i2;
            if (i3 != 1) {
                i4 = -1;
                if (i3 == -1) {
                }
                if (constraintWidget3.mBaselineDistance > 0) {
                    i5 = i3;
                    int i15 = i10;
                    solverVariable = solverVariable10;
                    solverVariable2 = solverVariableCreateObjectVariable3;
                    if (i != Integer.MAX_VALUE) {
                        constraintWidget = this;
                        if (constraintWidget.mTop.mGroup == i) {
                        }
                    } else {
                        constraintWidget = this;
                    }
                    if (z7) {
                    }
                    solverVariable3 = solverVariable;
                    solverVariable4 = solverVariable2;
                    applyConstraints(linearSystem, z6, z11, constraintWidget.mTop, constraintWidget.mBottom, constraintWidget.mY, constraintWidget.mY + i15, i15, constraintWidget.mMinHeight, constraintWidget.mVerticalBiasPercent, z7, z2, constraintWidget.mMatchConstraintDefaultHeight, constraintWidget.mMatchConstraintMinHeight, constraintWidget.mMatchConstraintMaxHeight);
                    if (z3) {
                        arrayRowCreateRow = linearSystem.createRow();
                        if (i != Integer.MAX_VALUE) {
                            constraintWidget2 = this;
                            if (constraintWidget2.mLeft.mGroup == i) {
                                return;
                            } else {
                                return;
                            }
                        }
                        constraintWidget2 = this;
                        i6 = i5;
                        if (i6 == 0) {
                            linearSystem.addConstraint(arrayRowCreateRow.createRowDimensionRatio(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, solverVariable3, solverVariable4, f));
                            return;
                        }
                        if (i6 == 1) {
                            linearSystem.addConstraint(arrayRowCreateRow.createRowDimensionRatio(solverVariable3, solverVariable4, solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, f));
                            return;
                        }
                        if (constraintWidget2.mMatchConstraintMinWidth > 0) {
                            solverVariable5 = solverVariableCreateObjectVariable2;
                            solverVariable6 = solverVariableCreateObjectVariable;
                            i7 = 3;
                            linearSystem.addGreaterThan(solverVariable5, solverVariable6, constraintWidget2.mMatchConstraintMinWidth, 3);
                        } else {
                            solverVariable5 = solverVariableCreateObjectVariable2;
                            solverVariable6 = solverVariableCreateObjectVariable;
                            i7 = 3;
                        }
                        if (constraintWidget2.mMatchConstraintMinHeight > 0) {
                            solverVariable7 = solverVariable3;
                            solverVariable8 = solverVariable4;
                            linearSystem.addGreaterThan(solverVariable7, solverVariable8, constraintWidget2.mMatchConstraintMinHeight, i7);
                        } else {
                            solverVariable7 = solverVariable3;
                            solverVariable8 = solverVariable4;
                        }
                        arrayRowCreateRow.createRowDimensionRatio(solverVariable5, solverVariable6, solverVariable7, solverVariable8, f);
                        SolverVariable solverVariableCreateErrorVariable15 = linearSystem.createErrorVariable();
                        SolverVariable solverVariableCreateErrorVariable16 = linearSystem.createErrorVariable();
                        solverVariableCreateErrorVariable15.strength = 4;
                        solverVariableCreateErrorVariable16.strength = 4;
                        arrayRowCreateRow.addError(solverVariableCreateErrorVariable15, solverVariableCreateErrorVariable16);
                        linearSystem.addConstraint(arrayRowCreateRow);
                    }
                }
                constraintAnchor = constraintWidget3.mBottom;
                if (i != Integer.MAX_VALUE) {
                    solverVariable9 = solverVariableCreateObjectVariable3;
                    linearSystem2 = linearSystem;
                    linearSystem2.addEquality(solverVariableCreateObjectVariable5, solverVariable9, getBaselineDistance(), 5);
                } else {
                    solverVariable9 = solverVariableCreateObjectVariable3;
                    linearSystem2 = linearSystem;
                    linearSystem2.addEquality(solverVariableCreateObjectVariable5, solverVariable9, getBaselineDistance(), 5);
                }
                if (constraintWidget3.mBaseline.mTarget != null) {
                    i8 = constraintWidget3.mBaselineDistance;
                    constraintAnchor2 = constraintWidget3.mBaseline;
                } else {
                    constraintAnchor2 = constraintAnchor;
                    i8 = i10;
                }
                if (i == Integer.MAX_VALUE) {
                    if (z7) {
                        i5 = i3;
                        applyConstraints(linearSystem, z6, z11, constraintWidget3.mTop, constraintAnchor2, constraintWidget3.mY, constraintWidget3.mY + i8, i8, constraintWidget3.mMinHeight, constraintWidget3.mVerticalBiasPercent, z7, z2, constraintWidget3.mMatchConstraintDefaultHeight, constraintWidget3.mMatchConstraintMinHeight, constraintWidget3.mMatchConstraintMaxHeight);
                        solverVariable = solverVariable10;
                        solverVariable2 = solverVariable9;
                        linearSystem.addEquality(solverVariable, solverVariable2, i10, 5);
                    } else {
                        i5 = i3;
                        applyConstraints(linearSystem, z6, z11, constraintWidget3.mTop, constraintAnchor2, constraintWidget3.mY, constraintWidget3.mY + i8, i8, constraintWidget3.mMinHeight, constraintWidget3.mVerticalBiasPercent, z7, z2, constraintWidget3.mMatchConstraintDefaultHeight, constraintWidget3.mMatchConstraintMinHeight, constraintWidget3.mMatchConstraintMaxHeight);
                        solverVariable = solverVariable10;
                        solverVariable2 = solverVariable9;
                        linearSystem.addEquality(solverVariable, solverVariable2, i10, 5);
                    }
                } else if (z7) {
                    i5 = i3;
                    applyConstraints(linearSystem, z6, z11, constraintWidget3.mTop, constraintAnchor2, constraintWidget3.mY, constraintWidget3.mY + i8, i8, constraintWidget3.mMinHeight, constraintWidget3.mVerticalBiasPercent, z7, z2, constraintWidget3.mMatchConstraintDefaultHeight, constraintWidget3.mMatchConstraintMinHeight, constraintWidget3.mMatchConstraintMaxHeight);
                    solverVariable = solverVariable10;
                    solverVariable2 = solverVariable9;
                    linearSystem.addEquality(solverVariable, solverVariable2, i10, 5);
                } else {
                    i5 = i3;
                    applyConstraints(linearSystem, z6, z11, constraintWidget3.mTop, constraintAnchor2, constraintWidget3.mY, constraintWidget3.mY + i8, i8, constraintWidget3.mMinHeight, constraintWidget3.mVerticalBiasPercent, z7, z2, constraintWidget3.mMatchConstraintDefaultHeight, constraintWidget3.mMatchConstraintMinHeight, constraintWidget3.mMatchConstraintMaxHeight);
                    solverVariable = solverVariable10;
                    solverVariable2 = solverVariable9;
                    linearSystem.addEquality(solverVariable, solverVariable2, i10, 5);
                }
                solverVariable3 = solverVariable;
                solverVariable4 = solverVariable2;
                if (z3) {
                    arrayRowCreateRow = linearSystem.createRow();
                    if (i != Integer.MAX_VALUE) {
                        constraintWidget2 = this;
                        if (constraintWidget2.mLeft.mGroup == i) {
                            return;
                        } else {
                            return;
                        }
                    }
                    constraintWidget2 = this;
                    i6 = i5;
                    if (i6 == 0) {
                        linearSystem.addConstraint(arrayRowCreateRow.createRowDimensionRatio(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, solverVariable3, solverVariable4, f));
                        return;
                    }
                    if (i6 == 1) {
                        linearSystem.addConstraint(arrayRowCreateRow.createRowDimensionRatio(solverVariable3, solverVariable4, solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, f));
                        return;
                    }
                    if (constraintWidget2.mMatchConstraintMinWidth > 0) {
                        solverVariable5 = solverVariableCreateObjectVariable2;
                        solverVariable6 = solverVariableCreateObjectVariable;
                        i7 = 3;
                        linearSystem.addGreaterThan(solverVariable5, solverVariable6, constraintWidget2.mMatchConstraintMinWidth, 3);
                    } else {
                        solverVariable5 = solverVariableCreateObjectVariable2;
                        solverVariable6 = solverVariableCreateObjectVariable;
                        i7 = 3;
                    }
                    if (constraintWidget2.mMatchConstraintMinHeight > 0) {
                        solverVariable7 = solverVariable3;
                        solverVariable8 = solverVariable4;
                        linearSystem.addGreaterThan(solverVariable7, solverVariable8, constraintWidget2.mMatchConstraintMinHeight, i7);
                    } else {
                        solverVariable7 = solverVariable3;
                        solverVariable8 = solverVariable4;
                    }
                    arrayRowCreateRow.createRowDimensionRatio(solverVariable5, solverVariable6, solverVariable7, solverVariable8, f);
                    SolverVariable solverVariableCreateErrorVariable17 = linearSystem.createErrorVariable();
                    SolverVariable solverVariableCreateErrorVariable18 = linearSystem.createErrorVariable();
                    solverVariableCreateErrorVariable17.strength = 4;
                    solverVariableCreateErrorVariable18.strength = 4;
                    arrayRowCreateRow.addError(solverVariableCreateErrorVariable17, solverVariableCreateErrorVariable18);
                    linearSystem.addConstraint(arrayRowCreateRow);
                }
            }
            i4 = -1;
            z7 = true;
            if (constraintWidget3.mBaselineDistance > 0) {
                i5 = i3;
                int i16 = i10;
                solverVariable = solverVariable10;
                solverVariable2 = solverVariableCreateObjectVariable3;
                if (i != Integer.MAX_VALUE) {
                    constraintWidget = this;
                    if (constraintWidget.mTop.mGroup == i) {
                    }
                } else {
                    constraintWidget = this;
                }
                if (z7) {
                }
                solverVariable3 = solverVariable;
                solverVariable4 = solverVariable2;
                applyConstraints(linearSystem, z6, z11, constraintWidget.mTop, constraintWidget.mBottom, constraintWidget.mY, constraintWidget.mY + i16, i16, constraintWidget.mMinHeight, constraintWidget.mVerticalBiasPercent, z7, z2, constraintWidget.mMatchConstraintDefaultHeight, constraintWidget.mMatchConstraintMinHeight, constraintWidget.mMatchConstraintMaxHeight);
                if (z3) {
                    arrayRowCreateRow = linearSystem.createRow();
                    if (i != Integer.MAX_VALUE) {
                        constraintWidget2 = this;
                        if (constraintWidget2.mLeft.mGroup == i) {
                            return;
                        } else {
                            return;
                        }
                    }
                    constraintWidget2 = this;
                    i6 = i5;
                    if (i6 == 0) {
                        linearSystem.addConstraint(arrayRowCreateRow.createRowDimensionRatio(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, solverVariable3, solverVariable4, f));
                        return;
                    }
                    if (i6 == 1) {
                        linearSystem.addConstraint(arrayRowCreateRow.createRowDimensionRatio(solverVariable3, solverVariable4, solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, f));
                        return;
                    }
                    if (constraintWidget2.mMatchConstraintMinWidth > 0) {
                        solverVariable5 = solverVariableCreateObjectVariable2;
                        solverVariable6 = solverVariableCreateObjectVariable;
                        i7 = 3;
                        linearSystem.addGreaterThan(solverVariable5, solverVariable6, constraintWidget2.mMatchConstraintMinWidth, 3);
                    } else {
                        solverVariable5 = solverVariableCreateObjectVariable2;
                        solverVariable6 = solverVariableCreateObjectVariable;
                        i7 = 3;
                    }
                    if (constraintWidget2.mMatchConstraintMinHeight > 0) {
                        solverVariable7 = solverVariable3;
                        solverVariable8 = solverVariable4;
                        linearSystem.addGreaterThan(solverVariable7, solverVariable8, constraintWidget2.mMatchConstraintMinHeight, i7);
                    } else {
                        solverVariable7 = solverVariable3;
                        solverVariable8 = solverVariable4;
                    }
                    arrayRowCreateRow.createRowDimensionRatio(solverVariable5, solverVariable6, solverVariable7, solverVariable8, f);
                    SolverVariable solverVariableCreateErrorVariable19 = linearSystem.createErrorVariable();
                    SolverVariable solverVariableCreateErrorVariable110 = linearSystem.createErrorVariable();
                    solverVariableCreateErrorVariable19.strength = 4;
                    solverVariableCreateErrorVariable110.strength = 4;
                    arrayRowCreateRow.addError(solverVariableCreateErrorVariable19, solverVariableCreateErrorVariable110);
                    linearSystem.addConstraint(arrayRowCreateRow);
                }
            }
            constraintAnchor = constraintWidget3.mBottom;
            if (i != Integer.MAX_VALUE) {
                solverVariable9 = solverVariableCreateObjectVariable3;
                linearSystem2 = linearSystem;
                linearSystem2.addEquality(solverVariableCreateObjectVariable5, solverVariable9, getBaselineDistance(), 5);
            } else {
                solverVariable9 = solverVariableCreateObjectVariable3;
                linearSystem2 = linearSystem;
                linearSystem2.addEquality(solverVariableCreateObjectVariable5, solverVariable9, getBaselineDistance(), 5);
            }
            if (constraintWidget3.mBaseline.mTarget != null) {
                i8 = constraintWidget3.mBaselineDistance;
                constraintAnchor2 = constraintWidget3.mBaseline;
            } else {
                constraintAnchor2 = constraintAnchor;
                i8 = i10;
            }
            if (i == Integer.MAX_VALUE) {
                if (z7) {
                    i5 = i3;
                    applyConstraints(linearSystem, z6, z11, constraintWidget3.mTop, constraintAnchor2, constraintWidget3.mY, constraintWidget3.mY + i8, i8, constraintWidget3.mMinHeight, constraintWidget3.mVerticalBiasPercent, z7, z2, constraintWidget3.mMatchConstraintDefaultHeight, constraintWidget3.mMatchConstraintMinHeight, constraintWidget3.mMatchConstraintMaxHeight);
                    solverVariable = solverVariable10;
                    solverVariable2 = solverVariable9;
                    linearSystem.addEquality(solverVariable, solverVariable2, i10, 5);
                } else {
                    i5 = i3;
                    applyConstraints(linearSystem, z6, z11, constraintWidget3.mTop, constraintAnchor2, constraintWidget3.mY, constraintWidget3.mY + i8, i8, constraintWidget3.mMinHeight, constraintWidget3.mVerticalBiasPercent, z7, z2, constraintWidget3.mMatchConstraintDefaultHeight, constraintWidget3.mMatchConstraintMinHeight, constraintWidget3.mMatchConstraintMaxHeight);
                    solverVariable = solverVariable10;
                    solverVariable2 = solverVariable9;
                    linearSystem.addEquality(solverVariable, solverVariable2, i10, 5);
                }
            } else if (z7) {
                i5 = i3;
                applyConstraints(linearSystem, z6, z11, constraintWidget3.mTop, constraintAnchor2, constraintWidget3.mY, constraintWidget3.mY + i8, i8, constraintWidget3.mMinHeight, constraintWidget3.mVerticalBiasPercent, z7, z2, constraintWidget3.mMatchConstraintDefaultHeight, constraintWidget3.mMatchConstraintMinHeight, constraintWidget3.mMatchConstraintMaxHeight);
                solverVariable = solverVariable10;
                solverVariable2 = solverVariable9;
                linearSystem.addEquality(solverVariable, solverVariable2, i10, 5);
            } else {
                i5 = i3;
                applyConstraints(linearSystem, z6, z11, constraintWidget3.mTop, constraintAnchor2, constraintWidget3.mY, constraintWidget3.mY + i8, i8, constraintWidget3.mMinHeight, constraintWidget3.mVerticalBiasPercent, z7, z2, constraintWidget3.mMatchConstraintDefaultHeight, constraintWidget3.mMatchConstraintMinHeight, constraintWidget3.mMatchConstraintMaxHeight);
                solverVariable = solverVariable10;
                solverVariable2 = solverVariable9;
                linearSystem.addEquality(solverVariable, solverVariable2, i10, 5);
            }
            solverVariable3 = solverVariable;
            solverVariable4 = solverVariable2;
            if (z3) {
                arrayRowCreateRow = linearSystem.createRow();
                if (i != Integer.MAX_VALUE) {
                    constraintWidget2 = this;
                    if (constraintWidget2.mLeft.mGroup == i) {
                        return;
                    } else {
                        return;
                    }
                }
                constraintWidget2 = this;
                i6 = i5;
                if (i6 == 0) {
                    linearSystem.addConstraint(arrayRowCreateRow.createRowDimensionRatio(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, solverVariable3, solverVariable4, f));
                    return;
                }
                if (i6 == 1) {
                    linearSystem.addConstraint(arrayRowCreateRow.createRowDimensionRatio(solverVariable3, solverVariable4, solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, f));
                    return;
                }
                if (constraintWidget2.mMatchConstraintMinWidth > 0) {
                    solverVariable5 = solverVariableCreateObjectVariable2;
                    solverVariable6 = solverVariableCreateObjectVariable;
                    i7 = 3;
                    linearSystem.addGreaterThan(solverVariable5, solverVariable6, constraintWidget2.mMatchConstraintMinWidth, 3);
                } else {
                    solverVariable5 = solverVariableCreateObjectVariable2;
                    solverVariable6 = solverVariableCreateObjectVariable;
                    i7 = 3;
                }
                if (constraintWidget2.mMatchConstraintMinHeight > 0) {
                    solverVariable7 = solverVariable3;
                    solverVariable8 = solverVariable4;
                    linearSystem.addGreaterThan(solverVariable7, solverVariable8, constraintWidget2.mMatchConstraintMinHeight, i7);
                } else {
                    solverVariable7 = solverVariable3;
                    solverVariable8 = solverVariable4;
                }
                arrayRowCreateRow.createRowDimensionRatio(solverVariable5, solverVariable6, solverVariable7, solverVariable8, f);
                SolverVariable solverVariableCreateErrorVariable111 = linearSystem.createErrorVariable();
                SolverVariable solverVariableCreateErrorVariable112 = linearSystem.createErrorVariable();
                solverVariableCreateErrorVariable111.strength = 4;
                solverVariableCreateErrorVariable112.strength = 4;
                arrayRowCreateRow.addError(solverVariableCreateErrorVariable111, solverVariableCreateErrorVariable112);
                linearSystem.addConstraint(arrayRowCreateRow);
            }
        }
        i3 = i2;
        i4 = -1;
        z7 = z5;
        if (constraintWidget3.mBaselineDistance > 0) {
            i5 = i3;
            int i17 = i10;
            solverVariable = solverVariable10;
            solverVariable2 = solverVariableCreateObjectVariable3;
            if (i != Integer.MAX_VALUE) {
                constraintWidget = this;
                if (constraintWidget.mTop.mGroup == i) {
                }
            } else {
                constraintWidget = this;
            }
            if (z7) {
            }
            solverVariable3 = solverVariable;
            solverVariable4 = solverVariable2;
            applyConstraints(linearSystem, z6, z11, constraintWidget.mTop, constraintWidget.mBottom, constraintWidget.mY, constraintWidget.mY + i17, i17, constraintWidget.mMinHeight, constraintWidget.mVerticalBiasPercent, z7, z2, constraintWidget.mMatchConstraintDefaultHeight, constraintWidget.mMatchConstraintMinHeight, constraintWidget.mMatchConstraintMaxHeight);
            if (z3) {
                arrayRowCreateRow = linearSystem.createRow();
                if (i != Integer.MAX_VALUE) {
                    constraintWidget2 = this;
                    if (constraintWidget2.mLeft.mGroup == i) {
                        return;
                    } else {
                        return;
                    }
                }
                constraintWidget2 = this;
                i6 = i5;
                if (i6 == 0) {
                    linearSystem.addConstraint(arrayRowCreateRow.createRowDimensionRatio(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, solverVariable3, solverVariable4, f));
                    return;
                }
                if (i6 == 1) {
                    linearSystem.addConstraint(arrayRowCreateRow.createRowDimensionRatio(solverVariable3, solverVariable4, solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, f));
                    return;
                }
                if (constraintWidget2.mMatchConstraintMinWidth > 0) {
                    solverVariable5 = solverVariableCreateObjectVariable2;
                    solverVariable6 = solverVariableCreateObjectVariable;
                    i7 = 3;
                    linearSystem.addGreaterThan(solverVariable5, solverVariable6, constraintWidget2.mMatchConstraintMinWidth, 3);
                } else {
                    solverVariable5 = solverVariableCreateObjectVariable2;
                    solverVariable6 = solverVariableCreateObjectVariable;
                    i7 = 3;
                }
                if (constraintWidget2.mMatchConstraintMinHeight > 0) {
                    solverVariable7 = solverVariable3;
                    solverVariable8 = solverVariable4;
                    linearSystem.addGreaterThan(solverVariable7, solverVariable8, constraintWidget2.mMatchConstraintMinHeight, i7);
                } else {
                    solverVariable7 = solverVariable3;
                    solverVariable8 = solverVariable4;
                }
                arrayRowCreateRow.createRowDimensionRatio(solverVariable5, solverVariable6, solverVariable7, solverVariable8, f);
                SolverVariable solverVariableCreateErrorVariable113 = linearSystem.createErrorVariable();
                SolverVariable solverVariableCreateErrorVariable114 = linearSystem.createErrorVariable();
                solverVariableCreateErrorVariable113.strength = 4;
                solverVariableCreateErrorVariable114.strength = 4;
                arrayRowCreateRow.addError(solverVariableCreateErrorVariable113, solverVariableCreateErrorVariable114);
                linearSystem.addConstraint(arrayRowCreateRow);
            }
        }
        constraintAnchor = constraintWidget3.mBottom;
        if (i != Integer.MAX_VALUE) {
            solverVariable9 = solverVariableCreateObjectVariable3;
            linearSystem2 = linearSystem;
            linearSystem2.addEquality(solverVariableCreateObjectVariable5, solverVariable9, getBaselineDistance(), 5);
        } else {
            solverVariable9 = solverVariableCreateObjectVariable3;
            linearSystem2 = linearSystem;
            linearSystem2.addEquality(solverVariableCreateObjectVariable5, solverVariable9, getBaselineDistance(), 5);
        }
        if (constraintWidget3.mBaseline.mTarget != null) {
            i8 = constraintWidget3.mBaselineDistance;
            constraintAnchor2 = constraintWidget3.mBaseline;
        } else {
            constraintAnchor2 = constraintAnchor;
            i8 = i10;
        }
        if (i == Integer.MAX_VALUE) {
            if (z7) {
                i5 = i3;
                applyConstraints(linearSystem, z6, z11, constraintWidget3.mTop, constraintAnchor2, constraintWidget3.mY, constraintWidget3.mY + i8, i8, constraintWidget3.mMinHeight, constraintWidget3.mVerticalBiasPercent, z7, z2, constraintWidget3.mMatchConstraintDefaultHeight, constraintWidget3.mMatchConstraintMinHeight, constraintWidget3.mMatchConstraintMaxHeight);
                solverVariable = solverVariable10;
                solverVariable2 = solverVariable9;
                linearSystem.addEquality(solverVariable, solverVariable2, i10, 5);
            } else {
                i5 = i3;
                applyConstraints(linearSystem, z6, z11, constraintWidget3.mTop, constraintAnchor2, constraintWidget3.mY, constraintWidget3.mY + i8, i8, constraintWidget3.mMinHeight, constraintWidget3.mVerticalBiasPercent, z7, z2, constraintWidget3.mMatchConstraintDefaultHeight, constraintWidget3.mMatchConstraintMinHeight, constraintWidget3.mMatchConstraintMaxHeight);
                solverVariable = solverVariable10;
                solverVariable2 = solverVariable9;
                linearSystem.addEquality(solverVariable, solverVariable2, i10, 5);
            }
        } else if (z7) {
            i5 = i3;
            applyConstraints(linearSystem, z6, z11, constraintWidget3.mTop, constraintAnchor2, constraintWidget3.mY, constraintWidget3.mY + i8, i8, constraintWidget3.mMinHeight, constraintWidget3.mVerticalBiasPercent, z7, z2, constraintWidget3.mMatchConstraintDefaultHeight, constraintWidget3.mMatchConstraintMinHeight, constraintWidget3.mMatchConstraintMaxHeight);
            solverVariable = solverVariable10;
            solverVariable2 = solverVariable9;
            linearSystem.addEquality(solverVariable, solverVariable2, i10, 5);
        } else {
            i5 = i3;
            applyConstraints(linearSystem, z6, z11, constraintWidget3.mTop, constraintAnchor2, constraintWidget3.mY, constraintWidget3.mY + i8, i8, constraintWidget3.mMinHeight, constraintWidget3.mVerticalBiasPercent, z7, z2, constraintWidget3.mMatchConstraintDefaultHeight, constraintWidget3.mMatchConstraintMinHeight, constraintWidget3.mMatchConstraintMaxHeight);
            solverVariable = solverVariable10;
            solverVariable2 = solverVariable9;
            linearSystem.addEquality(solverVariable, solverVariable2, i10, 5);
        }
        solverVariable3 = solverVariable;
        solverVariable4 = solverVariable2;
        if (z3) {
            arrayRowCreateRow = linearSystem.createRow();
            if (i != Integer.MAX_VALUE) {
                constraintWidget2 = this;
                if (constraintWidget2.mLeft.mGroup == i) {
                    return;
                } else {
                    return;
                }
            }
            constraintWidget2 = this;
            i6 = i5;
            if (i6 == 0) {
                linearSystem.addConstraint(arrayRowCreateRow.createRowDimensionRatio(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, solverVariable3, solverVariable4, f));
                return;
            }
            if (i6 == 1) {
                linearSystem.addConstraint(arrayRowCreateRow.createRowDimensionRatio(solverVariable3, solverVariable4, solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, f));
                return;
            }
            if (constraintWidget2.mMatchConstraintMinWidth > 0) {
                solverVariable5 = solverVariableCreateObjectVariable2;
                solverVariable6 = solverVariableCreateObjectVariable;
                i7 = 3;
                linearSystem.addGreaterThan(solverVariable5, solverVariable6, constraintWidget2.mMatchConstraintMinWidth, 3);
            } else {
                solverVariable5 = solverVariableCreateObjectVariable2;
                solverVariable6 = solverVariableCreateObjectVariable;
                i7 = 3;
            }
            if (constraintWidget2.mMatchConstraintMinHeight > 0) {
                solverVariable7 = solverVariable3;
                solverVariable8 = solverVariable4;
                linearSystem.addGreaterThan(solverVariable7, solverVariable8, constraintWidget2.mMatchConstraintMinHeight, i7);
            } else {
                solverVariable7 = solverVariable3;
                solverVariable8 = solverVariable4;
            }
            arrayRowCreateRow.createRowDimensionRatio(solverVariable5, solverVariable6, solverVariable7, solverVariable8, f);
            SolverVariable solverVariableCreateErrorVariable115 = linearSystem.createErrorVariable();
            SolverVariable solverVariableCreateErrorVariable116 = linearSystem.createErrorVariable();
            solverVariableCreateErrorVariable115.strength = 4;
            solverVariableCreateErrorVariable116.strength = 4;
            arrayRowCreateRow.addError(solverVariableCreateErrorVariable115, solverVariableCreateErrorVariable116);
            linearSystem.addConstraint(arrayRowCreateRow);
        }
    }

    public void connect(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2) {
        connect(type, constraintWidget, type2, 0, ConstraintAnchor.Strength.STRONG);
    }

    public void connect(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i) {
        connect(type, constraintWidget, type2, i, ConstraintAnchor.Strength.STRONG);
    }

    public void connect(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i, ConstraintAnchor.Strength strength) {
        connect(type, constraintWidget, type2, i, strength, 0);
    }

    public void connect(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i, ConstraintAnchor.Strength strength, int i2) {
        boolean z;
        int i3 = 0;
        if (type == ConstraintAnchor.Type.CENTER) {
            if (type2 != ConstraintAnchor.Type.CENTER) {
                if (type2 == ConstraintAnchor.Type.LEFT || type2 == ConstraintAnchor.Type.RIGHT) {
                    connect(ConstraintAnchor.Type.LEFT, constraintWidget, type2, 0, strength, i2);
                    connect(ConstraintAnchor.Type.RIGHT, constraintWidget, type2, 0, strength, i2);
                    getAnchor(ConstraintAnchor.Type.CENTER).connect(constraintWidget.getAnchor(type2), 0, i2);
                    return;
                } else {
                    if (type2 == ConstraintAnchor.Type.TOP || type2 == ConstraintAnchor.Type.BOTTOM) {
                        connect(ConstraintAnchor.Type.TOP, constraintWidget, type2, 0, strength, i2);
                        connect(ConstraintAnchor.Type.BOTTOM, constraintWidget, type2, 0, strength, i2);
                        getAnchor(ConstraintAnchor.Type.CENTER).connect(constraintWidget.getAnchor(type2), 0, i2);
                        return;
                    }
                    return;
                }
            }
            ConstraintAnchor anchor = getAnchor(ConstraintAnchor.Type.LEFT);
            ConstraintAnchor anchor2 = getAnchor(ConstraintAnchor.Type.RIGHT);
            ConstraintAnchor anchor3 = getAnchor(ConstraintAnchor.Type.TOP);
            ConstraintAnchor anchor4 = getAnchor(ConstraintAnchor.Type.BOTTOM);
            boolean z2 = true;
            if ((anchor == null || !anchor.isConnected()) && (anchor2 == null || !anchor2.isConnected())) {
                connect(ConstraintAnchor.Type.LEFT, constraintWidget, ConstraintAnchor.Type.LEFT, 0, strength, i2);
                connect(ConstraintAnchor.Type.RIGHT, constraintWidget, ConstraintAnchor.Type.RIGHT, 0, strength, i2);
                z = true;
            } else {
                z = false;
            }
            if ((anchor3 == null || !anchor3.isConnected()) && (anchor4 == null || !anchor4.isConnected())) {
                connect(ConstraintAnchor.Type.TOP, constraintWidget, ConstraintAnchor.Type.TOP, 0, strength, i2);
                connect(ConstraintAnchor.Type.BOTTOM, constraintWidget, ConstraintAnchor.Type.BOTTOM, 0, strength, i2);
            } else {
                z2 = false;
            }
            if (z && z2) {
                getAnchor(ConstraintAnchor.Type.CENTER).connect(constraintWidget.getAnchor(ConstraintAnchor.Type.CENTER), 0, i2);
                return;
            } else if (z) {
                getAnchor(ConstraintAnchor.Type.CENTER_X).connect(constraintWidget.getAnchor(ConstraintAnchor.Type.CENTER_X), 0, i2);
                return;
            } else {
                if (z2) {
                    getAnchor(ConstraintAnchor.Type.CENTER_Y).connect(constraintWidget.getAnchor(ConstraintAnchor.Type.CENTER_Y), 0, i2);
                    return;
                }
                return;
            }
        }
        if (type == ConstraintAnchor.Type.CENTER_X && (type2 == ConstraintAnchor.Type.LEFT || type2 == ConstraintAnchor.Type.RIGHT)) {
            ConstraintAnchor anchor5 = getAnchor(ConstraintAnchor.Type.LEFT);
            ConstraintAnchor anchor6 = constraintWidget.getAnchor(type2);
            ConstraintAnchor anchor7 = getAnchor(ConstraintAnchor.Type.RIGHT);
            anchor5.connect(anchor6, 0, i2);
            anchor7.connect(anchor6, 0, i2);
            getAnchor(ConstraintAnchor.Type.CENTER_X).connect(anchor6, 0, i2);
            return;
        }
        if (type == ConstraintAnchor.Type.CENTER_Y && (type2 == ConstraintAnchor.Type.TOP || type2 == ConstraintAnchor.Type.BOTTOM)) {
            ConstraintAnchor anchor8 = constraintWidget.getAnchor(type2);
            getAnchor(ConstraintAnchor.Type.TOP).connect(anchor8, 0, i2);
            getAnchor(ConstraintAnchor.Type.BOTTOM).connect(anchor8, 0, i2);
            getAnchor(ConstraintAnchor.Type.CENTER_Y).connect(anchor8, 0, i2);
            return;
        }
        if (type == ConstraintAnchor.Type.CENTER_X && type2 == ConstraintAnchor.Type.CENTER_X) {
            getAnchor(ConstraintAnchor.Type.LEFT).connect(constraintWidget.getAnchor(ConstraintAnchor.Type.LEFT), 0, i2);
            getAnchor(ConstraintAnchor.Type.RIGHT).connect(constraintWidget.getAnchor(ConstraintAnchor.Type.RIGHT), 0, i2);
            getAnchor(ConstraintAnchor.Type.CENTER_X).connect(constraintWidget.getAnchor(type2), 0, i2);
            return;
        }
        if (type == ConstraintAnchor.Type.CENTER_Y && type2 == ConstraintAnchor.Type.CENTER_Y) {
            getAnchor(ConstraintAnchor.Type.TOP).connect(constraintWidget.getAnchor(ConstraintAnchor.Type.TOP), 0, i2);
            getAnchor(ConstraintAnchor.Type.BOTTOM).connect(constraintWidget.getAnchor(ConstraintAnchor.Type.BOTTOM), 0, i2);
            getAnchor(ConstraintAnchor.Type.CENTER_Y).connect(constraintWidget.getAnchor(type2), 0, i2);
            return;
        }
        ConstraintAnchor anchor9 = getAnchor(type);
        ConstraintAnchor anchor10 = constraintWidget.getAnchor(type2);
        if (anchor9.isValidConnection(anchor10)) {
            if (type == ConstraintAnchor.Type.BASELINE) {
                ConstraintAnchor anchor11 = getAnchor(ConstraintAnchor.Type.TOP);
                ConstraintAnchor anchor12 = getAnchor(ConstraintAnchor.Type.BOTTOM);
                if (anchor11 != null) {
                    anchor11.reset();
                }
                if (anchor12 != null) {
                    anchor12.reset();
                }
            } else {
                if (type == ConstraintAnchor.Type.TOP || type == ConstraintAnchor.Type.BOTTOM) {
                    ConstraintAnchor anchor13 = getAnchor(ConstraintAnchor.Type.BASELINE);
                    if (anchor13 != null) {
                        anchor13.reset();
                    }
                    ConstraintAnchor anchor14 = getAnchor(ConstraintAnchor.Type.CENTER);
                    if (anchor14.getTarget() != anchor10) {
                        anchor14.reset();
                    }
                    ConstraintAnchor opposite = getAnchor(type).getOpposite();
                    ConstraintAnchor anchor15 = getAnchor(ConstraintAnchor.Type.CENTER_Y);
                    if (anchor15.isConnected()) {
                        opposite.reset();
                        anchor15.reset();
                    }
                } else if (type == ConstraintAnchor.Type.LEFT || type == ConstraintAnchor.Type.RIGHT) {
                    ConstraintAnchor anchor16 = getAnchor(ConstraintAnchor.Type.CENTER);
                    if (anchor16.getTarget() != anchor10) {
                        anchor16.reset();
                    }
                    ConstraintAnchor opposite2 = getAnchor(type).getOpposite();
                    ConstraintAnchor anchor17 = getAnchor(ConstraintAnchor.Type.CENTER_X);
                    if (anchor17.isConnected()) {
                        opposite2.reset();
                        anchor17.reset();
                    }
                }
                i3 = i;
            }
            anchor9.connect(anchor10, i3, strength, i2);
            anchor10.getOwner().connectedTo(anchor9.getOwner());
        }
    }

    public void connect(ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i) {
        connect(constraintAnchor, constraintAnchor2, i, ConstraintAnchor.Strength.STRONG, 0);
    }

    public void connect(ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i, int i2) {
        connect(constraintAnchor, constraintAnchor2, i, ConstraintAnchor.Strength.STRONG, i2);
    }

    public void connect(ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i, ConstraintAnchor.Strength strength, int i2) {
        if (constraintAnchor.getOwner() == this) {
            connect(constraintAnchor.getType(), constraintAnchor2.getOwner(), constraintAnchor2.getType(), i, strength, i2);
        }
    }

    public void connectedTo(ConstraintWidget constraintWidget) {
    }

    public void disconnectUnlockedWidget(ConstraintWidget constraintWidget) {
        ArrayList<ConstraintAnchor> anchors = getAnchors();
        int size = anchors.size();
        for (int i = 0; i < size; i++) {
            ConstraintAnchor constraintAnchor = anchors.get(i);
            if (constraintAnchor.isConnected() && constraintAnchor.getTarget().getOwner() == constraintWidget && constraintAnchor.getConnectionCreator() == 2) {
                constraintAnchor.reset();
            }
        }
    }

    public void disconnectWidget(ConstraintWidget constraintWidget) {
        ArrayList<ConstraintAnchor> anchors = getAnchors();
        int size = anchors.size();
        for (int i = 0; i < size; i++) {
            ConstraintAnchor constraintAnchor = anchors.get(i);
            if (constraintAnchor.isConnected() && constraintAnchor.getTarget().getOwner() == constraintWidget) {
                constraintAnchor.reset();
            }
        }
    }

    public void forceUpdateDrawPosition() {
        int i = this.mX;
        int i2 = this.mY;
        int i3 = this.mX + this.mWidth;
        int i4 = this.mY + this.mHeight;
        this.mDrawX = i;
        this.mDrawY = i2;
        this.mDrawWidth = i3 - i;
        this.mDrawHeight = i4 - i2;
    }

    public ConstraintAnchor getAnchor(ConstraintAnchor.Type type) {
        switch (type) {
            case LEFT:
                return this.mLeft;
            case TOP:
                return this.mTop;
            case RIGHT:
                return this.mRight;
            case BOTTOM:
                return this.mBottom;
            case BASELINE:
                return this.mBaseline;
            case CENTER_X:
                return this.mCenterX;
            case CENTER_Y:
                return this.mCenterY;
            case CENTER:
                return this.mCenter;
            default:
                return null;
        }
    }

    public ArrayList<ConstraintAnchor> getAnchors() {
        return this.mAnchors;
    }

    public int getBaselineDistance() {
        return this.mBaselineDistance;
    }

    public int getBottom() {
        return getY() + this.mHeight;
    }

    public Object getCompanionWidget() {
        return this.mCompanionWidget;
    }

    public int getContainerItemSkip() {
        return this.mContainerItemSkip;
    }

    public String getDebugName() {
        return this.mDebugName;
    }

    public float getDimensionRatio() {
        return this.mDimensionRatio;
    }

    public int getDimensionRatioSide() {
        return this.mDimensionRatioSide;
    }

    public int getDrawBottom() {
        return getDrawY() + this.mDrawHeight;
    }

    public int getDrawHeight() {
        return this.mDrawHeight;
    }

    public int getDrawRight() {
        return getDrawX() + this.mDrawWidth;
    }

    public int getDrawWidth() {
        return this.mDrawWidth;
    }

    public int getDrawX() {
        return this.mDrawX + this.mOffsetX;
    }

    public int getDrawY() {
        return this.mDrawY + this.mOffsetY;
    }

    public int getHeight() {
        if (this.mVisibility == 8) {
            return 0;
        }
        return this.mHeight;
    }

    public float getHorizontalBiasPercent() {
        return this.mHorizontalBiasPercent;
    }

    public ConstraintWidget getHorizontalChainControlWidget() {
        if (!isInHorizontalChain()) {
            return null;
        }
        ConstraintWidget constraintWidget = this;
        ConstraintWidget constraintWidget2 = null;
        while (constraintWidget2 == null && constraintWidget != null) {
            ConstraintAnchor anchor = constraintWidget.getAnchor(ConstraintAnchor.Type.LEFT);
            ConstraintAnchor target = anchor == null ? null : anchor.getTarget();
            ConstraintWidget owner = target == null ? null : target.getOwner();
            if (owner == getParent()) {
                return constraintWidget;
            }
            ConstraintAnchor target2 = owner == null ? null : owner.getAnchor(ConstraintAnchor.Type.RIGHT).getTarget();
            if (target2 == null || target2.getOwner() == constraintWidget) {
                constraintWidget = owner;
            } else {
                constraintWidget2 = constraintWidget;
            }
        }
        return constraintWidget2;
    }

    public int getHorizontalChainStyle() {
        return this.mHorizontalChainStyle;
    }

    public DimensionBehaviour getHorizontalDimensionBehaviour() {
        return this.mHorizontalDimensionBehaviour;
    }

    public int getInternalDrawBottom() {
        return this.mDrawY + this.mDrawHeight;
    }

    public int getInternalDrawRight() {
        return this.mDrawX + this.mDrawWidth;
    }

    int getInternalDrawX() {
        return this.mDrawX;
    }

    int getInternalDrawY() {
        return this.mDrawY;
    }

    public int getLeft() {
        return getX();
    }

    public int getMinHeight() {
        return this.mMinHeight;
    }

    public int getMinWidth() {
        return this.mMinWidth;
    }

    public int getOptimizerWrapHeight() {
        int iMax;
        int i = this.mHeight;
        if (this.mVerticalDimensionBehaviour != DimensionBehaviour.MATCH_CONSTRAINT) {
            return i;
        }
        if (this.mMatchConstraintDefaultHeight == 1) {
            iMax = Math.max(this.mMatchConstraintMinHeight, i);
        } else if (this.mMatchConstraintMinHeight > 0) {
            iMax = this.mMatchConstraintMinHeight;
            this.mHeight = iMax;
        } else {
            iMax = 0;
        }
        return (this.mMatchConstraintMaxHeight <= 0 || this.mMatchConstraintMaxHeight >= iMax) ? iMax : this.mMatchConstraintMaxHeight;
    }

    public int getOptimizerWrapWidth() {
        int iMax;
        int i = this.mWidth;
        if (this.mHorizontalDimensionBehaviour != DimensionBehaviour.MATCH_CONSTRAINT) {
            return i;
        }
        if (this.mMatchConstraintDefaultWidth == 1) {
            iMax = Math.max(this.mMatchConstraintMinWidth, i);
        } else if (this.mMatchConstraintMinWidth > 0) {
            iMax = this.mMatchConstraintMinWidth;
            this.mWidth = iMax;
        } else {
            iMax = 0;
        }
        return (this.mMatchConstraintMaxWidth <= 0 || this.mMatchConstraintMaxWidth >= iMax) ? iMax : this.mMatchConstraintMaxWidth;
    }

    public ConstraintWidget getParent() {
        return this.mParent;
    }

    public int getRight() {
        return getX() + this.mWidth;
    }

    public WidgetContainer getRootWidgetContainer() {
        while (this.getParent() != null) {
            this = this.getParent();
        }
        if (this instanceof WidgetContainer) {
            return (WidgetContainer) this;
        }
        return null;
    }

    protected int getRootX() {
        return this.mX + this.mOffsetX;
    }

    protected int getRootY() {
        return this.mY + this.mOffsetY;
    }

    public int getTop() {
        return getY();
    }

    public String getType() {
        return this.mType;
    }

    public float getVerticalBiasPercent() {
        return this.mVerticalBiasPercent;
    }

    public ConstraintWidget getVerticalChainControlWidget() {
        if (!isInVerticalChain()) {
            return null;
        }
        ConstraintWidget constraintWidget = this;
        ConstraintWidget constraintWidget2 = null;
        while (constraintWidget2 == null && constraintWidget != null) {
            ConstraintAnchor anchor = constraintWidget.getAnchor(ConstraintAnchor.Type.TOP);
            ConstraintAnchor target = anchor == null ? null : anchor.getTarget();
            ConstraintWidget owner = target == null ? null : target.getOwner();
            if (owner == getParent()) {
                return constraintWidget;
            }
            ConstraintAnchor target2 = owner == null ? null : owner.getAnchor(ConstraintAnchor.Type.BOTTOM).getTarget();
            if (target2 == null || target2.getOwner() == constraintWidget) {
                constraintWidget = owner;
            } else {
                constraintWidget2 = constraintWidget;
            }
        }
        return constraintWidget2;
    }

    public int getVerticalChainStyle() {
        return this.mVerticalChainStyle;
    }

    public DimensionBehaviour getVerticalDimensionBehaviour() {
        return this.mVerticalDimensionBehaviour;
    }

    public int getVisibility() {
        return this.mVisibility;
    }

    public int getWidth() {
        if (this.mVisibility == 8) {
            return 0;
        }
        return this.mWidth;
    }

    public int getWrapHeight() {
        return this.mWrapHeight;
    }

    public int getWrapWidth() {
        return this.mWrapWidth;
    }

    public int getX() {
        return this.mX;
    }

    public int getY() {
        return this.mY;
    }

    public boolean hasAncestor(ConstraintWidget constraintWidget) {
        ConstraintWidget parent = getParent();
        if (parent == constraintWidget) {
            return true;
        }
        if (parent == constraintWidget.getParent()) {
            return false;
        }
        while (parent != null) {
            if (parent == constraintWidget || parent == constraintWidget.getParent()) {
                return true;
            }
            parent = parent.getParent();
        }
        return false;
    }

    public boolean hasBaseline() {
        return this.mBaselineDistance > 0;
    }

    public void immediateConnect(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i, int i2) {
        getAnchor(type).connect(constraintWidget.getAnchor(type2), i, i2, ConstraintAnchor.Strength.STRONG, 0, true);
    }

    public boolean isInHorizontalChain() {
        if (this.mLeft.mTarget == null || this.mLeft.mTarget.mTarget != this.mLeft) {
            return this.mRight.mTarget != null && this.mRight.mTarget.mTarget == this.mRight;
        }
        return true;
    }

    public boolean isInVerticalChain() {
        if (this.mTop.mTarget == null || this.mTop.mTarget.mTarget != this.mTop) {
            return this.mBottom.mTarget != null && this.mBottom.mTarget.mTarget == this.mBottom;
        }
        return true;
    }

    public boolean isInsideConstraintLayout() {
        ConstraintWidget parent = getParent();
        if (parent == null) {
            return false;
        }
        while (parent != null) {
            if (parent instanceof ConstraintWidgetContainer) {
                return true;
            }
            parent = parent.getParent();
        }
        return false;
    }

    public boolean isRoot() {
        return this.mParent == null;
    }

    public boolean isRootContainer() {
        return (this instanceof ConstraintWidgetContainer) && (this.mParent == null || !(this.mParent instanceof ConstraintWidgetContainer));
    }

    public void reset() {
        this.mLeft.reset();
        this.mTop.reset();
        this.mRight.reset();
        this.mBottom.reset();
        this.mBaseline.reset();
        this.mCenterX.reset();
        this.mCenterY.reset();
        this.mCenter.reset();
        this.mParent = null;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.mX = 0;
        this.mY = 0;
        this.mDrawX = 0;
        this.mDrawY = 0;
        this.mDrawWidth = 0;
        this.mDrawHeight = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mBaselineDistance = 0;
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mWrapWidth = 0;
        this.mWrapHeight = 0;
        this.mHorizontalBiasPercent = DEFAULT_BIAS;
        this.mVerticalBiasPercent = DEFAULT_BIAS;
        this.mHorizontalDimensionBehaviour = DimensionBehaviour.FIXED;
        this.mVerticalDimensionBehaviour = DimensionBehaviour.FIXED;
        this.mCompanionWidget = null;
        this.mContainerItemSkip = 0;
        this.mVisibility = 0;
        this.mDebugName = null;
        this.mType = null;
        this.mHorizontalWrapVisited = false;
        this.mVerticalWrapVisited = false;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        this.mHorizontalChainFixedPosition = false;
        this.mVerticalChainFixedPosition = false;
        this.mHorizontalWeight = 0.0f;
        this.mVerticalWeight = 0.0f;
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
    }

    public void resetAllConstraints() {
        resetAnchors();
        setVerticalBiasPercent(DEFAULT_BIAS);
        setHorizontalBiasPercent(DEFAULT_BIAS);
        if (this instanceof ConstraintWidgetContainer) {
            return;
        }
        if (getHorizontalDimensionBehaviour() == DimensionBehaviour.MATCH_CONSTRAINT) {
            if (getWidth() == getWrapWidth()) {
                setHorizontalDimensionBehaviour(DimensionBehaviour.WRAP_CONTENT);
            } else if (getWidth() > getMinWidth()) {
                setHorizontalDimensionBehaviour(DimensionBehaviour.FIXED);
            }
        }
        if (getVerticalDimensionBehaviour() == DimensionBehaviour.MATCH_CONSTRAINT) {
            if (getHeight() == getWrapHeight()) {
                setVerticalDimensionBehaviour(DimensionBehaviour.WRAP_CONTENT);
            } else if (getHeight() > getMinHeight()) {
                setVerticalDimensionBehaviour(DimensionBehaviour.FIXED);
            }
        }
    }

    public void resetAnchor(ConstraintAnchor constraintAnchor) {
        if (getParent() != null && (getParent() instanceof ConstraintWidgetContainer) && ((ConstraintWidgetContainer) getParent()).handlesInternalConstraints()) {
            return;
        }
        ConstraintAnchor anchor = getAnchor(ConstraintAnchor.Type.LEFT);
        ConstraintAnchor anchor2 = getAnchor(ConstraintAnchor.Type.RIGHT);
        ConstraintAnchor anchor3 = getAnchor(ConstraintAnchor.Type.TOP);
        ConstraintAnchor anchor4 = getAnchor(ConstraintAnchor.Type.BOTTOM);
        ConstraintAnchor anchor5 = getAnchor(ConstraintAnchor.Type.CENTER);
        ConstraintAnchor anchor6 = getAnchor(ConstraintAnchor.Type.CENTER_X);
        ConstraintAnchor anchor7 = getAnchor(ConstraintAnchor.Type.CENTER_Y);
        if (constraintAnchor == anchor5) {
            if (anchor.isConnected() && anchor2.isConnected() && anchor.getTarget() == anchor2.getTarget()) {
                anchor.reset();
                anchor2.reset();
            }
            if (anchor3.isConnected() && anchor4.isConnected() && anchor3.getTarget() == anchor4.getTarget()) {
                anchor3.reset();
                anchor4.reset();
            }
            this.mHorizontalBiasPercent = 0.5f;
            this.mVerticalBiasPercent = 0.5f;
        } else if (constraintAnchor == anchor6) {
            if (anchor.isConnected() && anchor2.isConnected() && anchor.getTarget().getOwner() == anchor2.getTarget().getOwner()) {
                anchor.reset();
                anchor2.reset();
            }
            this.mHorizontalBiasPercent = 0.5f;
        } else if (constraintAnchor == anchor7) {
            if (anchor3.isConnected() && anchor4.isConnected() && anchor3.getTarget().getOwner() == anchor4.getTarget().getOwner()) {
                anchor3.reset();
                anchor4.reset();
            }
            this.mVerticalBiasPercent = 0.5f;
        } else if (constraintAnchor == anchor || constraintAnchor == anchor2) {
            if (anchor.isConnected() && anchor.getTarget() == anchor2.getTarget()) {
                anchor5.reset();
            }
        } else if ((constraintAnchor == anchor3 || constraintAnchor == anchor4) && anchor3.isConnected() && anchor3.getTarget() == anchor4.getTarget()) {
            anchor5.reset();
        }
        constraintAnchor.reset();
    }

    public void resetAnchors() {
        ConstraintWidget parent = getParent();
        if (parent != null && (parent instanceof ConstraintWidgetContainer) && ((ConstraintWidgetContainer) getParent()).handlesInternalConstraints()) {
            return;
        }
        int size = this.mAnchors.size();
        for (int i = 0; i < size; i++) {
            this.mAnchors.get(i).reset();
        }
    }

    public void resetAnchors(int i) {
        ConstraintWidget parent = getParent();
        if (parent != null && (parent instanceof ConstraintWidgetContainer) && ((ConstraintWidgetContainer) getParent()).handlesInternalConstraints()) {
            return;
        }
        int size = this.mAnchors.size();
        for (int i2 = 0; i2 < size; i2++) {
            ConstraintAnchor constraintAnchor = this.mAnchors.get(i2);
            if (i == constraintAnchor.getConnectionCreator()) {
                if (constraintAnchor.isVerticalAnchor()) {
                    setVerticalBiasPercent(DEFAULT_BIAS);
                } else {
                    setHorizontalBiasPercent(DEFAULT_BIAS);
                }
                constraintAnchor.reset();
            }
        }
    }

    public void resetGroups() {
        int size = this.mAnchors.size();
        for (int i = 0; i < size; i++) {
            this.mAnchors.get(i).mGroup = Integer.MAX_VALUE;
        }
    }

    public void resetSolverVariables(Cache cache) {
        this.mLeft.resetSolverVariable(cache);
        this.mTop.resetSolverVariable(cache);
        this.mRight.resetSolverVariable(cache);
        this.mBottom.resetSolverVariable(cache);
        this.mBaseline.resetSolverVariable(cache);
        this.mCenter.resetSolverVariable(cache);
        this.mCenterX.resetSolverVariable(cache);
        this.mCenterY.resetSolverVariable(cache);
    }

    public void setBaselineDistance(int i) {
        this.mBaselineDistance = i;
    }

    public void setCompanionWidget(Object obj) {
        this.mCompanionWidget = obj;
    }

    public void setContainerItemSkip(int i) {
        if (i >= 0) {
            this.mContainerItemSkip = i;
        } else {
            this.mContainerItemSkip = 0;
        }
    }

    public void setDebugName(String str) {
        this.mDebugName = str;
    }

    public void setDebugSolverName(LinearSystem linearSystem, String str) {
        this.mDebugName = str;
        SolverVariable solverVariableCreateObjectVariable = linearSystem.createObjectVariable(this.mLeft);
        SolverVariable solverVariableCreateObjectVariable2 = linearSystem.createObjectVariable(this.mTop);
        SolverVariable solverVariableCreateObjectVariable3 = linearSystem.createObjectVariable(this.mRight);
        SolverVariable solverVariableCreateObjectVariable4 = linearSystem.createObjectVariable(this.mBottom);
        solverVariableCreateObjectVariable.setName(str + ".left");
        solverVariableCreateObjectVariable2.setName(str + ".top");
        solverVariableCreateObjectVariable3.setName(str + ".right");
        solverVariableCreateObjectVariable4.setName(str + ".bottom");
        if (this.mBaselineDistance > 0) {
            linearSystem.createObjectVariable(this.mBaseline).setName(str + ".baseline");
        }
    }

    public void setDimension(int i, int i2) {
        this.mWidth = i;
        if (this.mWidth < this.mMinWidth) {
            this.mWidth = this.mMinWidth;
        }
        this.mHeight = i2;
        if (this.mHeight < this.mMinHeight) {
            this.mHeight = this.mMinHeight;
        }
    }

    public void setDimensionRatio(float f, int i) {
        this.mDimensionRatio = f;
        this.mDimensionRatioSide = i;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x0084 A[PHI: r0
      0x0084: PHI (r0v2 int) = (r0v1 int), (r0v0 int), (r0v0 int), (r0v0 int), (r0v0 int), (r0v0 int) binds: [B:45:0x0084, B:35:0x007d, B:23:0x004f, B:25:0x0055, B:27:0x0061, B:29:0x0065] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0084 -> B:39:0x0085). Please report as a decompilation issue!!! */
    public void setDimensionRatio(String str) {
        float fAbs;
        int i = 0;
        if (str == null || str.length() == 0) {
            this.mDimensionRatio = 0.0f;
            return;
        }
        int i2 = -1;
        int length = str.length();
        int iIndexOf = str.indexOf(44);
        int i3 = 0;
        if (iIndexOf > 0 && iIndexOf < length - 1) {
            String strSubstring = str.substring(0, iIndexOf);
            if (strSubstring.equalsIgnoreCase("W")) {
                i2 = 0;
            } else if (strSubstring.equalsIgnoreCase("H")) {
                i2 = 1;
            }
            i3 = iIndexOf + 1;
        }
        int iIndexOf2 = str.indexOf(58);
        try {
            if (iIndexOf2 < 0 || iIndexOf2 >= length - 1) {
                String strSubstring2 = str.substring(i3);
                if (strSubstring2.length() > 0) {
                    fAbs = Float.parseFloat(strSubstring2);
                } else {
                    fAbs = i;
                }
            } else {
                String strSubstring3 = str.substring(i3, iIndexOf2);
                String strSubstring4 = str.substring(iIndexOf2 + 1);
                if (strSubstring3.length() <= 0 || strSubstring4.length() <= 0) {
                    fAbs = i;
                } else {
                    float f = Float.parseFloat(strSubstring3);
                    float f2 = Float.parseFloat(strSubstring4);
                    if (f <= 0.0f || f2 <= 0.0f) {
                        fAbs = i;
                    } else {
                        fAbs = i2 == 1 ? Math.abs(f2 / f) : Math.abs(f / f2);
                    }
                }
            }
        } catch (NumberFormatException unused) {
        }
        i = (fAbs > i ? 1 : (fAbs == i ? 0 : -1));
        if (i > 0) {
            this.mDimensionRatio = fAbs;
            this.mDimensionRatioSide = i2;
        }
    }

    public void setDrawHeight(int i) {
        this.mDrawHeight = i;
    }

    public void setDrawOrigin(int i, int i2) {
        this.mDrawX = i - this.mOffsetX;
        this.mDrawY = i2 - this.mOffsetY;
        this.mX = this.mDrawX;
        this.mY = this.mDrawY;
    }

    public void setDrawWidth(int i) {
        this.mDrawWidth = i;
    }

    public void setDrawX(int i) {
        this.mDrawX = i - this.mOffsetX;
        this.mX = this.mDrawX;
    }

    public void setDrawY(int i) {
        this.mDrawY = i - this.mOffsetY;
        this.mY = this.mDrawY;
    }

    public void setFrame(int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int i6 = i4 - i2;
        this.mX = i;
        this.mY = i2;
        if (this.mVisibility == 8) {
            this.mWidth = 0;
            this.mHeight = 0;
            return;
        }
        if (this.mHorizontalDimensionBehaviour == DimensionBehaviour.FIXED && i5 < this.mWidth) {
            i5 = this.mWidth;
        }
        if (this.mVerticalDimensionBehaviour == DimensionBehaviour.FIXED && i6 < this.mHeight) {
            i6 = this.mHeight;
        }
        this.mWidth = i5;
        this.mHeight = i6;
        if (this.mHeight < this.mMinHeight) {
            this.mHeight = this.mMinHeight;
        }
        if (this.mWidth < this.mMinWidth) {
            this.mWidth = this.mMinWidth;
        }
    }

    public void setGoneMargin(ConstraintAnchor.Type type, int i) {
        switch (type) {
            case LEFT:
                this.mLeft.mGoneMargin = i;
                break;
            case TOP:
                this.mTop.mGoneMargin = i;
                break;
            case RIGHT:
                this.mRight.mGoneMargin = i;
                break;
            case BOTTOM:
                this.mBottom.mGoneMargin = i;
                break;
        }
    }

    public void setHeight(int i) {
        this.mHeight = i;
        if (this.mHeight < this.mMinHeight) {
            this.mHeight = this.mMinHeight;
        }
    }

    public void setHorizontalBiasPercent(float f) {
        this.mHorizontalBiasPercent = f;
    }

    public void setHorizontalChainStyle(int i) {
        this.mHorizontalChainStyle = i;
    }

    public void setHorizontalDimension(int i, int i2) {
        this.mX = i;
        this.mWidth = i2 - i;
        if (this.mWidth < this.mMinWidth) {
            this.mWidth = this.mMinWidth;
        }
    }

    public void setHorizontalDimensionBehaviour(DimensionBehaviour dimensionBehaviour) {
        this.mHorizontalDimensionBehaviour = dimensionBehaviour;
        if (this.mHorizontalDimensionBehaviour == DimensionBehaviour.WRAP_CONTENT) {
            setWidth(this.mWrapWidth);
        }
    }

    public void setHorizontalMatchStyle(int i, int i2, int i3) {
        this.mMatchConstraintDefaultWidth = i;
        this.mMatchConstraintMinWidth = i2;
        this.mMatchConstraintMaxWidth = i3;
    }

    public void setHorizontalWeight(float f) {
        this.mHorizontalWeight = f;
    }

    public void setMinHeight(int i) {
        if (i < 0) {
            this.mMinHeight = 0;
        } else {
            this.mMinHeight = i;
        }
    }

    public void setMinWidth(int i) {
        if (i < 0) {
            this.mMinWidth = 0;
        } else {
            this.mMinWidth = i;
        }
    }

    public void setOffset(int i, int i2) {
        this.mOffsetX = i;
        this.mOffsetY = i2;
    }

    public void setOrigin(int i, int i2) {
        this.mX = i;
        this.mY = i2;
    }

    public void setParent(ConstraintWidget constraintWidget) {
        this.mParent = constraintWidget;
    }

    public void setType(String str) {
        this.mType = str;
    }

    public void setVerticalBiasPercent(float f) {
        this.mVerticalBiasPercent = f;
    }

    public void setVerticalChainStyle(int i) {
        this.mVerticalChainStyle = i;
    }

    public void setVerticalDimension(int i, int i2) {
        this.mY = i;
        this.mHeight = i2 - i;
        if (this.mHeight < this.mMinHeight) {
            this.mHeight = this.mMinHeight;
        }
    }

    public void setVerticalDimensionBehaviour(DimensionBehaviour dimensionBehaviour) {
        this.mVerticalDimensionBehaviour = dimensionBehaviour;
        if (this.mVerticalDimensionBehaviour == DimensionBehaviour.WRAP_CONTENT) {
            setHeight(this.mWrapHeight);
        }
    }

    public void setVerticalMatchStyle(int i, int i2, int i3) {
        this.mMatchConstraintDefaultHeight = i;
        this.mMatchConstraintMinHeight = i2;
        this.mMatchConstraintMaxHeight = i3;
    }

    public void setVerticalWeight(float f) {
        this.mVerticalWeight = f;
    }

    public void setVisibility(int i) {
        this.mVisibility = i;
    }

    public void setWidth(int i) {
        this.mWidth = i;
        if (this.mWidth < this.mMinWidth) {
            this.mWidth = this.mMinWidth;
        }
    }

    public void setWrapHeight(int i) {
        this.mWrapHeight = i;
    }

    public void setWrapWidth(int i) {
        this.mWrapWidth = i;
    }

    public void setX(int i) {
        this.mX = i;
    }

    public void setY(int i) {
        this.mY = i;
    }

    public String toString() {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder();
        if (this.mType != null) {
            str = "type: " + this.mType + " ";
        } else {
            str = "";
        }
        sb.append(str);
        if (this.mDebugName != null) {
            str2 = "id: " + this.mDebugName + " ";
        } else {
            str2 = "";
        }
        sb.append(str2);
        sb.append("(");
        sb.append(this.mX);
        sb.append(", ");
        sb.append(this.mY);
        sb.append(") - (");
        sb.append(this.mWidth);
        sb.append(" x ");
        sb.append(this.mHeight);
        sb.append(")");
        sb.append(" wrap: (");
        sb.append(this.mWrapWidth);
        sb.append(" x ");
        sb.append(this.mWrapHeight);
        sb.append(")");
        return sb.toString();
    }

    public void updateDrawPosition() {
        int i = this.mX;
        int i2 = this.mY;
        int i3 = this.mX + this.mWidth;
        int i4 = this.mY + this.mHeight;
        this.mDrawX = i;
        this.mDrawY = i2;
        this.mDrawWidth = i3 - i;
        this.mDrawHeight = i4 - i2;
    }

    public void updateFromSolver(LinearSystem linearSystem) {
        updateFromSolver(linearSystem, Integer.MAX_VALUE);
    }

    public void updateFromSolver(LinearSystem linearSystem, int i) {
        if (i == Integer.MAX_VALUE) {
            setFrame(linearSystem.getObjectVariableValue(this.mLeft), linearSystem.getObjectVariableValue(this.mTop), linearSystem.getObjectVariableValue(this.mRight), linearSystem.getObjectVariableValue(this.mBottom));
            return;
        }
        if (i == -2) {
            setFrame(this.mSolverLeft, this.mSolverTop, this.mSolverRight, this.mSolverBottom);
            return;
        }
        if (this.mLeft.mGroup == i) {
            this.mSolverLeft = linearSystem.getObjectVariableValue(this.mLeft);
        }
        if (this.mTop.mGroup == i) {
            this.mSolverTop = linearSystem.getObjectVariableValue(this.mTop);
        }
        if (this.mRight.mGroup == i) {
            this.mSolverRight = linearSystem.getObjectVariableValue(this.mRight);
        }
        if (this.mBottom.mGroup == i) {
            this.mSolverBottom = linearSystem.getObjectVariableValue(this.mBottom);
        }
    }
}
