.class public Lcom/diotek/ime/framework/view/tracker/PointerTracker;
.super Ljava/lang/Object;
.source "PointerTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;,
        Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;
    }
.end annotation


# static fields
.field private static mIsDownFunctionKey:Z


# instance fields
.field final DISTANCE_MULTIPLIER_FOR_MOVE:F

.field final DISTANCE_MULTIPLIER_FOR_UP:F

.field final DISTANCE_MULTIPLIER_FOR_UP_AFTER:F

.field public keyPressed:Landroid/widget/TextView;

.field private mAlreadyComposedKeyIndex:I

.field private mDownXPointInSpaceKey:I

.field private mFilteringEventThresHoldDistance:I

.field private mFilteringEventThresHoldTime:I

.field private mFlick:Lcom/diotek/ime/framework/trace/KeyboardFlick;

.field private mFlickUmlaut:Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;

.field private final mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

.field private mHwrDownPointX:I

.field private mHwrDownPointY:I

.field protected mInputController:Lcom/diotek/ime/framework/input/InputController;

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field protected mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

.field private mIsDownInCtrlKey:Z

.field private mIsDownInShiftKey:Z

.field private mIsDownInSpaceKey:Z

.field private mIsFixedLanguageSwypingOperatingDistance:Z

.field private mIsHoverTracker:Z

.field private mIsHwrTracker:Z

.field private mIsPopupKeyboardTracker:Z

.field private mIsRepeatableKey:Z

.field private mIsSymbolPopupKeyboardTracker:Z

.field private mIsTabletMode:Z

.field private mIsTouchedForLanguageChange:Z

.field private mKeyAlreadyProcessed:Z

.field private final mKeyDetector:Lcom/diotek/ime/framework/view/tracker/KeyDetector;

.field private mKeyEvent:Landroid/view/KeyEvent;

.field private mKeyHysteresisDistanceSquared:I

.field private final mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

.field private mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

.field private mLastInputIndex:I

.field private mLastTapTime:J

.field private mListener:Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;

.field private mPointerCount:I

.field public final mPointerId:I

.field private mPointing:Lcom/diotek/ime/framework/trace/KeyboardPointing;

.field private mPreviewMode:Z

.field private mPreviousHoverKey:I

.field private mPreviousKey:I

.field private final mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field protected mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

.field private mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

.field private mVibKeyIndex:I

.field private mXt9Version:I

.field public preview:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownFunctionKey:Z

    return-void
.end method

