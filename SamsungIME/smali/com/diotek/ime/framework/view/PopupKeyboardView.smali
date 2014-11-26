.class public Lcom/diotek/ime/framework/view/PopupKeyboardView;
.super Landroid/view/View;
.source "PopupKeyboardView.java"


# static fields
.field private static mIsRightSide:Z


# instance fields
.field private mCandidateFrame:Landroid/widget/FrameLayout;

.field private mCandidateMovehandlerGap:I

.field private mCandidateShown:Z

.field private mCandidateView:Landroid/view/View;

.field private mCandidateViewHeight:I

.field private mCurrentLocation:Landroid/graphics/Point;

.field private mDefaultStatusBarHeight:I

.field private mFloatingKeyboard:Landroid/widget/PopupWindow;

.field private mFloatingMoveButton:Landroid/view/View;

.field private mFloatingMoveButtonLayout:Landroid/view/View;

.field private mFloatingMoveButtonTouchListener:Landroid/view/View$OnTouchListener;

.field private mFloatingMoveButtonTouched:Z

.field private mFloatingRootView:Landroid/view/View;

.field private mFloatingView:Landroid/view/View;

.field private mFloatingkeyboardHeight:I

.field private mFloatingkeyboardWidth:I

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mInputMethod:I

.field private mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

.field private final mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private mIsAddInsetsComputer:Z

.field private mIsUsedFloatingMoveButton:Z

.field private mLeftKeyboard:Landroid/widget/PopupWindow;

.field private mMoveHandlerHeight:I

.field private mMovingDownPoint:Landroid/graphics/Point;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private mRightKeyboard:Landroid/widget/PopupWindow;

.field private mShowRequested:Z

.field private mSplitKeyboardHeight:I

.field private mSplitLeftMoveButton:Landroid/view/View;

.field private mSplitLeftMoveButtonLayout:Landroid/view/View;

.field private mSplitLeftRootView:Landroid/view/View;

.field private mSplitLeftkeyboardWidth:I

.field private mSplitRightInitX:I

.field private mSplitRightMoveButton:Landroid/view/View;

.field private mSplitRightMoveButtonLayout:Landroid/view/View;

.field private mSplitRightRootView:Landroid/view/View;

.field private mSplitRightView:Landroid/view/View;

.field private mSplitRightkeyboardWidth:I

.field private mStatusBarHeight:I

.field private mSystemBarHeight:I

.field private mWindowHeight:I

.field private mWindowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsRightSide:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMovingDownPoint:Landroid/graphics/Point;

    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingRootView:Landroid/view/View;

    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftRootView:Landroid/view/View;

    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightRootView:Landroid/view/View;

    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightView:Landroid/view/View;

    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingView:Landroid/view/View;

    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButton:Landroid/view/View;

    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButtonLayout:Landroid/view/View;

    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButton:Landroid/view/View;

    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButtonLayout:Landroid/view/View;

    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButton:Landroid/view/View;

    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateView:Landroid/view/View;

    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButtonTouchListener:Landroid/view/View$OnTouchListener;

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButtonTouched:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateShown:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsAddInsetsComputer:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsUsedFloatingMoveButton:Z

    iput v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateMovehandlerGap:I

    iput v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSystemBarHeight:I

    iput v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mDefaultStatusBarHeight:I

    new-instance v2, Lcom/diotek/ime/framework/view/PopupKeyboardView$1;

    invoke-direct {v2, p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView$1;-><init>(Lcom/diotek/ime/framework/view/PopupKeyboardView;)V

    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mShowRequested:Z

    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsUsedFloatingMoveButton:Z

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/framework/view/PopupKeyboardView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/view/PopupKeyboardView;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/diotek/ime/framework/view/PopupKeyboardView;)Z
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/view/PopupKeyboardView;

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateShown:Z

    return v0
.end method

.method static synthetic access$200(Lcom/diotek/ime/framework/view/PopupKeyboardView;)I
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/view/PopupKeyboardView;

    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/diotek/ime/framework/view/PopupKeyboardView;)I
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/view/PopupKeyboardView;

    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/diotek/ime/framework/view/PopupKeyboardView;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/view/PopupKeyboardView;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/diotek/ime/framework/view/PopupKeyboardView;)Z
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/view/PopupKeyboardView;

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButtonTouched:Z

    return v0
.end method

.method static synthetic access$502(Lcom/diotek/ime/framework/view/PopupKeyboardView;Z)Z
    .locals 0
    .param p0    # Lcom/diotek/ime/framework/view/PopupKeyboardView;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButtonTouched:Z

    return p1
.end method

