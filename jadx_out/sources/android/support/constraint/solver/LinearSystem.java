package android.support.constraint.solver;

import android.support.constraint.solver.widgets.ConstraintAnchor;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class LinearSystem {
    private static final boolean DEBUG = false;
    private static int POOL_SIZE = 1000;
    final Cache mCache;
    private ArrayRow[] mRows;
    int mVariablesID = 0;
    private HashMap<String, SolverVariable> mVariables = null;
    private Goal mGoal = new Goal();
    private int TABLE_SIZE = 32;
    private int mMaxColumns = this.TABLE_SIZE;
    private boolean[] mAlreadyTestedCandidates = new boolean[this.TABLE_SIZE];
    int mNumColumns = 1;
    private int mNumRows = 0;
    private int mMaxRows = this.TABLE_SIZE;
    private SolverVariable[] mPoolVariables = new SolverVariable[POOL_SIZE];
    private int mPoolVariablesCount = 0;
    private ArrayRow[] tempClientsCopy = new ArrayRow[this.TABLE_SIZE];

    public LinearSystem() {
        this.mRows = null;
        this.mRows = new ArrayRow[this.TABLE_SIZE];
        releaseRows();
        this.mCache = new Cache();
    }

    private SolverVariable acquireSolverVariable(SolverVariable.Type type) {
        SolverVariable solverVariableAcquire = this.mCache.solverVariablePool.acquire();
        if (solverVariableAcquire == null) {
            solverVariableAcquire = new SolverVariable(type);
        } else {
            solverVariableAcquire.reset();
            solverVariableAcquire.setType(type);
        }
        if (this.mPoolVariablesCount >= POOL_SIZE) {
            POOL_SIZE *= 2;
            this.mPoolVariables = (SolverVariable[]) Arrays.copyOf(this.mPoolVariables, POOL_SIZE);
        }
        SolverVariable[] solverVariableArr = this.mPoolVariables;
        int i = this.mPoolVariablesCount;
        this.mPoolVariablesCount = i + 1;
        solverVariableArr[i] = solverVariableAcquire;
        return solverVariableAcquire;
    }

    private void addError(ArrayRow arrayRow) {
        arrayRow.addError(createErrorVariable(), createErrorVariable());
    }

    private void addSingleError(ArrayRow arrayRow, int i) {
        arrayRow.addSingleError(createErrorVariable(), i);
    }

    private void computeValues() {
        for (int i = 0; i < this.mNumRows; i++) {
            ArrayRow arrayRow = this.mRows[i];
            arrayRow.variable.computedValue = arrayRow.constantValue;
        }
    }

    public static ArrayRow createRowCentering(LinearSystem linearSystem, SolverVariable solverVariable, SolverVariable solverVariable2, int i, float f, SolverVariable solverVariable3, SolverVariable solverVariable4, int i2, boolean z) {
        ArrayRow arrayRowCreateRow = linearSystem.createRow();
        arrayRowCreateRow.createRowCentering(solverVariable, solverVariable2, i, f, solverVariable3, solverVariable4, i2);
        if (z) {
            SolverVariable solverVariableCreateErrorVariable = linearSystem.createErrorVariable();
            SolverVariable solverVariableCreateErrorVariable2 = linearSystem.createErrorVariable();
            solverVariableCreateErrorVariable.strength = 4;
            solverVariableCreateErrorVariable2.strength = 4;
            arrayRowCreateRow.addError(solverVariableCreateErrorVariable, solverVariableCreateErrorVariable2);
        }
        return arrayRowCreateRow;
    }

    public static ArrayRow createRowDimensionPercent(LinearSystem linearSystem, SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, float f, boolean z) {
        ArrayRow arrayRowCreateRow = linearSystem.createRow();
        if (z) {
            linearSystem.addError(arrayRowCreateRow);
        }
        return arrayRowCreateRow.createRowDimensionPercent(solverVariable, solverVariable2, solverVariable3, f);
    }

    public static ArrayRow createRowEquals(LinearSystem linearSystem, SolverVariable solverVariable, SolverVariable solverVariable2, int i, boolean z) {
        ArrayRow arrayRowCreateRow = linearSystem.createRow();
        arrayRowCreateRow.createRowEquals(solverVariable, solverVariable2, i);
        if (z) {
            linearSystem.addSingleError(arrayRowCreateRow, 1);
        }
        return arrayRowCreateRow;
    }

    public static ArrayRow createRowGreaterThan(LinearSystem linearSystem, SolverVariable solverVariable, SolverVariable solverVariable2, int i, boolean z) {
        SolverVariable solverVariableCreateSlackVariable = linearSystem.createSlackVariable();
        ArrayRow arrayRowCreateRow = linearSystem.createRow();
        arrayRowCreateRow.createRowGreaterThan(solverVariable, solverVariable2, solverVariableCreateSlackVariable, i);
        if (z) {
            linearSystem.addSingleError(arrayRowCreateRow, (int) (arrayRowCreateRow.variables.get(solverVariableCreateSlackVariable) * (-1.0f)));
        }
        return arrayRowCreateRow;
    }

    public static ArrayRow createRowLowerThan(LinearSystem linearSystem, SolverVariable solverVariable, SolverVariable solverVariable2, int i, boolean z) {
        SolverVariable solverVariableCreateSlackVariable = linearSystem.createSlackVariable();
        ArrayRow arrayRowCreateRow = linearSystem.createRow();
        arrayRowCreateRow.createRowLowerThan(solverVariable, solverVariable2, solverVariableCreateSlackVariable, i);
        if (z) {
            linearSystem.addSingleError(arrayRowCreateRow, (int) (arrayRowCreateRow.variables.get(solverVariableCreateSlackVariable) * (-1.0f)));
        }
        return arrayRowCreateRow;
    }

    private SolverVariable createVariable(String str, SolverVariable.Type type) {
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        SolverVariable solverVariableAcquireSolverVariable = acquireSolverVariable(type);
        solverVariableAcquireSolverVariable.setName(str);
        this.mVariablesID++;
        this.mNumColumns++;
        solverVariableAcquireSolverVariable.id = this.mVariablesID;
        if (this.mVariables == null) {
            this.mVariables = new HashMap<>();
        }
        this.mVariables.put(str, solverVariableAcquireSolverVariable);
        this.mCache.mIndexedVariables[this.mVariablesID] = solverVariableAcquireSolverVariable;
        return solverVariableAcquireSolverVariable;
    }

    private void displayRows() {
        displaySolverVariables();
        String str = "";
        for (int i = 0; i < this.mNumRows; i++) {
            str = (str + this.mRows[i]) + "\n";
        }
        if (this.mGoal.variables.size() != 0) {
            str = str + this.mGoal + "\n";
        }
        System.out.println(str);
    }

    private void displaySolverVariables() {
        String str = "Display Rows (" + this.mNumRows + "x" + this.mNumColumns + ") :\n\t | C | ";
        for (int i = 1; i <= this.mNumColumns; i++) {
            str = (str + this.mCache.mIndexedVariables[i]) + " | ";
        }
        System.out.println(str + "\n");
    }

    private int enforceBFS(Goal goal) throws Exception {
        boolean z;
        int i;
        int i2 = 0;
        while (true) {
            if (i2 >= this.mNumRows) {
                z = false;
                break;
            }
            if (this.mRows[i2].variable.mType != SolverVariable.Type.UNRESTRICTED && this.mRows[i2].constantValue < 0.0f) {
                z = true;
                break;
            }
            i2++;
        }
        if (z) {
            boolean z2 = false;
            i = 0;
            while (!z2) {
                i++;
                float f = Float.MAX_VALUE;
                int i3 = -1;
                int i4 = -1;
                int i5 = 0;
                for (int i6 = 0; i6 < this.mNumRows; i6++) {
                    ArrayRow arrayRow = this.mRows[i6];
                    if (arrayRow.variable.mType != SolverVariable.Type.UNRESTRICTED && arrayRow.constantValue < 0.0f) {
                        int i7 = i5;
                        float f2 = f;
                        int i8 = i4;
                        int i9 = i3;
                        for (int i10 = 1; i10 < this.mNumColumns; i10++) {
                            SolverVariable solverVariable = this.mCache.mIndexedVariables[i10];
                            float f3 = arrayRow.variables.get(solverVariable);
                            if (f3 > 0.0f) {
                                int i11 = i7;
                                float f4 = f2;
                                int i12 = i8;
                                int i13 = i9;
                                for (int i14 = 0; i14 < 6; i14++) {
                                    float f5 = solverVariable.strengthVector[i14] / f3;
                                    if ((f5 < f4 && i14 == i11) || i14 > i11) {
                                        f4 = f5;
                                        i13 = i6;
                                        i12 = i10;
                                        i11 = i14;
                                    }
                                }
                                i9 = i13;
                                i8 = i12;
                                f2 = f4;
                                i7 = i11;
                            }
                        }
                        i3 = i9;
                        i4 = i8;
                        f = f2;
                        i5 = i7;
                    }
                }
                if (i3 != -1) {
                    ArrayRow arrayRow2 = this.mRows[i3];
                    arrayRow2.variable.definitionId = -1;
                    arrayRow2.pivot(this.mCache.mIndexedVariables[i4]);
                    arrayRow2.variable.definitionId = i3;
                    for (int i15 = 0; i15 < this.mNumRows; i15++) {
                        this.mRows[i15].updateRowWithEquation(arrayRow2);
                    }
                    goal.updateFromSystem(this);
                } else {
                    z2 = true;
                }
            }
        } else {
            i = 0;
        }
        for (int i16 = 0; i16 < this.mNumRows && (this.mRows[i16].variable.mType == SolverVariable.Type.UNRESTRICTED || this.mRows[i16].constantValue >= 0.0f); i16++) {
        }
        return i;
    }

    private String getDisplaySize(int i) {
        int i2 = i * 4;
        int i3 = i2 / 1024;
        int i4 = i3 / 1024;
        if (i4 > 0) {
            return "" + i4 + " Mb";
        }
        if (i3 > 0) {
            return "" + i3 + " Kb";
        }
        return "" + i2 + " bytes";
    }

    private void increaseTableSize() {
        this.TABLE_SIZE *= 2;
        this.mRows = (ArrayRow[]) Arrays.copyOf(this.mRows, this.TABLE_SIZE);
        this.mCache.mIndexedVariables = (SolverVariable[]) Arrays.copyOf(this.mCache.mIndexedVariables, this.TABLE_SIZE);
        this.mAlreadyTestedCandidates = new boolean[this.TABLE_SIZE];
        this.mMaxColumns = this.TABLE_SIZE;
        this.mMaxRows = this.TABLE_SIZE;
        this.mGoal.variables.clear();
    }

    private int optimize(Goal goal) {
        for (int i = 0; i < this.mNumColumns; i++) {
            this.mAlreadyTestedCandidates[i] = false;
        }
        boolean z = false;
        int i2 = 0;
        int i3 = 0;
        while (!z) {
            i2++;
            SolverVariable pivotCandidate = goal.getPivotCandidate();
            if (pivotCandidate != null) {
                if (this.mAlreadyTestedCandidates[pivotCandidate.id]) {
                    pivotCandidate = null;
                } else {
                    this.mAlreadyTestedCandidates[pivotCandidate.id] = true;
                    i3++;
                    if (i3 >= this.mNumColumns) {
                        z = true;
                    }
                }
            }
            if (pivotCandidate != null) {
                float f = Float.MAX_VALUE;
                int i4 = -1;
                for (int i5 = 0; i5 < this.mNumRows; i5++) {
                    ArrayRow arrayRow = this.mRows[i5];
                    if (arrayRow.variable.mType != SolverVariable.Type.UNRESTRICTED && arrayRow.hasVariable(pivotCandidate)) {
                        float f2 = arrayRow.variables.get(pivotCandidate);
                        if (f2 < 0.0f) {
                            float f3 = (-arrayRow.constantValue) / f2;
                            if (f3 < f) {
                                i4 = i5;
                                f = f3;
                            }
                        }
                    }
                }
                if (i4 > -1) {
                    ArrayRow arrayRow2 = this.mRows[i4];
                    arrayRow2.variable.definitionId = -1;
                    arrayRow2.pivot(pivotCandidate);
                    arrayRow2.variable.definitionId = i4;
                    for (int i6 = 0; i6 < this.mNumRows; i6++) {
                        this.mRows[i6].updateRowWithEquation(arrayRow2);
                    }
                    goal.updateFromSystem(this);
                    try {
                        enforceBFS(goal);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
            z = true;
        }
        return i2;
    }

    private void releaseRows() {
        for (int i = 0; i < this.mRows.length; i++) {
            ArrayRow arrayRow = this.mRows[i];
            if (arrayRow != null) {
                this.mCache.arrayRowPool.release(arrayRow);
            }
            this.mRows[i] = null;
        }
    }

    private void updateRowFromVariables(ArrayRow arrayRow) {
        if (this.mNumRows > 0) {
            arrayRow.variables.updateFromSystem(arrayRow, this.mRows);
            if (arrayRow.variables.currentSize == 0) {
                arrayRow.isSimpleDefinition = true;
            }
        }
    }

    public void addCentering(SolverVariable solverVariable, SolverVariable solverVariable2, int i, float f, SolverVariable solverVariable3, SolverVariable solverVariable4, int i2, int i3) {
        ArrayRow arrayRowCreateRow = createRow();
        arrayRowCreateRow.createRowCentering(solverVariable, solverVariable2, i, f, solverVariable3, solverVariable4, i2);
        SolverVariable solverVariableCreateErrorVariable = createErrorVariable();
        SolverVariable solverVariableCreateErrorVariable2 = createErrorVariable();
        solverVariableCreateErrorVariable.strength = i3;
        solverVariableCreateErrorVariable2.strength = i3;
        arrayRowCreateRow.addError(solverVariableCreateErrorVariable, solverVariableCreateErrorVariable2);
        addConstraint(arrayRowCreateRow);
    }

    public void addConstraint(ArrayRow arrayRow) {
        if (arrayRow == null) {
            return;
        }
        if (this.mNumRows + 1 >= this.mMaxRows || this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        if (!arrayRow.isSimpleDefinition) {
            updateRowFromVariables(arrayRow);
            arrayRow.ensurePositiveConstant();
            arrayRow.pickRowVariable();
            if (!arrayRow.hasKeyVariable()) {
                return;
            }
        }
        if (this.mRows[this.mNumRows] != null) {
            this.mCache.arrayRowPool.release(this.mRows[this.mNumRows]);
        }
        if (!arrayRow.isSimpleDefinition) {
            arrayRow.updateClientEquations();
        }
        this.mRows[this.mNumRows] = arrayRow;
        arrayRow.variable.definitionId = this.mNumRows;
        this.mNumRows++;
        int i = arrayRow.variable.mClientEquationsCount;
        if (i > 0) {
            while (this.tempClientsCopy.length < i) {
                this.tempClientsCopy = new ArrayRow[this.tempClientsCopy.length * 2];
            }
            ArrayRow[] arrayRowArr = this.tempClientsCopy;
            for (int i2 = 0; i2 < i; i2++) {
                arrayRowArr[i2] = arrayRow.variable.mClientEquations[i2];
            }
            for (int i3 = 0; i3 < i; i3++) {
                ArrayRow arrayRow2 = arrayRowArr[i3];
                if (arrayRow2 != arrayRow) {
                    arrayRow2.variables.updateFromRow(arrayRow2, arrayRow);
                    arrayRow2.updateClientEquations();
                }
            }
        }
    }

    public ArrayRow addEquality(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        ArrayRow arrayRowCreateRow = createRow();
        arrayRowCreateRow.createRowEquals(solverVariable, solverVariable2, i);
        SolverVariable solverVariableCreateErrorVariable = createErrorVariable();
        SolverVariable solverVariableCreateErrorVariable2 = createErrorVariable();
        solverVariableCreateErrorVariable.strength = i2;
        solverVariableCreateErrorVariable2.strength = i2;
        arrayRowCreateRow.addError(solverVariableCreateErrorVariable, solverVariableCreateErrorVariable2);
        addConstraint(arrayRowCreateRow);
        return arrayRowCreateRow;
    }

    public void addEquality(SolverVariable solverVariable, int i) {
        int i2 = solverVariable.definitionId;
        if (solverVariable.definitionId == -1) {
            ArrayRow arrayRowCreateRow = createRow();
            arrayRowCreateRow.createRowDefinition(solverVariable, i);
            addConstraint(arrayRowCreateRow);
            return;
        }
        ArrayRow arrayRow = this.mRows[i2];
        if (arrayRow.isSimpleDefinition) {
            arrayRow.constantValue = i;
            return;
        }
        ArrayRow arrayRowCreateRow2 = createRow();
        arrayRowCreateRow2.createRowEquals(solverVariable, i);
        addConstraint(arrayRowCreateRow2);
    }

    public void addGreaterThan(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        ArrayRow arrayRowCreateRow = createRow();
        SolverVariable solverVariableCreateSlackVariable = createSlackVariable();
        solverVariableCreateSlackVariable.strength = i2;
        arrayRowCreateRow.createRowGreaterThan(solverVariable, solverVariable2, solverVariableCreateSlackVariable, i);
        addConstraint(arrayRowCreateRow);
    }

    public void addLowerThan(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        ArrayRow arrayRowCreateRow = createRow();
        SolverVariable solverVariableCreateSlackVariable = createSlackVariable();
        solverVariableCreateSlackVariable.strength = i2;
        arrayRowCreateRow.createRowLowerThan(solverVariable, solverVariable2, solverVariableCreateSlackVariable, i);
        addConstraint(arrayRowCreateRow);
    }

    public SolverVariable createErrorVariable() {
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        SolverVariable solverVariableAcquireSolverVariable = acquireSolverVariable(SolverVariable.Type.ERROR);
        this.mVariablesID++;
        this.mNumColumns++;
        solverVariableAcquireSolverVariable.id = this.mVariablesID;
        this.mCache.mIndexedVariables[this.mVariablesID] = solverVariableAcquireSolverVariable;
        return solverVariableAcquireSolverVariable;
    }

    public SolverVariable createObjectVariable(Object obj) {
        SolverVariable solverVariable = null;
        if (obj == null) {
            return null;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        if (obj instanceof ConstraintAnchor) {
            ConstraintAnchor constraintAnchor = (ConstraintAnchor) obj;
            solverVariable = constraintAnchor.getSolverVariable();
            if (solverVariable == null) {
                constraintAnchor.resetSolverVariable(this.mCache);
                solverVariable = constraintAnchor.getSolverVariable();
            }
            if (solverVariable.id == -1 || solverVariable.id > this.mVariablesID || this.mCache.mIndexedVariables[solverVariable.id] == null) {
                if (solverVariable.id != -1) {
                    solverVariable.reset();
                }
                this.mVariablesID++;
                this.mNumColumns++;
                solverVariable.id = this.mVariablesID;
                solverVariable.mType = SolverVariable.Type.UNRESTRICTED;
                this.mCache.mIndexedVariables[this.mVariablesID] = solverVariable;
            }
        }
        return solverVariable;
    }

    public ArrayRow createRow() {
        ArrayRow arrayRowAcquire = this.mCache.arrayRowPool.acquire();
        if (arrayRowAcquire == null) {
            return new ArrayRow(this.mCache);
        }
        arrayRowAcquire.reset();
        return arrayRowAcquire;
    }

    public SolverVariable createSlackVariable() {
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        SolverVariable solverVariableAcquireSolverVariable = acquireSolverVariable(SolverVariable.Type.SLACK);
        this.mVariablesID++;
        this.mNumColumns++;
        solverVariableAcquireSolverVariable.id = this.mVariablesID;
        this.mCache.mIndexedVariables[this.mVariablesID] = solverVariableAcquireSolverVariable;
        return solverVariableAcquireSolverVariable;
    }

    void displayReadableRows() {
        displaySolverVariables();
        String str = "";
        for (int i = 0; i < this.mNumRows; i++) {
            str = (str + this.mRows[i].toReadableString()) + "\n";
        }
        if (this.mGoal != null) {
            str = str + this.mGoal + "\n";
        }
        System.out.println(str);
    }

    void displaySystemInformations() {
        int iSizeInBytes = 0;
        for (int i = 0; i < this.TABLE_SIZE; i++) {
            if (this.mRows[i] != null) {
                iSizeInBytes += this.mRows[i].sizeInBytes();
            }
        }
        int iSizeInBytes2 = 0;
        for (int i2 = 0; i2 < this.mNumRows; i2++) {
            if (this.mRows[i2] != null) {
                iSizeInBytes2 += this.mRows[i2].sizeInBytes();
            }
        }
        System.out.println("Linear System -> Table size: " + this.TABLE_SIZE + " (" + getDisplaySize(this.TABLE_SIZE * this.TABLE_SIZE) + ") -- row sizes: " + getDisplaySize(iSizeInBytes) + ", actual size: " + getDisplaySize(iSizeInBytes2) + " rows: " + this.mNumRows + "/" + this.mMaxRows + " cols: " + this.mNumColumns + "/" + this.mMaxColumns + " 0 occupied cells, " + getDisplaySize(0));
    }

    public void displayVariablesReadableRows() {
        displaySolverVariables();
        String str = "";
        for (int i = 0; i < this.mNumRows; i++) {
            if (this.mRows[i].variable.mType == SolverVariable.Type.UNRESTRICTED) {
                str = (str + this.mRows[i].toReadableString()) + "\n";
            }
        }
        if (this.mGoal.variables.size() != 0) {
            str = str + this.mGoal + "\n";
        }
        System.out.println(str);
    }

    public Cache getCache() {
        return this.mCache;
    }

    Goal getGoal() {
        return this.mGoal;
    }

    public int getMemoryUsed() {
        int iSizeInBytes = 0;
        for (int i = 0; i < this.mNumRows; i++) {
            if (this.mRows[i] != null) {
                iSizeInBytes += this.mRows[i].sizeInBytes();
            }
        }
        return iSizeInBytes;
    }

    public int getNumEquations() {
        return this.mNumRows;
    }

    public int getNumVariables() {
        return this.mVariablesID;
    }

    public int getObjectVariableValue(Object obj) {
        SolverVariable solverVariable = ((ConstraintAnchor) obj).getSolverVariable();
        if (solverVariable != null) {
            return (int) (solverVariable.computedValue + 0.5f);
        }
        return 0;
    }

    ArrayRow getRow(int i) {
        return this.mRows[i];
    }

    float getValueFor(String str) {
        SolverVariable variable = getVariable(str, SolverVariable.Type.UNRESTRICTED);
        if (variable == null) {
            return 0.0f;
        }
        return variable.computedValue;
    }

    SolverVariable getVariable(String str, SolverVariable.Type type) {
        if (this.mVariables == null) {
            this.mVariables = new HashMap<>();
        }
        SolverVariable solverVariable = this.mVariables.get(str);
        return solverVariable == null ? createVariable(str, type) : solverVariable;
    }

    public void minimize() throws Exception {
        minimizeGoal(this.mGoal);
    }

    void minimizeGoal(Goal goal) throws Exception {
        goal.updateFromSystem(this);
        enforceBFS(goal);
        optimize(goal);
        computeValues();
    }

    void rebuildGoalFromErrors() {
        this.mGoal.updateFromSystem(this);
    }

    public void reset() {
        for (int i = 0; i < this.mCache.mIndexedVariables.length; i++) {
            SolverVariable solverVariable = this.mCache.mIndexedVariables[i];
            if (solverVariable != null) {
                solverVariable.reset();
            }
        }
        this.mCache.solverVariablePool.releaseAll(this.mPoolVariables, this.mPoolVariablesCount);
        this.mPoolVariablesCount = 0;
        Arrays.fill(this.mCache.mIndexedVariables, (Object) null);
        if (this.mVariables != null) {
            this.mVariables.clear();
        }
        this.mVariablesID = 0;
        this.mGoal.variables.clear();
        this.mNumColumns = 1;
        for (int i2 = 0; i2 < this.mNumRows; i2++) {
            this.mRows[i2].used = false;
        }
        releaseRows();
        this.mNumRows = 0;
    }
}