.method public constructor <init>(ILcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;Lcom/diotek/ime/framework/view/tracker/KeyDetector;Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;Landroid/content/res/Resources;Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsFixedLanguageSwypingOperatingDistance:Z

    iput v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyHysteresisDistanceSquared:I

    iput v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mAlreadyComposedKeyIndex:I

    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInShiftKey:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInCtrlKey:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInSpaceKey:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsTouchedForLanguageChange:Z

    const/high16 v0, 0x40200000

    iput v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->DISTANCE_MULTIPLIER_FOR_MOVE:F

    const/high16 v0, 0x40400000

    iput v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->DISTANCE_MULTIPLIER_FOR_UP:F

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->DISTANCE_MULTIPLIER_FOR_UP_AFTER:F

    iput v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPreviousKey:I

    iput v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mVibKeyIndex:I

    iput-object v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputController:Lcom/diotek/ime/framework/input/InputController;

    iput-boolean v4, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPreviewMode:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHwrTracker:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsPopupKeyboardTracker:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsSymbolPopupKeyboardTracker:Z

    iput v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHwrDownPointX:I

    iput v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHwrDownPointY:I

    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsTabletMode:Z

    iput v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPreviousHoverKey:I

    iput v4, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mXt9Version:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mLastTapTime:J

    iput v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mLastInputIndex:I

    iput v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mFilteringEventThresHoldTime:I

    iput v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mFilteringEventThresHoldDistance:I

    iput v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPointerCount:I

    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iput-boolean p6, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPreviewMode:Z

    iput p1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPointerId:I

    iput-object p4, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    iput-object p2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    iput-object p3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyDetector:Lcom/diotek/ime/framework/view/tracker/KeyDetector;

    new-instance v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-direct {v0, p3}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;-><init>(Lcom/diotek/ime/framework/view/tracker/KeyDetector;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-static {}, Lcom/diotek/ime/framework/trace/KeyboardPointing;->getInstance()Lcom/diotek/ime/framework/trace/KeyboardPointing;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPointing:Lcom/diotek/ime/framework/trace/KeyboardPointing;

    invoke-static {}, Lcom/diotek/ime/framework/trace/KeyboardFlick;->getInstance()Lcom/diotek/ime/framework/trace/KeyboardFlick;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mFlick:Lcom/diotek/ime/framework/trace/KeyboardFlick;

    invoke-static {}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getInstance()Lcom/diotek/ime/framework/trace/KeyboardTrace;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-static {}, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->getInstance()Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mFlickUmlaut:Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getInputController()Lcom/diotek/ime/framework/input/InputController;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputController:Lcom/diotek/ime/framework/input/InputController;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getShiftStateController()Lcom/diotek/ime/framework/common/ShiftStateController;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsTabletMode:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Version()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mXt9Version:I

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "FILTERING_EVENT_THRESHOLD_TIME"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mFilteringEventThresHoldTime:I

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "FILTERING_EVENT_THRESHOLD_DISTANCE"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mFilteringEventThresHoldDistance:I

    :cond_2
    return-void
.end method

.method private diffrentSizeKeys(II)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    if-ne p2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v1, v1, p2

    iget v1, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v1, v1, p2

    iget v1, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCriticalValue()I
    .locals 14

    const/16 v13, 0x12c

    const/16 v12, 0x14

    const/16 v11, 0xa

    const-wide v9, 0x400451eb851eb852L

    :try_start_0
    iget-object v7, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v7, v8, :cond_0

    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v5, v7

    :goto_0
    iget-object v7, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v7

    if-nez v7, :cond_1

    iget v7, v2, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-int v4, v7

    :goto_1
    iget v7, v2, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-int v7, v7

    int-to-double v7, v7

    div-double v7, v5, v7

    mul-double/2addr v7, v9

    double-to-int v0, v7

    int-to-double v7, v4

    div-double/2addr v7, v9

    double-to-int v1, v7

    if-ge v0, v11, :cond_2

    int-to-double v7, v1

    const-wide v9, 0x3fe999999999999aL

    mul-double/2addr v7, v9

    double-to-int v7, v7

    :goto_2
    return v7

    :cond_0
    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v5, v7

    goto :goto_0

    :cond_1
    iget v7, v2, Landroid/util/DisplayMetrics;->ydpi:F

    float-to-int v4, v7

    goto :goto_1

    :cond_2
    if-lt v0, v11, :cond_3

    if-ge v0, v12, :cond_3

    int-to-double v7, v1

    const-wide v9, 0x3ff3333333333333L

    mul-double/2addr v7, v9

    double-to-int v7, v7

    goto :goto_2

    :cond_3
    if-lt v0, v12, :cond_4

    int-to-double v7, v1

    const-wide/high16 v9, 0x3ff8000000000000L

    mul-double/2addr v7, v9

    double-to-int v7, v7

    goto :goto_2

    :cond_4
    iget-object v7, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SPACE_LANGUAGE_LEFT_CHANGABLE_CRITICAL_VALUE"

    const/16 v9, 0x12c

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    goto :goto_2

    :catch_0
    move-exception v3

    const-string v7, "SamsungIME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SPACE_LANGUAGE_LEFT_CHANGABLE_CRITICAL_VALUE"

    invoke-interface {v7, v8, v13}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v7

    goto :goto_2
.end method

.method private getLongpressTimoutDelay(I)J
    .locals 4

    const-wide/16 v0, 0xc8

    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v0, 0xc8

    :goto_0
    invoke-static {}, Lcom/diotek/ime/framework/common/EasyMode;->getEasyModeStatus()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    long-to-float v2, v0

    invoke-static {}, Lcom/diotek/ime/framework/common/EasyMode;->getEasyModeRatio()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-long v0, v2

    :cond_0
    return-wide v0

    :cond_1
    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->getHoldDelay()I

    move-result v2

    int-to-long v0, v2

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->getHoldDelay()I

    move-result v2

    int-to-long v0, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x7a
        :pswitch_0
    .end packed-switch
.end method

.method private static getSquareDistanceToKeyEdge(IILcom/diotek/ime/framework/view/Keyboard$Key;)I
    .locals 10

    iget v5, p2, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    iget v8, p2, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    iget v9, p2, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    add-int v6, v8, v9

    iget v7, p2, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    iget v8, p2, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    iget v9, p2, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    add-int v0, v8, v9

    if-ge p0, v5, :cond_0

    move v3, v5

    :goto_0
    if-ge p1, v7, :cond_2

    move v4, v7

    :goto_1
    sub-int v1, p0, v3

    sub-int v2, p1, v4

    mul-int v8, v1, v1

    mul-int v9, v2, v2

    add-int/2addr v8, v9

    return v8

    :cond_0
    if-le p0, v6, :cond_1

    move v3, v6

    goto :goto_0

    :cond_1
    move v3, p0

    goto :goto_0

    :cond_2
    if-le p1, v0, :cond_3

    move v4, v0

    goto :goto_1

    :cond_3
    move v4, p1

    goto :goto_1
.end method

.method private isFilteringEvent(IIJ)Z
    .locals 4

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getStartX()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mFilteringEventThresHoldDistance:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getStartY()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mFilteringEventThresHoldDistance:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getDownTime()J

    move-result-wide v0

    iget v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mFilteringEventThresHoldTime:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    cmp-long v0, v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFunctionKey(I)Z
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x0

    return v0
.end method

.method private isGreekKeyInvisible(I)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v1

    const/16 v3, 0x3c2

    if-ne v2, v3, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isMinorMoveBounce(III)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyHysteresisDistanceSquared:I

    if-gez v3, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "keyboard and/or hysteresis not set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyIndex()I

    move-result v0

    if-ne p3, v0, :cond_3

    :cond_2
    :goto_0
    return v1

    :cond_3
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isValidKeyIndex(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v3, v3, v0

    invoke-static {p1, p2, v3}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getSquareDistanceToKeyEdge(IILcom/diotek/ime/framework/view/Keyboard$Key;)I

    move-result v3

    iget v4, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyHysteresisDistanceSquared:I

    if-lt v3, v4, :cond_2

    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method private isModifierInternal(I)Z
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getKey(I)Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v3, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v1, v3, v2

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isFunctionKey(I)Z

    move-result v2

    goto :goto_0
.end method

.method private isValidKeyIndex(I)Z
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setShiftkeyStateUp(IJ)V
    .locals 13

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v12

    if-eqz v12, :cond_0

    const/16 v0, -0x190

    if-ne p1, v0, :cond_1

    const/16 v6, 0x3b

    :goto_0
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x41

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-wide v1, p2

    move-wide v3, p2

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v12, v0}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_0
    return-void

    :cond_1
    const/16 v6, 0x3c

    goto :goto_0
.end method

.method private showKeyPreviewAndUpdateKey(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->showKeyPreviewAndUpdateKey(IZI)V

    return-void
.end method

.method private showKeyPreviewAndUpdateKey(IZI)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    array-length v3, v3

    if-le v3, p1, :cond_0

    if-lez p1, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v3, v3, v2

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsTouchedForLanguageChange:Z

    if-nez v3, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v2, v5, p0, p3}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->multiTouchShowPreview(ILcom/diotek/ime/framework/view/tracker/PointerTracker;I)Z

    invoke-virtual {p0, p1, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->updateKey(IZ)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPreviewMode:Z

    if-nez v3, :cond_2

    if-ltz p1, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    array-length v3, v3

    if-ge p1, v3, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v4, v4, p1

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->isPreviewEnabled(Lcom/diotek/ime/framework/view/Keyboard$Key;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    if-ne p1, v5, :cond_5

    :cond_2
    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isModifier()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v3, v5, p0, p3}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->multiTouchShowPreview(ILcom/diotek/ime/framework/view/tracker/PointerTracker;I)Z

    move-result v0

    :cond_3
    :goto_1
    if-nez v0, :cond_6

    :goto_2
    invoke-virtual {p0, p1, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->updateKey(IZ)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v3, p1, p0, p3}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->multiTouchShowPreview(ILcom/diotek/ime/framework/view/tracker/PointerTracker;I)Z

    move-result v0

    goto :goto_1

    :cond_5
    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsTabletMode:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getSpaceLanguageChange()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v3, v5, p0, v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->multiTouchShowPreview(ILcom/diotek/ime/framework/view/tracker/PointerTracker;I)Z

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public getDownInSpaceKey()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInSpaceKey:Z

    return v0
.end method

.method public getDownKeyIndex()I
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getDownKeyIndex()I

    move-result v0

    return v0
.end method

.method public getDownTime()J
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getDownTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHwrDownPointX()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHwrDownPointX:I

    return v0
.end method

.method public getHwrDownPointY()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHwrDownPointY:I

    return v0
.end method

.method public getKey(I)Lcom/diotek/ime/framework/view/Keyboard$Key;
    .locals 1

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isValidKeyIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKeyIndex()I
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyIndex()I

    move-result v0

    return v0
.end method

.method public getLastX()I
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getLastX()I

    move-result v0

    return v0
.end method

.method public getLastY()I
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getLastY()I

    move-result v0

    return v0
.end method

.method getStartX()I
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getStartX()I

    move-result v0

    return v0
.end method

.method getStartY()I
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getStartY()I

    move-result v0

    return v0
.end method

.method public initPreviousHoverKey()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPreviousHoverKey:I

    return-void
.end method

.method public initPreviousKeyIndex()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPreviousKey:I

    return-void
.end method

.method public isAccentKey(I)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getKey(I)Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v1

    const/16 v3, -0x3e

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isAlreadyProcessed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyAlreadyProcessed:Z

    return v0
.end method

.method public isBackspaceKey(I)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getKey(I)Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v1

    const/4 v3, -0x5

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isCtrlKey(I)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getKey(I)Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v1

    const/16 v3, -0x3e8

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isHwrTracker()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHwrTracker:Z

    return v0
.end method

.method public isModifier()Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isModifierInternal(I)Z

    move-result v0

    return v0
.end method

.method public isOnModifierKey(II)Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyIndexAndNearbyCodes()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isModifierInternal(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isPopupKeyboardTracker()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsPopupKeyboardTracker:Z

    return v0
.end method

.method public isRepeatableKey()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsRepeatableKey:Z

    return v0
.end method

.method public isShiftKey(I)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getKey(I)Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v1

    const/16 v3, -0x190

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v1

    const/16 v3, -0x19a

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isSpaceKey(I)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getKey(I)Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v1

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isSpaceKey(II)Z
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyDetector:Lcom/diotek/ime/framework/view/tracker/KeyDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->getKeyIndexAndNearbyCodes(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isSpaceKey(I)Z

    move-result v0

    return v0
.end method

.method public isSymbolPopupKeyboardTracker()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsSymbolPopupKeyboardTracker:Z

    return v0
.end method

.method public noUseUpdateKey()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->updateKey(IZ)V

    return-void
.end method

.method public onCancelEvent(IIJ)V
    .locals 3

    iget-object v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelLongPressTimer()V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelKeyTimers()V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->showKeyPreviewAndUpdateKey(IZ)V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isValidKeyIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v1, v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->invalidateKey(I)V

    :cond_0
    return-void
.end method

.method public onDownEvent(IIJI)V
    .locals 25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    move/from16 v0, p1

    move/from16 v1, p2

    move-wide/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->onDownKey(IIJ)I

    move-result v16

    const/4 v4, -0x1

    move/from16 v0, v16

    if-eq v0, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    array-length v4, v4

    move/from16 v0, v16

    if-lt v0, v4, :cond_3

    :cond_2
    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->showKeyPreviewAndUpdateKey(IZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->endDrawTraceLine()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isGreekKeyInvisible(I)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v16, v16, 0x1

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v4, v4, v16

    iget-object v4, v4, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v17, v4, v5

    const/16 v4, -0x66

    move/from16 v0, v17

    if-eq v0, v4, :cond_5

    const/16 v4, -0x75

    move/from16 v0, v17

    if-ne v0, v4, :cond_6

    :cond_5
    const/4 v4, 0x1

    sput-boolean v4, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownFunctionKey:Z

    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPointerCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    const/4 v4, -0x5

    move/from16 v0, v17

    if-ne v0, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyEvent:Landroid/view/KeyEvent;

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v20

    if-eqz v20, :cond_9

    const/16 v10, 0x3b

    new-instance v4, Landroid/view/KeyEvent;

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    move-wide/from16 v5, p3

    move-wide/from16 v7, p3

    invoke-direct/range {v4 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    :cond_a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInSpaceKey:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->setInLangaugeChanging(Z)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHwrTracker:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInShiftKey:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInCtrlKey:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isQuickCangieMode()Z

    move-result v23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v24

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getNumberAndSymbolsKeypadType()I

    move-result v21

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-nez v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->isEnableSpaceLanguageChange()Z

    move-result v4

    if-eqz v4, :cond_e

    const/16 v4, 0x20

    move/from16 v0, v17

    if-ne v0, v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v4

    if-nez v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_c

    const/4 v4, 0x2

    move/from16 v0, v21

    if-ne v0, v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    if-nez v23, :cond_d

    if-eqz v24, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v4

    if-nez v4, :cond_e

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInSpaceKey:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->setInLangaugeChanging(Z)V

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mDownXPointInSpaceKey:I

    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getPressedShiftKeyCode()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftHoldOn(Z)V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mLastTapTime:J

    const-wide/16 v6, 0x12c

    add-long/2addr v4, v6

    cmp-long v4, p3, v4

    if-gtz v4, :cond_f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mLastInputIndex:I

    move/from16 v0, v16

    if-eq v0, v4, :cond_10

    :cond_f
    const-wide/16 v4, -0x1

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mLastTapTime:J

    const/16 v4, -0xff

    move-object/from16 v0, p0

    iput v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mLastInputIndex:I

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v4, :cond_14

    sget-boolean v4, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownFunctionKey:Z

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-wide/from16 v2, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->setShiftkeyStateUp(IJ)V

    :cond_11
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsTabletMode:Z

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isTouchExplorationEnabled()Z

    move-result v4

    if-nez v4, :cond_12

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-nez v4, :cond_12

    const/16 v4, -0x3e8

    move/from16 v0, v17

    if-ne v0, v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v4

    if-nez v4, :cond_12

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInCtrlKey:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/InputManager;->setCtrlPressedState(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->updateCtrlState()V

    :cond_12
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyAlreadyProcessed:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsRepeatableKey:Z

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mAlreadyComposedKeyIndex:I

    const/16 v4, -0x6b

    move/from16 v0, v17

    if-ne v0, v4, :cond_1e

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHwrDownPointX:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHwrDownPointY:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    move/from16 v0, p1

    move/from16 v1, p2

    move-wide/from16 v2, p3

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->handleHwrTouchDown(IIJ)Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-nez v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getLongpressTimoutDelay(I)J

    move-result-wide v5

    move/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v4, v5, v6, v0, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->startLongPressTimer(JILcom/diotek/ime/framework/view/tracker/PointerTracker;)V

    :cond_13
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHwrTracker:Z

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isTouchExplorationEnabled()Z

    move-result v4

    if-nez v4, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-nez v4, :cond_1d

    const/16 v4, -0x190

    move/from16 v0, v17

    if-eq v0, v4, :cond_15

    const/16 v4, -0x19a

    move/from16 v0, v17

    if-ne v0, v4, :cond_1d

    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCtrlPressedState()Z

    move-result v4

    if-nez v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v20

    if-eqz v20, :cond_16

    const/16 v4, -0x190

    move/from16 v0, v17

    if-ne v0, v4, :cond_19

    const/16 v10, 0x3b

    :goto_2
    new-instance v4, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x41

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    move-wide/from16 v5, p3

    move-wide/from16 v7, p3

    invoke-direct/range {v4 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyEvent:Landroid/view/KeyEvent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyEvent:Landroid/view/KeyEvent;

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPointing:Lcom/diotek/ime/framework/trace/KeyboardPointing;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/diotek/ime/framework/trace/KeyboardPointing;->setPointingShiftPressed(Z)V

    const/16 v4, -0xff

    move/from16 v0, v22

    if-eq v0, v4, :cond_17

    move/from16 v0, v22

    move/from16 v1, v17

    if-ne v0, v1, :cond_18

    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPolicy()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1a

    :cond_18
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDownEvent()oldShiftKeyCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " keyCode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_19
    const/16 v10, 0x3c

    goto :goto_2

    :cond_1a
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInShiftKey:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v4

    if-eqz v4, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsTabletMode:Z

    if-eqz v4, :cond_1c

    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move/from16 v0, v17

    invoke-interface {v4, v0}, Lcom/diotek/ime/framework/common/ShiftStateController;->setPressedShiftKeyCode(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    goto/16 :goto_1

    :cond_1d
    const/16 v4, -0x3e

    move/from16 v0, v17

    if-ne v0, v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputController:Lcom/diotek/ime/framework/input/InputController;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/input/InputController;->setAcuteAccentPressed(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    goto/16 :goto_1

    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v4

    const v5, 0x7a68434e

    if-ne v4, v5, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_20

    :cond_1f
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->showKeyPreviewAndUpdateKey(IZ)V

    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mListener:Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;

    if-eqz v4, :cond_22

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isValidKeyIndex(I)Z

    move-result v4

    if-eqz v4, :cond_22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v16

    iget-object v5, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v6, v6, v16

    iget-object v6, v6, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->isThisKeyEnable(ILjava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mListener:Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v16

    iget-object v5, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;->onPress(I)V

    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyIndex()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isGreekKeyInvisible(I)Z

    move-result v4

    if-eqz v4, :cond_22

    add-int/lit8 v16, v16, 0x1

    :cond_22
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInSpaceKey:Z

    if-nez v4, :cond_23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_23

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    move/from16 v0, p1

    int-to-long v12, v0

    move/from16 v0, p2

    int-to-long v14, v0

    move-wide/from16 v18, p3

    invoke-interface/range {v11 .. v19}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->pressTrace(JJIIJ)Z

    :cond_23
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isValidKeyIndex(I)Z

    move-result v4

    if-eqz v4, :cond_24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v4, v4, v16

    iget-boolean v4, v4, Lcom/diotek/ime/framework/view/Keyboard$Key;->repeatable:Z

    if-eqz v4, :cond_27

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-nez v4, :cond_24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isTouchExplorationEnabled()Z

    move-result v4

    if-eqz v4, :cond_26

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isBackspaceKey(I)Z

    move-result v4

    if-eqz v4, :cond_26

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mLastTapTime:J

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    cmp-long v4, p3, v4

    if-gez v4, :cond_25

    move-object/from16 v0, p0

    iget v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mLastInputIndex:I

    move/from16 v0, v16

    if-ne v0, v4, :cond_25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    const-wide/16 v5, 0xbb8

    invoke-virtual {v4, v5, v6}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->startTextDeleteAllTimer(J)V

    :goto_3
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsRepeatableKey:Z

    :cond_24
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v4

    const v5, 0x7a68434e

    if-ne v4, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->showKeyPreviewAndUpdateKey(IZ)V

    goto/16 :goto_0

    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    const-wide/16 v5, 0xbb8

    move/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v4, v5, v6, v0, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->startKeyRepeatTimer(JILcom/diotek/ime/framework/view/tracker/PointerTracker;)V

    goto :goto_3

    :cond_26
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->repeatKey(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    const-wide/16 v5, 0x190

    move/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v4, v5, v6, v0, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->startKeyRepeatTimer(JILcom/diotek/ime/framework/view/tracker/PointerTracker;)V

    goto :goto_3

    :cond_27
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_24

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-nez v4, :cond_24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v16

    iget-object v5, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getLongpressTimoutDelay(I)J

    move-result-wide v5

    move/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v4, v5, v6, v0, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->startLongPressTimer(JILcom/diotek/ime/framework/view/tracker/PointerTracker;)V

    goto :goto_4
.end method

.method public onHoverEvent(II)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyDetector:Lcom/diotek/ime/framework/view/tracker/KeyDetector;

    invoke-virtual {v1, p1, p2, v3}, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->getKeyIndexAndNearbyCodes(IIZ)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isValidKeyIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v3

    iget-object v3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->isThisKeyEnable(ILjava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->updateHoverKey(I)V

    :cond_0
    return-void
.end method

.method public onMoveEvent(IIJ)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->onMoveEvent(IIJZLandroid/view/MotionEvent;)V

    return-void
.end method

.method public onMoveEvent(IIJZLandroid/view/MotionEvent;)V
    .locals 30

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyAlreadyProcessed:Z

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v4, :cond_0

    invoke-direct/range {p0 .. p4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isFilteringEvent(IIJ)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "FIXED_LANGUAGE_SWYPING_OPERATING_DISTANCE"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsFixedLanguageSwypingOperatingDistance:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInSpaceKey:Z

    if-eqz v4, :cond_6

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyIndex()I

    move-result v15

    if-gez v15, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsFixedLanguageSwypingOperatingDistance:Z

    if-nez v4, :cond_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v4, v4, v15

    iget-object v4, v4, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v25, v4, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mDownXPointInSpaceKey:I

    sub-int v4, p1, v4

    int-to-float v4, v4

    const/high16 v5, 0x40200000

    mul-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v29, v0

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getSpaceLanguageChangingThreshold()I

    move-result v19

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move/from16 v0, v19

    if-le v4, v0, :cond_3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsTouchedForLanguageChange:Z

    if-nez v4, :cond_3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsTouchedForLanguageChange:Z

    :cond_3
    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyIndex()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    move-object/from16 v0, v26

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->onMoveToNewKey(III)I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getLongpressTimoutDelay(I)J

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-virtual {v4, v5, v6, v15, v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->startLongPressTimer(JILcom/diotek/ime/framework/view/tracker/PointerTracker;)V

    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyIndex()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, v29

    invoke-direct {v0, v4, v1, v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->showKeyPreviewAndUpdateKey(IZI)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v15}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isMinorMoveBounce(III)Z

    move-result v4

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->resetMultiTap()V

    move-object/from16 v0, v26

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->onMoveToNewKey(III)I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getLongpressTimoutDelay(I)J

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-virtual {v4, v5, v6, v15, v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->startLongPressTimer(JILcom/diotek/ime/framework/view/tracker/PointerTracker;)V

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHwrTracker:Z

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    move/from16 v0, p1

    move/from16 v1, p2

    move-wide/from16 v2, p3

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->handleHwrTouchMove(IIJ)Z

    move-object/from16 v0, p0

    iget v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHwrDownPointX:I

    sub-int v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v20

    move-object/from16 v0, p0

    iget v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHwrDownPointY:I

    sub-int v4, p2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v21

    const/16 v4, 0xa

    move/from16 v0, v20

    if-gt v0, v4, :cond_7

    const/16 v4, 0xa

    move/from16 v0, v21

    if-le v0, v4, :cond_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelLongPressTimer()V

    goto/16 :goto_0

    :cond_8
    const/16 v18, -0x1

    move-object/from16 v0, v26

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->onMoveKey(II)I

    move-result v15

    const/4 v4, -0x1

    if-ne v15, v4, :cond_9

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->showKeyPreviewAndUpdateKey(IZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCtrlPressedState()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/InputManager;->setCtrlPressedState(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->updateCtrlState()V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isGreekKeyInvisible(I)Z

    move-result v4

    if-eqz v4, :cond_a

    add-int/lit8 v15, v15, 0x1

    :cond_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mVibKeyIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_e

    move/from16 v18, v15

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v4, v4, v15

    iget-object v4, v4, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v25, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getPressedShiftKeyCode()I

    move-result v27

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-nez v4, :cond_11

    const/16 v4, -0x190

    move/from16 v0, v25

    if-eq v0, v4, :cond_b

    const/16 v4, -0x19a

    move/from16 v0, v25

    if-ne v0, v4, :cond_11

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCtrlPressedState()Z

    move-result v4

    if-nez v4, :cond_11

    const/16 v4, -0xff

    move/from16 v0, v27

    if-eq v0, v4, :cond_c

    move/from16 v0, v27

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPolicy()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_f

    :cond_d
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMoveEvent()oldShiftKeyCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " keyCode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mVibKeyIndex:I

    move/from16 v18, v0

    goto :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v15

    iget-object v5, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->setPressedShiftKeyCode(I)V

    :cond_10
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsTabletMode:Z

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-nez v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCtrlPressedState()Z

    move-result v4

    if-eqz v4, :cond_14

    const/16 v4, -0x3e8

    move/from16 v0, v25

    if-eq v0, v4, :cond_14

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getStartX()I

    move-result v5

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getStartY()I

    move-result v6

    move-object/from16 v4, p0

    move-wide/from16 v7, p3

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->onUpEvent(IIJZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->setAlreadyProcessed()V

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-nez v4, :cond_12

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInShiftKey:Z

    if-eqz v4, :cond_12

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInShiftKey:Z

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getStartX()I

    move-result v5

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getStartY()I

    move-result v6

    move-object/from16 v4, p0

    move-wide/from16 v7, p3

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->onUpEvent(IIJZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->setAlreadyProcessed()V

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-nez v4, :cond_10

    const/16 v4, -0x190

    move/from16 v0, v27

    if-eq v0, v4, :cond_13

    const/16 v4, -0x19a

    move/from16 v0, v27

    if-ne v0, v4, :cond_10

    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/16 v5, -0xff

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->setPressedShiftKeyCode(I)V

    goto :goto_3

    :cond_14
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isValidKeyIndex(I)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyIndex()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_17

    move-object/from16 v0, v26

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->onMoveToNewKey(III)I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-nez v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getLongpressTimoutDelay(I)J

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-virtual {v4, v5, v6, v15, v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->startLongPressTimer(JILcom/diotek/ime/framework/view/tracker/PointerTracker;)V

    :cond_15
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInSpaceKey:Z

    if-nez v4, :cond_1d

    move-object/from16 v0, p0

    iget v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPreviousKey:I

    if-eq v4, v15, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1d

    if-eqz p6, :cond_1b

    invoke-virtual/range {p6 .. p6}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v28

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/4 v9, -0x1

    const/16 v24, 0x0

    :goto_5
    move/from16 v0, v24

    move/from16 v1, v28

    if-ge v0, v1, :cond_1b

    move-object/from16 v0, p6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v4

    float-to-int v0, v4

    move/from16 v22, v0

    move-object/from16 v0, p6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v4

    float-to-int v0, v4

    move/from16 v23, v0

    move-object/from16 v0, v26

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->onMoveKey(II)I

    move-result v9

    const/4 v4, -0x1

    if-ne v9, v4, :cond_1a

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->showKeyPreviewAndUpdateKey(IZ)V

    :cond_16
    :goto_6
    add-int/lit8 v24, v24, 0x1

    goto :goto_5

    :cond_17
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v15}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isMinorMoveBounce(III)Z

    move-result v4

    if-nez v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->resetMultiTap()V

    move-object/from16 v0, v26

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->onMoveToNewKey(III)I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-nez v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getLongpressTimoutDelay(I)J

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-virtual {v4, v5, v6, v15, v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->startLongPressTimer(JILcom/diotek/ime/framework/view/tracker/PointerTracker;)V

    goto/16 :goto_4

    :cond_18
    invoke-virtual/range {v26 .. v26}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyIndex()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_19

    move-object/from16 v0, v26

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->onMoveToNewKey(III)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelLongPressTimer()V

    goto/16 :goto_4

    :cond_19
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v15}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isMinorMoveBounce(III)Z

    move-result v4

    if-nez v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->resetMultiTap()V

    move-object/from16 v0, v26

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->onMoveToNewKey(III)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelLongPressTimer()V

    goto/16 :goto_4

    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    move/from16 v0, v22

    int-to-long v5, v0

    move/from16 v0, v23

    int-to-long v7, v0

    move-wide/from16 v10, p3

    invoke-interface/range {v4 .. v11}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->moveTrace(JJIJ)Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->showKeyPreviewAndUpdateKey(IZ)V

    goto/16 :goto_6

    :cond_1b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    move/from16 v0, p1

    int-to-long v11, v0

    move/from16 v0, p2

    int-to-long v13, v0

    move-wide/from16 v16, p3

    invoke-interface/range {v10 .. v17}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->moveTrace(JJIJ)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->showKeyPreviewAndUpdateKey(IZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftState()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mXt9Version:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftState(Z)V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->updateShiftState()V

    goto/16 :goto_0

    :cond_1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isShiftKey(I)Z

    move-result v4

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInShiftKey:Z

    if-nez v4, :cond_1f

    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyIndex()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->showKeyPreviewAndUpdateKey(IZ)V

    :cond_1f
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isCtrlKey(I)Z

    move-result v4

    if-eqz v4, :cond_20

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInCtrlKey:Z

    if-nez v4, :cond_21

    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyIndex()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->showKeyPreviewAndUpdateKey(IZ)V

    :cond_21
    move-object/from16 v0, p0

    iput v15, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mVibKeyIndex:I

    invoke-static/range {v25 .. v25}, Lcom/diotek/ime/framework/util/Utils;->isBumpButton(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move/from16 v0, v18

    if-eq v0, v15, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_VIBETONZ"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v5, 0x1

    move/from16 v0, v25

    invoke-interface {v4, v0, v5}, Lcom/diotek/ime/framework/common/InputManager;->playVibrateEffect(IZ)V

    goto/16 :goto_0
.end method

.method public onNextKeyDownEvent(IIJ)V
    .locals 6

    iget v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mAlreadyComposedKeyIndex:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyAlreadyProcessed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyIndex()I

    move-result v1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v0, p3, p4, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->checkMultiTap(JI)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->detectAndSendKey(IIIJ)V

    :cond_0
    return-void
.end method

.method public onUpEvent(IIJ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->onUpEvent(IIJZ)V

    return-void
.end method

.method public onUpEvent(IIJZ)V
    .locals 37

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    const-wide/16 v6, 0x32

    move-object/from16 v0, p0

    invoke-interface {v4, v6, v7, v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->dismissPreviewbyTracker(JLcom/diotek/ime/framework/view/tracker/PointerTracker;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsFixedLanguageSwypingOperatingDistance:Z

    if-eqz p5, :cond_0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsRepeatableKey:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelKeyRepeatTimer()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelTextDeleteAllTimer()V

    :cond_0
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mVibKeyIndex:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPointing:Lcom/diotek/ime/framework/trace/KeyboardPointing;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/trace/KeyboardPointing;->isPointingAction()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelKeyRepeatTimer()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    if-nez v4, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isTouchExplorationEnabled()Z

    move-result v32

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isKoreaLanguage()Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v4

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    iget-boolean v4, v4, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mIsTracing:Z

    if-nez v4, :cond_9

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyIndex()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    # getter for: Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mDownKey:I
    invoke-static {v6}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->access$000(Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;)I

    move-result v6

    if-eq v4, v6, :cond_9

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInSpaceKey:Z

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isMiniKeyboardOnScreen()Z

    move-result v4

    if-nez v4, :cond_9

    const/4 v4, 0x1

    move/from16 v0, v28

    if-eq v0, v4, :cond_6

    const/16 v4, 0x8

    move/from16 v0, v28

    if-ne v0, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_6
    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    # getter for: Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mDownKey:I
    invoke-static {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->access$000(Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;)I

    move-result v4

    if-ltz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    # getter for: Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mDownKey:I
    invoke-static {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->access$000(Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    array-length v6, v6

    if-ge v4, v6, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    # getter for: Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mDownKey:I
    invoke-static {v6}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->access$000(Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;)I

    move-result v6

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v26, v4, v6

    :cond_7
    const/16 v4, -0x75

    move/from16 v0, v26

    if-eq v0, v4, :cond_9

    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v4, :cond_8

    const-string v4, "SamsungIME"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PT] onUpEvent - changed keyIndex, x : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", y : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mKeyState.getStartX() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getStartX()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mKeyState.getStartY() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getStartY()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", downKeyCode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getStartX()I

    move-result p1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getStartY()I

    move-result p2

    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_c

    const/4 v4, 0x1

    move/from16 v0, v28

    if-eq v0, v4, :cond_b

    const/16 v4, 0x8

    move/from16 v0, v28

    if-ne v0, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v4

    if-nez v4, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyIndex()I

    move-result v4

    invoke-static {v4}, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->onUpKey(I)V

    invoke-static {}, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->compareHiddenDrawingNumber()I

    move-result v34

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v4

    move/from16 v0, v34

    invoke-static {v4, v0}, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->doHiddenNumber(Landroid/content/Context;I)Z

    :cond_c
    if-eqz p5, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelLongPressTimer()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelLongPressSplitMoveTimer()V

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyAlreadyProcessed:Z

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInSpaceKey:Z

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyIndex()I

    move-result v5

    const/16 v36, 0x0

    const/16 v25, 0x0

    const/4 v4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->showKeyPreviewAndUpdateKey(IZ)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInSpaceKey:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsTouchedForLanguageChange:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsFixedLanguageSwypingOperatingDistance:Z

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mDownXPointInSpaceKey:I

    sub-int v4, p1, v4

    int-to-float v4, v4

    const/high16 v6, 0x3f800000

    mul-float/2addr v4, v6

    float-to-int v0, v4

    move/from16 v36, v0

    :goto_1
    if-lez v36, :cond_12

    const/16 v31, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsFixedLanguageSwypingOperatingDistance:Z

    if-eqz v4, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getCriticalValue()I

    move-result v25

    :goto_3
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getSpaceLanguageChangingThreshold()I

    move-result v33

    move/from16 v0, v25

    move/from16 v1, v33

    if-ge v0, v1, :cond_e

    move/from16 v25, v33

    :cond_e
    const/16 v30, 0x0

    if-eqz p5, :cond_15

    invoke-static/range {v36 .. v36}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move/from16 v0, v25

    if-lt v4, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->handleRangeChange(ZZ)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move/from16 v0, v31

    invoke-interface {v4, v0}, Lcom/diotek/ime/framework/common/InputManager;->toggleLanguage(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->setInLangaugeChanging(Z)V

    const/16 v30, 0x1

    :cond_10
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isValidKeyIndex(I)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v30, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->invalidateKey(I)V

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mDownXPointInSpaceKey:I

    sub-int v4, p1, v4

    int-to-float v4, v4

    const/high16 v6, 0x40400000

    mul-float/2addr v4, v6

    float-to-int v0, v4

    move/from16 v36, v0

    goto :goto_1

    :cond_12
    const/16 v31, 0x0

    goto :goto_2

    :cond_13
    const/16 v25, 0x0

    if-eqz v31, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SPACE_LANGUAGE_LEFT_CHANGABLE_CRITICAL_VALUE"

    const/16 v7, 0x12c

    invoke-interface {v4, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v25

    goto :goto_3

    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SPACE_LANGUAGE_RIGHT_CHANGABLE_CRITICAL_VALUE"

    const/16 v7, 0x12c

    invoke-interface {v4, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v25

    goto :goto_3

    :cond_15
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsTouchedForLanguageChange:Z

    if-nez v4, :cond_10

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsRepeatableKey:Z

    if-nez v4, :cond_10

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-eqz v4, :cond_16

    if-eqz v32, :cond_10

    :cond_16
    move-object/from16 v0, p0

    iget v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mAlreadyComposedKeyIndex:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    move-wide/from16 v0, p3

    invoke-interface {v4, v0, v1, v5}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->checkMultiTap(JI)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    move/from16 v6, p1

    move/from16 v7, p2

    move-wide/from16 v8, p3

    invoke-interface/range {v4 .. v9}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->detectAndSendKey(IIIJ)V

    goto :goto_4

    :cond_17
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHwrTracker:Z

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelLongPressTimer()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    move/from16 v0, p1

    move/from16 v1, p2

    move-wide/from16 v2, p3

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->handleHwrTouchUp(IIJ)Z

    goto/16 :goto_0

    :cond_18
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mFlick:Lcom/diotek/ime/framework/trace/KeyboardFlick;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/trace/KeyboardFlick;->isFlickMode()Z

    move-result v4

    if-nez v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mFlickUmlaut:Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;

    if-eqz v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mFlickUmlaut:Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->isFlickMode()Z

    move-result v4

    if-eqz v4, :cond_1f

    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getStartX()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getStartY()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->onUpKey(II)I

    move-result v5

    :goto_5
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    array-length v4, v4

    if-ge v5, v4, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isGreekKeyInvisible(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    add-int/lit8 v5, v5, 0x1

    :cond_1a
    if-ltz v5, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    array-length v4, v4

    if-ge v5, v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v12, v4, v6

    :cond_1b
    const/4 v4, 0x0

    sput-boolean v4, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownFunctionKey:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsDownInSpaceKey:Z

    if-nez v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_1c

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    move/from16 v0, p1

    int-to-long v7, v0

    move/from16 v0, p2

    int-to-long v9, v0

    move v11, v5

    move/from16 v13, p5

    invoke-interface/range {v6 .. v13}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->releaseTraceWithAnimation(JJIIZ)Z

    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isTouchExplorationEnabled()Z

    move-result v4

    if-nez v4, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-nez v4, :cond_1e

    const/16 v4, -0x66

    if-ne v12, v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v4

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCtrlPressedState()Z

    move-result v4

    if-nez v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v27

    if-eqz v27, :cond_1d

    const/16 v4, -0x190

    if-ne v12, v4, :cond_21

    const/16 v19, 0x3b

    :goto_6
    new-instance v13, Landroid/view/KeyEvent;

    const/16 v18, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x41

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x6

    move-wide/from16 v14, p3

    move-wide/from16 v16, p3

    invoke-direct/range {v13 .. v24}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v27

    invoke-interface {v0, v13}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftMomentaryState(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/16 v6, -0xff

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->setPressedShiftKeyCode(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftHoldOn(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    :cond_1e
    const/4 v4, -0x1

    if-ne v5, v4, :cond_22

    const/4 v4, -0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->showKeyPreviewAndUpdateKey(IZ)V

    goto/16 :goto_0

    :cond_1f
    invoke-direct/range {p0 .. p4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isFilteringEvent(IIJ)Z

    move-result v4

    if-eqz v4, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getDownKeyIndex()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getStartX()I

    move-result p1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getStartY()I

    move-result p2

    goto/16 :goto_5

    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->onUpKey(II)I

    move-result v5

    goto/16 :goto_5

    :cond_21
    const/16 v19, 0x3c

    goto :goto_6

    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getPressedShiftKeyCode()I

    move-result v35

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isRapidInput()Z

    move-result v4

    if-nez v4, :cond_23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isRapidInput()Z

    move-result v4

    if-nez v4, :cond_40

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->isHoverEvent()Z

    move-result v4

    if-eqz v4, :cond_23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->isFingerInput()Z

    move-result v4

    if-nez v4, :cond_40

    :cond_23
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-eqz v4, :cond_24

    if-eqz v32, :cond_40

    :cond_24
    const/16 v4, -0x190

    if-eq v12, v4, :cond_25

    const/16 v4, -0x19a

    if-ne v12, v4, :cond_40

    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCtrlPressedState()Z

    move-result v4

    if-nez v4, :cond_40

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v27

    if-eqz v27, :cond_26

    const/16 v4, -0x190

    if-ne v12, v4, :cond_28

    const/16 v19, 0x3b

    :goto_7
    new-instance v13, Landroid/view/KeyEvent;

    const/16 v18, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x6

    move-wide/from16 v14, p3

    move-wide/from16 v16, p3

    invoke-direct/range {v13 .. v24}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v27

    invoke-interface {v0, v13}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPointing:Lcom/diotek/ime/framework/trace/KeyboardPointing;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/diotek/ime/framework/trace/KeyboardPointing;->setPointingShiftPressed(Z)V

    const/16 v4, -0x190

    if-eq v12, v4, :cond_27

    const/16 v4, -0x19a

    if-ne v12, v4, :cond_2c

    :cond_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftHoldOnState()Z

    move-result v4

    if-eqz v4, :cond_2c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v4

    if-nez v4, :cond_2c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v29

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftMomentaryState()Z

    move-result v4

    if-eqz v4, :cond_29

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftMomentaryState(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/16 v6, -0xff

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->setPressedShiftKeyCode(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftHoldOn(Z)V

    const/4 v4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->showKeyPreviewAndUpdateKey(IZ)V

    goto/16 :goto_0

    :cond_28
    const/16 v19, 0x3c

    goto/16 :goto_7

    :cond_29
    if-eqz v32, :cond_2a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v6, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_VIBETONZ"

    invoke-virtual {v4, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v6, 0x0

    invoke-interface {v4, v12, v6}, Lcom/diotek/ime/framework/common/InputManager;->playVibrateEffect(IZ)V

    :cond_2a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    if-nez v29, :cond_2b

    const/4 v4, 0x1

    :goto_9
    invoke-interface {v6, v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->setCapsLockState(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftMomentaryState(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    goto :goto_8

    :cond_2b
    const/4 v4, 0x0

    goto :goto_9

    :cond_2c
    const/16 v4, -0xff

    move/from16 v0, v35

    if-eq v0, v4, :cond_2d

    move/from16 v0, v35

    if-ne v0, v12, :cond_2e

    :cond_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPolicy()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_2f

    :cond_2e
    const-string v4, "SamsungIME"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onUpEvent()oldShiftKeyCode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " keyCode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftMomentaryState()Z

    move-result v4

    if-eqz v4, :cond_30

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getSplitTapState()Z

    move-result v4

    if-eqz v4, :cond_32

    :cond_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getIsUserSelecting()Z

    move-result v4

    if-nez v4, :cond_31

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->toggleShiftState()V

    :cond_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->setSplitTapState(Z)V

    :cond_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftMomentaryState(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/16 v6, -0xff

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->setPressedShiftKeyCode(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftHoldOn(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getIsUserSelecting()Z

    move-result v4

    if-eqz v4, :cond_33

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPointing:Lcom/diotek/ime/framework/trace/KeyboardPointing;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/trace/KeyboardPointing;->isPointingAction()Z

    move-result v4

    if-eqz v4, :cond_34

    :cond_33
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    :cond_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/InputManager;->setIsUserSelecting(Z)V

    :cond_35
    :goto_a
    const/16 v4, -0x3e

    if-ne v12, v4, :cond_43

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputController:Lcom/diotek/ime/framework/input/InputController;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/input/InputController;->setAcuteAccentPressed(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputController:Lcom/diotek/ime/framework/input/InputController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/input/InputController;->getAcuteAccentSplitState()Z

    move-result v4

    if-eqz v4, :cond_36

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputController:Lcom/diotek/ime/framework/input/InputController;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/input/InputController;->updateAcuteAccentState(Z)V

    :cond_36
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputController:Lcom/diotek/ime/framework/input/InputController;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/input/InputController;->setAcuteAccentSplitState(Z)V

    :goto_b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsTabletMode:Z

    if-eqz v4, :cond_39

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-eqz v4, :cond_37

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isTouchExplorationEnabled()Z

    move-result v4

    if-eqz v4, :cond_39

    :cond_37
    const/16 v4, -0x3e8

    if-eq v12, v4, :cond_38

    const/16 v4, -0x6c

    if-eq v12, v4, :cond_38

    const/16 v4, -0x75

    if-eq v12, v4, :cond_38

    const/16 v4, -0x3e8

    if-eq v12, v4, :cond_39

    move-object/from16 v0, p0

    iget v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPointerCount:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_39

    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCtrlPressedState()Z

    move-result v4

    if-eqz v4, :cond_39

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/InputManager;->setCtrlPressedState(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->updateCtrlState()V

    :cond_39
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v5}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isMinorMoveBounce(III)Z

    move-result v4

    if-eqz v4, :cond_3a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyIndex()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyX()I

    move-result p1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyY()I

    move-result p2

    :cond_3a
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->showKeyPreviewAndUpdateKey(IZ)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsRepeatableKey:Z

    if-eqz v4, :cond_3b

    if-eqz v32, :cond_3f

    const/4 v4, -0x5

    if-ne v12, v4, :cond_3f

    :cond_3b
    const/16 v4, -0x6b

    if-eq v12, v4, :cond_3f

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-eqz v4, :cond_3c

    if-eqz v32, :cond_3f

    :cond_3c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mAlreadyComposedKeyIndex:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_3f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    move-wide/from16 v0, p3

    invoke-interface {v4, v0, v1, v5}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->checkMultiTap(JI)V

    if-eqz v32, :cond_48

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isRapidInput()Z

    move-result v4

    if-nez v4, :cond_46

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->isFingerInput()Z

    move-result v4

    if-eqz v4, :cond_3d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->isHoverEvent()Z

    move-result v4

    if-eqz v4, :cond_3e

    :cond_3d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->isFingerInput()Z

    move-result v4

    if-nez v4, :cond_45

    :cond_3e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    move/from16 v6, p1

    move/from16 v7, p2

    move-wide/from16 v8, p3

    invoke-interface/range {v4 .. v9}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->detectAndSendKey(IIIJ)V

    :cond_3f
    :goto_c
    move-object/from16 v0, p0

    iput v5, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mLastInputIndex:I

    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mLastTapTime:J

    const/4 v4, -0x5

    if-ne v12, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->updateVOHWRSuggestion()V

    goto/16 :goto_0

    :cond_40
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-eqz v4, :cond_41

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isTouchExplorationEnabled()Z

    move-result v4

    if-eqz v4, :cond_42

    :cond_41
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v4

    if-eqz v4, :cond_42

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftMomentaryState(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftState()Z

    move-result v4

    if-eqz v4, :cond_35

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->setSplitTapState(Z)V

    goto/16 :goto_a

    :cond_42
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPointing:Lcom/diotek/ime/framework/trace/KeyboardPointing;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/trace/KeyboardPointing;->isPointingAction()Z

    move-result v4

    if-eqz v4, :cond_35

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPointing:Lcom/diotek/ime/framework/trace/KeyboardPointing;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/trace/KeyboardPointing;->getPointingShiftPressed()Z

    move-result v4

    if-nez v4, :cond_35

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/InputManager;->setIsUserSelecting(Z)V

    goto/16 :goto_a

    :cond_43
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputController:Lcom/diotek/ime/framework/input/InputController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/input/InputController;->getAcuteAccentPressed()Z

    move-result v4

    if-eqz v4, :cond_44

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputController:Lcom/diotek/ime/framework/input/InputController;

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/input/InputController;->setAcuteAccentSplitState(Z)V

    goto/16 :goto_b

    :cond_44
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputController:Lcom/diotek/ime/framework/input/InputController;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/input/InputController;->setAcuteAccentSplitState(Z)V

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->setAccuteState(Z)V

    goto/16 :goto_b

    :cond_45
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->setHoverEvent(Z)V

    goto/16 :goto_c

    :cond_46
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v4}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->isHoverEvent()Z

    move-result v4

    if-nez v4, :cond_47

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isMiniKeyboardOnScreen()Z

    move-result v4

    if-eqz v4, :cond_3f

    :cond_47
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    move/from16 v6, p1

    move/from16 v7, p2

    move-wide/from16 v8, p3

    invoke-interface/range {v4 .. v9}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->detectAndSendKey(IIIJ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->setHoverEvent(Z)V

    goto/16 :goto_c

    :cond_48
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    move/from16 v6, p1

    move/from16 v7, p2

    move-wide/from16 v8, p3

    invoke-interface/range {v4 .. v9}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->detectAndSendKey(IIIJ)V

    goto/16 :goto_c
.end method

.method public repeatKey(I)V
    .locals 7

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->getKey(I)Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    iget v2, v6, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    iget v3, v6, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    const-wide/16 v4, -0x1

    move v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->detectAndSendKey(IIIJ)V

    :cond_0
    return-void
.end method

.method public setAlreadyComposed()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->getKeyIndex()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mAlreadyComposedKeyIndex:I

    return-void
.end method

.method public setAlreadyProcessed()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->setAlreadyProcessed(Z)V

    return-void
.end method

.method public setAlreadyProcessed(Z)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->updateKey(IZ)V

    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyAlreadyProcessed:Z

    return-void
.end method

.method public setHwrTracker(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHwrTracker:Z

    return-void
.end method

.method public setIsHoverTracker(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    return-void
.end method

.method public setKeyIndexAndNearbyCodes(II)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v0, p1, p2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->setKeyIndexAndNearbyCodes(II)V

    goto :goto_0
.end method

.method public setKeyboard([Lcom/diotek/ime/framework/view/Keyboard$Key;F)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    mul-float v0, p2, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyHysteresisDistanceSquared:I

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyState:Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->onSetKeyboard()V

    return-void
.end method

.method public setOnKeyboardActionListener(Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mListener:Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;

    return-void
.end method

.method public setPointerCount(I)V
    .locals 0

    iput p1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPointerCount:I

    return-void
.end method

.method public setPopupKeyboardTracker(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsPopupKeyboardTracker:Z

    return-void
.end method

.method public setPreviewMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPreviewMode:Z

    return-void
.end method

.method public setSymbolPopupKeyboardTracker(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsSymbolPopupKeyboardTracker:Z

    return-void
.end method

.method public updateHoverKey(I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPreviousHoverKey:I

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isValidKeyIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    iget v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPreviousHoverKey:I

    invoke-interface {v1, v2, p0, v3}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->invalidateHoverKey(ILcom/diotek/ime/framework/view/tracker/PointerTracker;Z)V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->initPreviousHoverKey()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPreviousHoverKey:I

    iput p1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPreviousHoverKey:I

    if-eq p1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isValidKeyIndex(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v1, v0, p0, v3}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->invalidateHoverKey(ILcom/diotek/ime/framework/view/tracker/PointerTracker;Z)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isValidKeyIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    const/4 v2, 0x1

    invoke-interface {v1, p1, p0, v2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->invalidateHoverKey(ILcom/diotek/ime/framework/view/tracker/PointerTracker;Z)V

    goto :goto_0
.end method

.method public updateKey(IZ)V
    .locals 5

    const/16 v4, 0x80

    const/16 v3, 0x100

    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeyAlreadyProcessed:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SamsungIME"

    const-string v3, "<PointTracker> - updateKey() return because mKeyAlreadyProcessed is true "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPreviousKey:I

    iput p1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mPreviousKey:I

    if-eq p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isValidKeyIndex(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, -0x1

    if-ne p1, v2, :cond_6

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcom/diotek/ime/framework/view/Keyboard$Key;->pressed:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lcom/diotek/ime/framework/view/Keyboard$Key;->onReleased(Z)V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v2, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->invalidateKey(I)V

    :cond_2
    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v2, v3, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->sendAccessibilityEvent(II)V

    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isValidKeyIndex(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_4

    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/Keyboard$Key;->onPressed()V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v2, p1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->invalidateKey(I)V

    :cond_4
    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mIsHoverTracker:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isMiniKeyboardOnScreen()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_5
    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v2, v4, p1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->sendAccessibilityEvent(II)V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v2, v3, p1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->sendAccessibilityEvent(II)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->isShiftKey(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v2, v4, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->sendAccessibilityEvent(II)V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    invoke-interface {v2, v3, v1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->sendAccessibilityEvent(II)V

    goto :goto_2

    :cond_8
    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isAccessibilityEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker;->mProxy:Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;

    const/16 v3, 0x4000

    invoke-interface {v2, v3, p1}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;->sendAccessibilityEvent(II)V

    goto/16 :goto_0
.end method