.method static synthetic access$600(Lcom/diotek/ime/framework/view/PopupKeyboardView;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/view/PopupKeyboardView;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/diotek/ime/framework/view/PopupKeyboardView;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/view/PopupKeyboardView;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/diotek/ime/framework/view/PopupKeyboardView;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/view/PopupKeyboardView;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButton:Landroid/view/View;

    return-object v0
.end method

.method private getDefaultLocation()Landroid/graphics/Point;
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getSplitKeyboardDefaultLocation()Landroid/graphics/Point;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getFloatingKeyboardDefaultLocation()Landroid/graphics/Point;

    move-result-object v0

    goto :goto_0
.end method

.method private getFloatingKeyboardDefaultLocation()Landroid/graphics/Point;
    .locals 6

    const/4 v5, -0x1

    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowHeight:I

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowWidth:I

    :goto_0
    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardWidth:I

    sub-int v4, v3, v4

    div-int/lit8 v4, v4, 0x2

    iput v4, v0, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardHeight:I

    sub-int v4, v1, v4

    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Point;->y:I

    :goto_1
    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "floating_h_location_x"

    iget v5, v0, Landroid/graphics/Point;->x:I

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Landroid/graphics/Point;->x:I

    const-string v4, "floating_h_location_y"

    iget v5, v0, Landroid/graphics/Point;->y:I

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Landroid/graphics/Point;->y:I

    :goto_2
    return-object v0

    :cond_0
    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowWidth:I

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowHeight:I

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardHeight:I

    neg-int v4, v4

    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_2
    const-string v4, "floating_location_x"

    iget v5, v0, Landroid/graphics/Point;->x:I

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Landroid/graphics/Point;->x:I

    const-string v4, "floating_location_y"

    iget v5, v0, Landroid/graphics/Point;->y:I

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Landroid/graphics/Point;->y:I

    goto :goto_2
.end method

.method private getFloatingMoveButtonTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButtonTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/view/PopupKeyboardView$2;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView$2;-><init>(Lcom/diotek/ime/framework/view/PopupKeyboardView;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButtonTouchListener:Landroid/view/View$OnTouchListener;

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButtonTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method private getHWRPanelRscId()I
    .locals 1

    const v0, 0x7f08002d

    return v0
.end method

.method private getKeyboardRscId()I
    .locals 1

    const v0, 0x7f080012

    return v0
.end method

.method private getSplitKeyboardDefaultLocation()Landroid/graphics/Point;
    .locals 4

    const/4 v3, -0x1

    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    const/4 v2, 0x0

    iput v2, v0, Landroid/graphics/Point;->x:I

    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsUsedFloatingMoveButton:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    neg-int v2, v2

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Point;->y:I

    :goto_0
    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "split_h_location_y"

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->y:I

    :goto_1
    return-object v0

    :cond_0
    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    neg-int v2, v2

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_1
    const-string v2, "split_location_y"

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method

.method private getValidLocation(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 4
    .param p1    # Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->y:I

    move v0, v1

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsUsedFloatingMoveButton:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    neg-int v2, v2

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    sub-int v0, v2, v3

    :cond_0
    :goto_0
    if-le v1, v0, :cond_3

    :goto_1
    iput v0, p1, Landroid/graphics/Point;->y:I

    return-object p1

    :cond_1
    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    neg-int v2, v2

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    sub-int v0, v2, v3

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardHeight:I

    neg-int v2, v2

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    sub-int v0, v2, v3

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private initFloatingKeyboardLocation()V
    .locals 1

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getFloatingKeyboardDefaultLocation()Landroid/graphics/Point;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateFloatingKeyboard(Landroid/graphics/Point;)V

    return-void
.end method

.method private initKeyboardLocation()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->initLocation()V

    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->initFloatingKeyboardLocation()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->initSplitKeyboardLocation()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initSplitKeyboardLocation()V
    .locals 1

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getSplitKeyboardDefaultLocation()Landroid/graphics/Point;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateSplitKeybord(Landroid/graphics/Point;)V

    return-void
.end method

.method private setCandidateView(Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/View;

    const v1, 0x7f080055

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setInputView(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/View;

    const v1, 0x7f080056

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setSplitKeyboardMoveHandler()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButtonLayout:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsUsedFloatingMoveButton:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isSplitEnableOneHandKeypad()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isSplitOneHandKeypadRightSet()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightkeyboardWidth:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButton:Landroid/view/View;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightkeyboardWidth:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightkeyboardWidth:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButtonLayout:Landroid/view/View;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButtonLayout:Landroid/view/View;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftkeyboardWidth:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButton:Landroid/view/View;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftkeyboardWidth:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsRightSide:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getVisibilityOfCandidateContentLayout()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButtonLayout:Landroid/view/View;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    :goto_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButtonLayout:Landroid/view/View;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getVisibilityOfCandidateContentLayout()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    :goto_2
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButtonLayout:Landroid/view/View;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateFloatingKeyboard(Landroid/graphics/Point;)V
    .locals 6
    .param p1    # Landroid/graphics/Point;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getFloatingView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getFloatingView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getFloatingKeyboardWidth()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardWidth:I

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getFloatingView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getFloatingKeyboardHeight()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardHeight:I

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowWidth:I

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mStatusBarHeight:I

    sub-int/2addr v1, v2

    neg-int v1, v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowWidth:I

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mStatusBarHeight:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    :cond_0
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardHeight:I

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    add-int/2addr v1, v2

    neg-int v1, v1

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardHeight:I

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    add-int/2addr v0, v1

    neg-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    :cond_1
    iget v0, p1, Landroid/graphics/Point;->x:I

    if-gez v0, :cond_2

    iput v3, p1, Landroid/graphics/Point;->x:I

    :cond_2
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowHeight:I

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardWidth:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowHeight:I

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardWidth:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->x:I

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardWidth:I

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardHeight:I

    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    add-int/2addr v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->setCurrentLocation(Landroid/graphics/Point;)V

    :cond_4
    return-void

    :cond_5
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowHeight:I

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mStatusBarHeight:I

    sub-int/2addr v1, v2

    neg-int v1, v1

    if-ge v0, v1, :cond_6

    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowHeight:I

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mStatusBarHeight:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    :cond_6
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardHeight:I

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    add-int/2addr v1, v2

    neg-int v1, v1

    if-le v0, v1, :cond_7

    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardHeight:I

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    add-int/2addr v0, v1

    neg-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    :cond_7
    iget v0, p1, Landroid/graphics/Point;->x:I

    if-gez v0, :cond_8

    iput v3, p1, Landroid/graphics/Point;->x:I

    :cond_8
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowWidth:I

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardWidth:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowWidth:I

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardWidth:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->x:I

    goto :goto_0
.end method

.method private updateSplitKeybord(Landroid/graphics/Point;)V
    .locals 11
    .param p1    # Landroid/graphics/Point;

    const/4 v1, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getSplitRightView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSplitKeyboardHeight()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    :cond_1
    iget v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    if-nez v0, :cond_2

    iget v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowWidth:I

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mStatusBarHeight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSystemBarHeight:I

    sub-int/2addr v2, v3

    neg-int v2, v2

    if-ge v0, v2, :cond_3

    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowWidth:I

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mStatusBarHeight:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSystemBarHeight:I

    sub-int/2addr v0, v2

    neg-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    :cond_3
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    add-int/2addr v2, v6

    neg-int v2, v2

    if-le v0, v2, :cond_4

    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    add-int/2addr v0, v6

    neg-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    :cond_4
    iput v1, p1, Landroid/graphics/Point;->x:I

    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getVisibilityOfCandidateContentLayout()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateShown:Z

    if-eqz v0, :cond_a

    move v7, v5

    :goto_1
    const/4 v9, 0x0

    iget v8, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateShown:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v9, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    const/4 v8, 0x0

    :cond_5
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsUsedFloatingMoveButton:Z

    if-eqz v0, :cond_10

    sget-boolean v0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsRightSide:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateMovehandlerGap:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftkeyboardWidth:I

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    iget v10, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    add-int/2addr v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightInitX:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightkeyboardWidth:I

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    iget v10, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v4, v10

    add-int/2addr v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    :goto_2
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->setCurrentLocation(Landroid/graphics/Point;)V

    :cond_6
    return-void

    :cond_7
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowHeight:I

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mStatusBarHeight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSystemBarHeight:I

    sub-int/2addr v2, v3

    neg-int v2, v2

    if-ge v0, v2, :cond_8

    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowHeight:I

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mStatusBarHeight:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSystemBarHeight:I

    sub-int/2addr v0, v2

    neg-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    :cond_8
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    add-int/2addr v2, v6

    neg-int v2, v2

    if-le v0, v2, :cond_9

    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    add-int/2addr v0, v6

    neg-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    :cond_9
    iput v1, p1, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_a
    move v7, v1

    goto :goto_1

    :cond_b
    if-eqz v7, :cond_c

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateMovehandlerGap:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftkeyboardWidth:I

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    iget v10, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    add-int/2addr v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightInitX:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightkeyboardWidth:I

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    iget v10, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftkeyboardWidth:I

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    iget v10, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    add-int/2addr v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightInitX:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v9

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightkeyboardWidth:I

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    add-int/2addr v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto :goto_2

    :cond_d
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateMovehandlerGap:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftkeyboardWidth:I

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    iget v10, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    add-int/2addr v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightInitX:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightkeyboardWidth:I

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    iget v10, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v4, v10

    add-int/2addr v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto/16 :goto_2

    :cond_e
    if-eqz v7, :cond_f

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftkeyboardWidth:I

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    iget v10, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightInitX:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateMovehandlerGap:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightkeyboardWidth:I

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    iget v10, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    add-int/2addr v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto/16 :goto_2

    :cond_f
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    iget v2, p1, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v9

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftkeyboardWidth:I

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    add-int/2addr v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightInitX:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightkeyboardWidth:I

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    iget v10, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    add-int/2addr v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto/16 :goto_2

    :cond_10
    sget-boolean v0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsRightSide:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftkeyboardWidth:I

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightInitX:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightkeyboardWidth:I

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    iget v10, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto/16 :goto_2

    :cond_11
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftkeyboardWidth:I

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    iget v10, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightInitX:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightkeyboardWidth:I

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto/16 :goto_2
.end method


# virtual methods
.method public getCurrentLocationX()I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateCurrentLocation(Z)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public getCurrentLocationY()I
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public getFloatingView()Landroid/view/View;
    .locals 2

    const/16 v1, 0x8

    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingView:Landroid/view/View;

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getHWRPanelRscId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingView:Landroid/view/View;

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getKeyboardRscId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingView:Landroid/view/View;

    goto :goto_0
.end method

.method public getInputMethod()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    return v0
.end method

.method public getKeyboardCurrentLocationY()I
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getKeyboardCurrentLocationY(Z)I
    .locals 2
    .param p1    # Z

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsUsedFloatingMoveButton:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsRightSide:Z

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getKeyboardCurrentLocationYTopMargin()I
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocationX()I
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public getScreenToWindowLocation(Landroid/view/View;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 6
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/graphics/Point;

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getViewLocationOnScreen(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getViewLocationInWindow(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v2

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget v4, p2, Landroid/graphics/Point;->y:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Point;->y:I

    add-int v0, v4, v5

    iget v4, p2, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v4, v0}, Landroid/graphics/Point;->set(II)V

    return-object v1
.end method

.method public getSplitRightInitX()I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateCurrentLocation(Z)V

    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightInitX:I

    return v0
.end method

.method public getSplitRightView()Landroid/view/View;
    .locals 2

    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightView:Landroid/view/View;

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getKeyboardRscId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightView:Landroid/view/View;

    goto :goto_0
.end method

.method public getViewLocationInWindow(Landroid/view/View;)Landroid/graphics/Point;
    .locals 4
    .param p1    # Landroid/view/View;

    const/4 v2, -0x1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    const/4 v2, 0x2

    new-array v1, v2, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Point;->set(II)V

    return-object v0
.end method

.method public getViewLocationOnScreen(Landroid/view/View;)Landroid/graphics/Point;
    .locals 4
    .param p1    # Landroid/view/View;

    const/4 v2, -0x1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    const/4 v2, 0x2

    new-array v1, v2, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Point;->set(II)V

    return-object v0
.end method

.method public hideCandidateWindow()V
    .locals 5

    const/4 v4, 0x7

    const/4 v3, 0x4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateShown:Z

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsUsedFloatingMoveButton:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    :cond_0
    sget-boolean v0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsRightSide:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->setCurrentLocation(Landroid/graphics/Point;)V

    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateSplitKeybord(Landroid/graphics/Point;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateFloatingKeyboard(Landroid/graphics/Point;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iput v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->setCurrentLocation(Landroid/graphics/Point;)V

    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateSplitKeybord(Landroid/graphics/Point;)V

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateFloatingKeyboard(Landroid/graphics/Point;)V

    goto :goto_1
.end method

.method public hideKeyboard()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mShowRequested:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCtrlPressedState(Z)V

    return-void

    :cond_1
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0
.end method

.method public init(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 10
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/View;
    .param p4    # Landroid/view/View;

    iput-object p2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightView:Landroid/view/View;

    iput-object p3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingView:Landroid/view/View;

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    iput v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getFloatingView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getFloatingKeyboardWidth()I

    move-result v5

    iput v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardWidth:I

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getFloatingView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getFloatingKeyboardHeight()I

    move-result v5

    iput v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardHeight:I

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getSplitRightView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSplitLeftKeyboardWidth()I

    move-result v5

    iput v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftkeyboardWidth:I

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getSplitRightView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSplitRightKeyboardWidth()I

    move-result v5

    iput v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightkeyboardWidth:I

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getSplitRightView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSplitKeyboardHeight()I

    move-result v5

    iput v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getSplitRightView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getStatusBarHeight()I

    move-result v5

    iput v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mDefaultStatusBarHeight:I

    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mDefaultStatusBarHeight:I

    iput v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mStatusBarHeight:I

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getSplitRightView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getCandidateViewHeight()I

    move-result v5

    iput v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    iget-boolean v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsUsedFloatingMoveButton:Z

    if-eqz v5, :cond_c

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getFloatingView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getMoveHandlerHeight()I

    move-result v5

    iput v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    :goto_0
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v5

    iput v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowHeight:I

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v5

    iput v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowWidth:I

    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    if-eqz v5, :cond_d

    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    if-eqz v5, :cond_d

    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    iget v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateMovehandlerGap:I

    :goto_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getSplitRightView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSystemBarHeigth()I

    move-result v5

    iput v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSystemBarHeight:I

    const/4 v5, 0x0

    const/16 v6, 0xff

    const/16 v7, 0xff

    const/16 v8, 0xff

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingRootView:Landroid/view/View;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v6, 0x7f03003e

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingRootView:Landroid/view/View;

    :cond_0
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftRootView:Landroid/view/View;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v6, 0x7f03003e

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftRootView:Landroid/view/View;

    :cond_1
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightRootView:Landroid/view/View;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v6, 0x7f03003e

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightRootView:Landroid/view/View;

    :cond_2
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingRootView:Landroid/view/View;

    invoke-direct {p0, v5, p3}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->setInputView(Landroid/view/View;Landroid/view/View;)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftRootView:Landroid/view/View;

    invoke-direct {p0, v5, p1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->setInputView(Landroid/view/View;Landroid/view/View;)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightRootView:Landroid/view/View;

    invoke-direct {p0, v5, p2}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->setInputView(Landroid/view/View;Landroid/view/View;)V

    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    invoke-virtual {p0, v5, p4}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->setCandidateView(ILandroid/view/View;)V

    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_e

    move-object v5, p4

    check-cast v5, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getFloatingKeyboardLeftEdge()I

    move-result v1

    check-cast p4, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {p4}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getFloatingKeyboardRightEdge()I

    move-result v3

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingRootView:Landroid/view/View;

    const v6, 0x7f080053

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v1, v5, v3, v6}, Landroid/view/View;->setPadding(IIII)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v1, v6, v3, v7}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    :goto_2
    new-instance v5, Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingRootView:Landroid/view/View;

    iget v7, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardWidth:I

    iget v8, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardHeight:I

    iget v9, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    add-int/2addr v8, v9

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    iget-boolean v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsUsedFloatingMoveButton:Z

    if-eqz v5, :cond_10

    new-instance v5, Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftRootView:Landroid/view/View;

    iget v7, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftkeyboardWidth:I

    iget v8, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    iget v9, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v8, v9

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    :goto_3
    new-instance v5, Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightRootView:Landroid/view/View;

    iget v7, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightkeyboardWidth:I

    iget v8, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    iget v9, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v8, v9

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_4
    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    const v6, 0x7f0f0039

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :cond_4
    iget-boolean v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsUsedFloatingMoveButton:Z

    if-eqz v5, :cond_11

    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/16 v6, 0x8

    if-eq v5, v6, :cond_5

    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_11

    :cond_5
    const/4 v0, 0x1

    :goto_5
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButton:Landroid/view/View;

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingRootView:Landroid/view/View;

    const v6, 0x7f080054

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButton:Landroid/view/View;

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButton:Landroid/view/View;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButton:Landroid/view/View;

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getFloatingMoveButtonTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingRootView:Landroid/view/View;

    const v6, 0x7f080053

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButtonLayout:Landroid/view/View;

    :cond_6
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButtonLayout:Landroid/view/View;

    if-eqz v5, :cond_7

    if-eqz v0, :cond_12

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButtonLayout:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_6
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButton:Landroid/view/View;

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftRootView:Landroid/view/View;

    const v6, 0x7f080054

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButton:Landroid/view/View;

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButton:Landroid/view/View;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButton:Landroid/view/View;

    const v6, 0x7f020a97

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButton:Landroid/view/View;

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getFloatingMoveButtonTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButton:Landroid/view/View;

    iget v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftkeyboardWidth:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setMinimumWidth(I)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftRootView:Landroid/view/View;

    const v6, 0x7f080053

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButtonLayout:Landroid/view/View;

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButtonLayout:Landroid/view/View;

    iget v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButtonLayout:Landroid/view/View;

    iget v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftkeyboardWidth:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setMinimumWidth(I)V

    :cond_8
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButtonLayout:Landroid/view/View;

    if-eqz v5, :cond_9

    if-eqz v0, :cond_13

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButtonLayout:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    :goto_7
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButton:Landroid/view/View;

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightRootView:Landroid/view/View;

    const v6, 0x7f080054

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButton:Landroid/view/View;

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButton:Landroid/view/View;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButton:Landroid/view/View;

    const v6, 0x7f020a9e

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButton:Landroid/view/View;

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getFloatingMoveButtonTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButton:Landroid/view/View;

    iget v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftkeyboardWidth:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setMinimumWidth(I)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightRootView:Landroid/view/View;

    const v6, 0x7f080053

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    iget v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    iget v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftkeyboardWidth:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setMinimumWidth(I)V

    :cond_a
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    if-eqz v5, :cond_b

    if-eqz v0, :cond_14

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    :goto_8
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->setSplitKeyboardMoveHandler()V

    new-instance v5, Landroid/graphics/Point;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    iput-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMovingDownPoint:Landroid/graphics/Point;

    new-instance v5, Landroid/graphics/Point;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    iput-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->initSplitRightX()V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->initLocation()V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->hideCandidateWindow()V

    return-void

    :cond_c
    const/4 v5, 0x0

    iput v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    goto/16 :goto_0

    :cond_d
    const/4 v5, 0x0

    iput v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateMovehandlerGap:I

    goto/16 :goto_1

    :cond_e
    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_3

    move-object v5, p4

    check-cast v5, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getFloatingKeyboardLeftEdge()I

    move-result v1

    check-cast p4, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {p4}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getFloatingKeyboardRightEdge()I

    move-result v3

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftRootView:Landroid/view/View;

    const v6, 0x7f080053

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v3, v7}, Landroid/view/View;->setPadding(IIII)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightRootView:Landroid/view/View;

    const v6, 0x7f080053

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v1, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    sget-boolean v5, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsRightSide:Z

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v1, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_2

    :cond_f
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v3, v8}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_2

    :cond_10
    new-instance v5, Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftRootView:Landroid/view/View;

    iget v7, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftkeyboardWidth:I

    iget v8, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitKeyboardHeight:I

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    goto/16 :goto_3

    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_12
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingMoveButtonLayout:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    :cond_13
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButtonLayout:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    :cond_14
    iget-object v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButtonLayout:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    :catch_0
    move-exception v5

    goto/16 :goto_4
.end method

.method public initLocation()V
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getSplitKeyboardDefaultLocation()Landroid/graphics/Point;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    :cond_1
    return-void

    :cond_2
    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getFloatingKeyboardDefaultLocation()Landroid/graphics/Point;

    move-result-object v0

    goto :goto_0
.end method

.method public initSplitRightX()V
    .locals 3

    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v1

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightkeyboardWidth:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightInitX:I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v1

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightkeyboardWidth:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightInitX:I

    goto :goto_0
.end method

.method public isPopKeyboardShown()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method public isRightSide()Z
    .locals 1

    sget-boolean v0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsRightSide:Z

    return v0
.end method

.method public moveCandidateWindow()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateView:Landroid/view/View;

    invoke-virtual {p0, v3, v4}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->setCandidateView(ILandroid/view/View;)V

    sget-boolean v3, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsRightSide:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateView:Landroid/view/View;

    check-cast v3, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getFloatingKeyboardLeftEdge()I

    move-result v0

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    :goto_0
    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsUsedFloatingMoveButton:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsRightSide:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->setCurrentLocation(Landroid/graphics/Point;)V

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateSplitKeybord(Landroid/graphics/Point;)V

    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView()V

    :cond_4
    return-void

    :cond_5
    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateView:Landroid/view/View;

    check-cast v3, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getFloatingKeyboardRightEdge()I

    move-result v2

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5, v5, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    goto :goto_1

    :cond_7
    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateFloatingKeyboard(Landroid/graphics/Point;)V

    goto :goto_2
.end method

.method public moveCandidateWindowLeftSide()V
    .locals 2

    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsRightSide:Z

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->moveCandidateWindow()V

    :cond_0
    return-void
.end method

.method public moveCandidateWindowRightSide()V
    .locals 2

    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsRightSide:Z

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->moveCandidateWindow()V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v1

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightkeyboardWidth:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightInitX:I

    :goto_1
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->initKeyboardLocation()V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v1

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightkeyboardWidth:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightInitX:I

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1    # I
    .param p2    # I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 4
    .param p1    # I

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_2

    iput-boolean v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mShowRequested:Z

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->showKeyboard()V

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsAddInsetsComputer:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsUsedFloatingMoveButton:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    sget-boolean v0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsRightSide:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    :goto_0
    iput-boolean v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsAddInsetsComputer:Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mShowRequested:Z

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->hideKeyboard()V

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsAddInsetsComputer:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsUsedFloatingMoveButton:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    sget-boolean v0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsRightSide:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    :goto_2
    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsAddInsetsComputer:Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    goto :goto_2
.end method

.method public releaseDownPoint()V
    .locals 5

    const/4 v4, -0x1

    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "floating_h_location_x"

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "floating_h_location_y"

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMovingDownPoint:Landroid/graphics/Point;

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Point;->set(II)V

    return-void

    :cond_1
    const-string v2, "floating_location_x"

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "floating_location_y"

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "split_h_location_y"

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    :cond_3
    const-string v2, "split_location_y"

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_2
.end method

.method public setCandidateView(ILandroid/view/View;)V
    .locals 1
    .param p1    # I
    .param p2    # Landroid/view/View;

    packed-switch p1, :pswitch_data_0

    :goto_0
    iput-object p2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateView:Landroid/view/View;

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingRootView:Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->setCandidateView(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->setSplitKeyboardMoveHandler()V

    sget-boolean v0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsRightSide:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightRootView:Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->setCandidateView(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftRootView:Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->setCandidateView(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCurrentLocation(Landroid/graphics/Point;)V
    .locals 1
    .param p1    # Landroid/graphics/Point;

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getValidLocation(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    return-void
.end method

.method public setMovingDownPoint(Landroid/graphics/Point;)V
    .locals 0
    .param p1    # Landroid/graphics/Point;

    iput-object p1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMovingDownPoint:Landroid/graphics/Point;

    return-void
.end method

.method public showCandidateWindow()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateShown:Z

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsUsedFloatingMoveButton:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->setCurrentLocation(Landroid/graphics/Point;)V

    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateSplitKeybord(Landroid/graphics/Point;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getSplitRightView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getCandidateViewHeight()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateFloatingKeyboard(Landroid/graphics/Point;)V

    goto :goto_1
.end method

.method public showKeyboard()V
    .locals 8

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->dismissClipboard()V

    const-string v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    :try_start_0
    invoke-interface {v3}, Landroid/view/IWindowManager;->isStatusBarVisible()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mDefaultStatusBarHeight:I

    iput v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mStatusBarHeight:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mShowRequested:Z

    if-eqz v4, :cond_3

    :cond_1
    const/4 v0, 0x0

    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsUsedFloatingMoveButton:Z

    if-nez v4, :cond_2

    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    :cond_2
    sget-boolean v4, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsRightSide:Z

    if-eqz v4, :cond_5

    :try_start_1
    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    add-int/2addr v7, v0

    invoke-virtual {v4, p0, v5, v6, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    const/4 v5, 0x0

    iget v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightInitX:I

    iget-object v7, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, p0, v5, v6, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    invoke-direct {p0, v4}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateSplitKeybord(Landroid/graphics/Point;)V
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v4, 0x0

    :try_start_2
    iput v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mStatusBarHeight:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iput v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mStatusBarHeight:I

    goto :goto_0

    :catch_1
    move-exception v2

    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_3

    const-string v4, "SamsungIME"

    const-string v5, "PoupKeyboardView::showKeyboard()-->BadTokenException while trying to show split keyboard when mIsRightSide is true."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    :try_start_3
    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, p0, v5, v6, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    const/4 v5, 0x0

    iget v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightInitX:I

    iget-object v7, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    add-int/2addr v7, v0

    invoke-virtual {v4, p0, v5, v6, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    invoke-direct {p0, v4}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateSplitKeybord(Landroid/graphics/Point;)V
    :try_end_3
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_3

    const-string v4, "SamsungIME"

    const-string v5, "PoupKeyboardView::showKeyboard()-->BadTokenException while trying to show split keyboard when mIsRightSide is flase."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v4

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mShowRequested:Z

    if-eqz v4, :cond_3

    :cond_7
    :try_start_4
    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, p0, v5, v6, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    invoke-direct {p0, v4}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateFloatingKeyboard(Landroid/graphics/Point;)V
    :try_end_4
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception v2

    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v4, :cond_3

    const-string v4, "SamsungIME"

    const-string v5, "PoupKeyboardView::showKeyboard()-->BadTokenException while trying to show floating keyboard."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public updateCurrentLocation(Z)V
    .locals 4
    .param p1    # Z

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mLeftKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mRightKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sget-boolean v2, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsRightSide:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightRootView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getViewLocationOnScreen(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v1

    :cond_1
    :goto_0
    if-eqz p1, :cond_6

    iget v2, v1, Landroid/graphics/Point;->y:I

    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getDefaultLocation()Landroid/graphics/Point;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getValidLocation(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftRootView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getViewLocationOnScreen(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingRootView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getViewLocationOnScreen(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p0, v1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getScreenToWindowLocation(Landroid/view/View;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    goto :goto_1

    :cond_6
    iget v2, v1, Landroid/graphics/Point;->y:I

    if-eqz v2, :cond_2

    invoke-virtual {p0, p0, v1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getScreenToWindowLocation(Landroid/view/View;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getValidLocation(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    goto :goto_2
.end method

.method public updateFloatingKeyboardLocationForMultiWindow()V
    .locals 7

    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "multiwindow_facade"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getCenterBarPoint()Landroid/graphics/Point;

    move-result-object v0

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardHeight:I

    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    add-int v1, v4, v5

    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getFocusZoneInfoForMultiWindow()I

    move-result v2

    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    neg-int v5, v1

    iput v5, v4, Landroid/graphics/Point;->y:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowHeight:I

    if-ge v4, v5, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v5, v0, Landroid/graphics/Point;->x:I

    iput v5, v4, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowHeight:I

    iget v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardWidth:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Point;->x:I

    goto :goto_0

    :pswitch_2
    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardWidth:I

    sub-int/2addr v4, v5

    if-ltz v4, :cond_1

    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardWidth:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowWidth:I

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Point;->x:I

    packed-switch v2, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    :pswitch_4
    iget v4, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowHeight:I

    if-ge v4, v5, :cond_3

    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowHeight:I

    iget v6, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    neg-int v5, v5

    iput v5, v4, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    neg-int v5, v1

    iput v5, v4, Landroid/graphics/Point;->y:I

    goto :goto_0

    :pswitch_5
    iget v4, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v1

    if-ltz v4, :cond_4

    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowHeight:I

    iget v6, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    add-int/2addr v5, v1

    neg-int v5, v5

    iput v5, v4, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowHeight:I

    neg-int v5, v5

    iput v5, v4, Landroid/graphics/Point;->y:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public updateKeyboard()V
    .locals 2

    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateSplitKeybord(Landroid/graphics/Point;)V

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->setSplitKeyboardMoveHandler()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateFloatingKeyboard(Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method public updateKeyboard(II)V
    .locals 6
    .param p1    # I
    .param p2    # I

    const/4 v5, 0x7

    const/4 v4, -0x1

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    if-ne v2, v5, :cond_0

    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mIsUsedFloatingMoveButton:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    sub-int/2addr v2, v3

    sub-int/2addr p2, v2

    :cond_0
    new-instance v1, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMovingDownPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int v2, p1, v2

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMovingDownPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int v3, p2, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, p0, v1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getScreenToWindowLocation(Landroid/view/View;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMovingDownPoint:Landroid/graphics/Point;

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Point;->equals(II)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    if-ne v2, v5, :cond_2

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateSplitKeybord(Landroid/graphics/Point;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateFloatingKeyboard(Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method public updateKeyboardSideSync(II)V
    .locals 8
    .param p1    # I
    .param p2    # I

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iget-object v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getService()Lcom/diotek/ime/framework/common/AbstractInputMethod;

    move-result-object v6

    invoke-virtual {v6}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-nez v6, :cond_0

    new-instance v3, Landroid/graphics/Point;

    sub-int v6, p2, v5

    invoke-direct {v3, p1, v6}, Landroid/graphics/Point;-><init>(II)V

    :goto_0
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->setCurrentLocation(Landroid/graphics/Point;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    iget-object v6, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    :cond_1
    new-instance v3, Landroid/graphics/Point;

    sub-int v6, p2, v5

    add-int/2addr v6, v1

    invoke-direct {v3, p1, v6}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method public updatePopupKeyboardView()V
    .locals 8

    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputMethod:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowHeight:I

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mStatusBarHeight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    add-int/2addr v1, v2

    neg-int v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mWindowHeight:I

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mStatusBarHeight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    add-int/2addr v1, v2

    neg-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "floating_h_location_y"

    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingKeyboard:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardWidth:I

    iget v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mFloatingkeyboardHeight:I

    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I

    add-int/2addr v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "floating_location_y"

    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCurrentLocation:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public updateSplitLeftWidth(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitLeftkeyboardWidth:I

    return-void
.end method

.method public updateSplitRightWidth(I)V
    .locals 1
    .param p1    # I

    iget v0, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightkeyboardWidth:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView;->mSplitRightkeyboardWidth:I

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->initSplitRightX()V

    :cond_0
    return-void
.end method
