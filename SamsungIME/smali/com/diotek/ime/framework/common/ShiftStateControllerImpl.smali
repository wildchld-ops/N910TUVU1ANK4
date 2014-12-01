.class public final Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;
.super Ljava/lang/Object;
.source "ShiftStateControllerImpl.java"

# interfaces
.implements Lcom/diotek/ime/framework/common/ShiftStateController;


# static fields
.field private static final CAPS_LOCK_STATE:I = 0x0

.field private static final NON_SHIFT_STATE:I = 0x2

.field private static final SHIFTED_STATE:I = 0x1

.field private static final SHIFT_PRESSED_STATE:I = 0x3

.field private static mInstance:Lcom/diotek/ime/framework/common/ShiftStateController;


# instance fields
.field private mBackupCapsLock:Z

.field private mCapsLocked:Z

.field private mCurrentPolicy:I

.field private mForcedCapslock:Z

.field private mInputLanguage:I

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

.field private mIsAutoCapsState:Z

.field private mIsNextShiftState:Z

.field private mIsSymbolMode:Z

.field private mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private mShiftHoldOn:Z

.field private mShiftKeyCode:I

.field private mShiftMomentary:Z

.field private mShiftPressed:Z

.field private mShifted:Z

.field private mSplitTap:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInstance:Lcom/diotek/ime/framework/common/ShiftStateController;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-object v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iput v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCurrentPolicy:I

    const/16 v0, -0xff

    iput v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftKeyCode:I

    iput-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftPressed:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftMomentary:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShifted:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mBackupCapsLock:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mForcedCapslock:Z

    const/high16 v0, 0x656e0000

    iput v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputLanguage:I

    iput-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftHoldOn:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mIsNextShiftState:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mSplitTap:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mIsAutoCapsState:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mIsSymbolMode:Z

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iget-object v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    return-void
.end method

.method public static getInstance()Lcom/diotek/ime/framework/common/ShiftStateController;
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInstance:Lcom/diotek/ime/framework/common/ShiftStateController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;

    invoke-direct {v0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInstance:Lcom/diotek/ime/framework/common/ShiftStateController;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInstance:Lcom/diotek/ime/framework/common/ShiftStateController;

    return-object v0
.end method

.method private getNextShiftState()I
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mIsAutoCapsState:Z

    iget-boolean v7, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftPressed:Z

    if-eqz v7, :cond_0

    const/4 v5, 0x3

    :goto_0
    return v5

    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->isNextShiftState()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    iget-object v7, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget v7, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v8, 0xfff000

    and-int v2, v7, v8

    :cond_1
    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    iget-object v7, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SETTINGS_DEFAULT_AUTO_CAPS"

    invoke-interface {v7, v8, v6}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v7

    const/high16 v8, 0x6b6f0000

    if-eq v7, v8, :cond_2

    iget v7, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-interface {v3, v7}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v0

    :cond_2
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getShiftPolicy()I

    move-result v7

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    if-nez v7, :cond_3

    const/16 v7, 0x1000

    if-ne v2, v7, :cond_4

    :cond_3
    move v5, v6

    goto :goto_0

    :cond_4
    iput-boolean v6, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mIsSymbolMode:Z

    iput-boolean v5, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mIsAutoCapsState:Z

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->setNextShiftState(Z)V

    iget-boolean v5, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    if-eqz v5, :cond_6

    move v5, v6

    goto :goto_0

    :cond_6
    const/4 v5, 0x2

    goto :goto_0
.end method

.method private getPolicyWithLanguage(I)I
    .locals 5

    const/high16 v4, 0x74680000

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "TABLET_MODE"

    invoke-interface {v2, v3, v1}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->isNoUpperCaseLanguage(I)Z

    move-result v2

    if-eqz v2, :cond_2

    if-ne p1, v4, :cond_0

    if-nez v0, :cond_2

    :cond_0
    const/4 v1, 0x2

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/high16 v2, 0x6b6f0000

    if-eq p1, v2, :cond_3

    const/high16 v2, 0x6b610000

    if-eq p1, v2, :cond_3

    const/high16 v2, 0x61720000

    if-eq p1, v2, :cond_3

    const/high16 v2, 0x66610000

    if-eq p1, v2, :cond_3

    const/high16 v2, 0x75720000

    if-eq p1, v2, :cond_3

    const v2, 0x7a68434e

    if-eq p1, v2, :cond_3

    const v2, 0x7a68484b

    if-eq p1, v2, :cond_3

    const v2, 0x7a685457

    if-eq p1, v2, :cond_3

    if-eq p1, v4, :cond_3

    const/high16 v2, 0x6b6d0000

    if-eq p1, v2, :cond_3

    const/high16 v2, 0x6c6f0000

    if-ne p1, v2, :cond_1

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private initShiftState()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->setShiftState(Z)V

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->setShiftPressedState(Z)V

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->setShiftMomentaryState(Z)V

    return-void
.end method

.method private isNoUpperCaseLanguage(I)Z
    .locals 7

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v3

    move-object v0, v3

    array-length v4, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v6

    if-ne v6, p1, :cond_1

    invoke-virtual {v2}, Lcom/diotek/ime/framework/common/Language;->hasShift()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v5, 0x1

    :cond_0
    return v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public backupCapsLock()V
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mBackupCapsLock:Z

    return-void
.end method

.method public checkIfAutoCapsState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mIsAutoCapsState:Z

    return v0
.end method

.method public getCapsLockState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    return v0
.end method

.method public getLetterMode()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->isForcedCapsLockForGreek()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    iget-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftPressed:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mSplitTap:Z

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShifted:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftPressed:Z

    if-eqz v1, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getPressedShiftKeyCode()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftKeyCode:I

    return v0
.end method

.method public getShiftHoldOnState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftHoldOn:Z

    return v0
.end method

.method public getShiftMomentaryState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftMomentary:Z

    return v0
.end method

.method public getShiftPolicy()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCurrentPolicy:I

    return v0
.end method

.method public getShiftPressedState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftPressed:Z

    return v0
.end method

.method public getShiftState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShifted:Z

    return v0
.end method

.method public getSplitTapState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mSplitTap:Z

    return v0
.end method

.method public getSymbolMode()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mIsSymbolMode:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getCapsLockState()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getLetterMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftPressed:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getCapsLockState()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getCapsLockState()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getLetterMode()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mIsAutoCapsState:Z

    if-nez v1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getLetterMode()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initBackupCapsLock()V
    .locals 1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getShiftPolicy()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mBackupCapsLock:Z

    :cond_0
    return-void
.end method

.method public isForcedCapsLockForGreek()Z
    .locals 2

    iget-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mForcedCapslock:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputLanguage:I

    const/high16 v1, 0x656c0000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNextShiftState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mIsNextShiftState:Z

    return v0
.end method

.method public isUpdateLetterMode()Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->isForcedCapsLockForGreek()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getShiftPolicy()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getNextShiftState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_0
    iget-boolean v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :pswitch_1
    iget-boolean v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShifted:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :pswitch_2
    iget-boolean v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShifted:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftPressed:Z

    if-nez v2, :cond_2

    goto :goto_0

    :pswitch_3
    iget-boolean v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftPressed:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public restoreCapslock()V
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mBackupCapsLock:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    return-void
.end method

.method public setAutoCapsState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mIsAutoCapsState:Z

    return-void
.end method

.method public setCapsLockState(Z)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->isForcedCapsLockForGreek()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShifted:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftPressed:Z

    iput-boolean p1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public setForcedCapslock(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mForcedCapslock:Z

    return-void
.end method

.method public setHWCapsLockLed(Z)V
    .locals 0

    return-void
.end method

.method public setNextShiftState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mIsNextShiftState:Z

    return-void
.end method

.method public setPolicyWithLanguage(I)Z
    .locals 3

    iput p1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputLanguage:I

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getPolicyWithLanguage(I)I

    move-result v1

    iget v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCurrentPolicy:I

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iput v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCurrentPolicy:I

    :cond_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->initShiftState()V

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPressedShiftKeyCode(I)V
    .locals 0

    iput p1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftKeyCode:I

    return-void
.end method

.method public setShiftHoldOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftHoldOn:Z

    return-void
.end method

.method public setShiftMomentaryState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftMomentary:Z

    return-void
.end method

.method public setShiftPressedState(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->isForcedCapsLockForGreek()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mIsSymbolMode:Z

    iput-boolean p1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftPressed:Z

    goto :goto_0
.end method

.method public setShiftState(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShifted:Z

    iget-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShifted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public setSplitTapState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mSplitTap:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShiftState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getShiftState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShiftPressedState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getShiftPressedState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShiftMomentaryState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getShiftMomentaryState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PressedShiftKeyCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getPressedShiftKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CapsLockState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getCapsLockState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShiftHoldOn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getShiftHoldOnState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SplitTapState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getSplitTapState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toggleShiftState()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mIsSymbolMode:Z

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->isForcedCapsLockForGreek()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getShiftPolicy()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->initBackupCapsLock()V

    iget-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShifted:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftPressed:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    :goto_1
    iget-object v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShifted:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getShiftPolicy()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getSplitTapState()Z

    move-result v0

    if-nez v0, :cond_3

    iput-boolean v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShifted:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftPressed:Z

    iput-boolean v3, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShifted:Z

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShifted:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftPressed:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShifted:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftPressed:Z

    iput-boolean v3, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    goto :goto_1

    :cond_5
    iput-boolean v3, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShifted:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftPressed:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v3, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    :goto_2
    iput-boolean v3, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mIsSymbolMode:Z

    goto :goto_1

    :cond_6
    iput-boolean v2, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    goto :goto_2
.end method

.method public updateLetterMode()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mIsSymbolMode:Z

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->isForcedCapsLockForGreek()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getShiftPolicy()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getNextShiftState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->initBackupCapsLock()V

    move v1, v2

    goto :goto_0

    :pswitch_0
    iget-boolean v3, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->setCapsLockState(Z)V

    goto :goto_1

    :pswitch_1
    iget-object v3, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v2}, Lcom/diotek/ime/framework/common/InputManager;->sendSideSyncShiftState(Z)V

    iget-boolean v3, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShifted:Z

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->setShiftState(Z)V

    goto :goto_1

    :pswitch_2
    iget-object v3, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v1}, Lcom/diotek/ime/framework/common/InputManager;->sendSideSyncShiftState(Z)V

    iget-boolean v3, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShifted:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftPressed:Z

    if-eqz v3, :cond_0

    :cond_3
    iget-boolean v3, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mCapsLocked:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->setCapsLockState(Z)V

    :cond_4
    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->setShiftState(Z)V

    goto :goto_1

    :pswitch_3
    iget-boolean v3, p0, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->mShiftPressed:Z

    if-eqz v3, :cond_2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
