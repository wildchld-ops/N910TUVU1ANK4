.class public Lcom/diotek/ime/framework/trace/KeyboardFlick;
.super Ljava/lang/Object;
.source "KeyboardFlick.java"


# static fields
.field public static final FLICK_DIRECTION_DOWN:I = 0x4

.field public static final FLICK_DIRECTION_DOWN_INDEX:I = 0x4

.field public static final FLICK_DIRECTION_INVALID:I = -0x1

.field public static final FLICK_DIRECTION_LEFT:I = 0x1

.field public static final FLICK_DIRECTION_LEFT_INDEX:I = 0x1

.field public static final FLICK_DIRECTION_NEUTRAL:I = 0x0

.field public static final FLICK_DIRECTION_NEUTRAL_INDEX:I = 0x0

.field public static final FLICK_DIRECTION_RIGHT:I = 0x3

.field public static final FLICK_DIRECTION_RIGHT_INDEX:I = 0x3

.field public static final FLICK_DIRECTION_UP:I = 0x2

.field public static final FLICK_DIRECTION_UP_INDEX:I = 0x2

.field public static final LONGPRESS_X:I = 0x78

.field public static final LONGPRESS_Y:I = 0xfa

.field public static final MOVE_AXIS_X:I = 0x1

.field public static final MOVE_AXIS_Y:I = 0x2

.field public static MOVE_BOUNDARY:I

.field public static final MOVE_NONE:I

.field public static MOVE_THRESHOLD:I

.field public static THRESHOLD_X:I

.field public static THRESHOLD_Y:I

.field private static final exceptionalIndex:[[I

.field private static final exceptionalIndex_UseGlobalKey:[[I

.field private static mInstance:Lcom/diotek/ime/framework/trace/KeyboardFlick;

.field public static sHeight:I

.field public static sWidth:I


# instance fields
.field mContext:Landroid/content/Context;

.field private mCurrentInputMethod:I

.field private mCurrentX:F

.field private mCurrentY:F

.field private mDownKeyIndex:I

.field private mFirstDownX:F

.field private mFirstDownY:F

.field private mFlickKey:Lcom/diotek/ime/framework/view/Keyboard$Key;

.field private mFlickKeyIndex:I

.field private mFlickMode:Z

.field private mFlickModeStart:Z

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mPointingAction:Z

.field private mPointingMode:Z

.field mPointingMotion:Landroid/view/MotionEvent;

.field private mPointingMultiTabAction:Z

.field private mSlideModeStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/16 v0, 0x15

    new-array v0, v0, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    new-array v1, v3, [I

    aput-object v1, v0, v6

    new-array v1, v3, [I

    aput-object v1, v0, v7

    new-array v1, v3, [I

    aput-object v1, v0, v4

    const/4 v1, 0x4

    new-array v2, v3, [I

    aput-object v2, v0, v1

    new-array v1, v3, [I

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v4, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v5, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    aput-object v2, v0, v1

    sput-object v0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->exceptionalIndex:[[I

    const/16 v0, 0x16

    new-array v0, v0, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    new-array v1, v3, [I

    aput-object v1, v0, v6

    new-array v1, v3, [I

    aput-object v1, v0, v7

    new-array v1, v3, [I

    aput-object v1, v0, v4

    const/4 v1, 0x4

    new-array v2, v3, [I

    aput-object v2, v0, v1

    new-array v1, v3, [I

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v4, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v5, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    aput-object v2, v0, v1

    sput-object v0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->exceptionalIndex_UseGlobalKey:[[I

    const/16 v0, 0x3e

    sput v0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->MOVE_THRESHOLD:I

    const/16 v0, 0x5a

    sput v0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->MOVE_BOUNDARY:I

    const/16 v0, 0x1e

    sput v0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->THRESHOLD_X:I

    const/16 v0, 0x32

    sput v0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->THRESHOLD_Y:I

    sput v3, Lcom/diotek/ime/framework/trace/KeyboardFlick;->sWidth:I

    sput v3, Lcom/diotek/ime/framework/trace/KeyboardFlick;->sHeight:I

    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mInstance:Lcom/diotek/ime/framework/trace/KeyboardFlick;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x2
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        -0x1
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x2
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x1
        0x2
        -0x1
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput v1, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mFirstDownX:F

    iput v1, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mFirstDownY:F

    iput v1, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mCurrentX:F

    iput v1, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mCurrentY:F

    iput v3, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mDownKeyIndex:I

    iput-object v2, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mFlickKey:Lcom/diotek/ime/framework/view/Keyboard$Key;

    iput v3, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mFlickKeyIndex:I

    iput-boolean v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mPointingAction:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mPointingMode:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mPointingMultiTabAction:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mFlickMode:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mFlickModeStart:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mSlideModeStart:Z

    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mCurrentInputMethod:I

    iput-object v2, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mPointingMotion:Landroid/view/MotionEvent;

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method private getDirectionIndex(I)I
    .locals 3

    iget-object v1, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isUseGlobalKey()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/diotek/ime/framework/trace/KeyboardFlick;->exceptionalIndex_UseGlobalKey:[[I

    iget v2, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mFlickKeyIndex:I

    aget-object v1, v1, v2

    array-length v1, v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return p1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/diotek/ime/framework/trace/KeyboardFlick;->exceptionalIndex_UseGlobalKey:[[I

    iget v2, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mFlickKeyIndex:I

    aget-object v1, v1, v2

    array-length v1, v1

    if-ge v0, v1, :cond_5

    sget-object v1, Lcom/diotek/ime/framework/trace/KeyboardFlick;->exceptionalIndex_UseGlobalKey:[[I

    iget v2, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mFlickKeyIndex:I

    aget-object v1, v1, v2

    aget v1, v1, v0

    if-ne v1, p1, :cond_2

    move p1, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/diotek/ime/framework/trace/KeyboardFlick;->exceptionalIndex:[[I

    iget v2, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mFlickKeyIndex:I

    aget-object v1, v1, v2

    array-length v1, v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_2
    sget-object v1, Lcom/diotek/ime/framework/trace/KeyboardFlick;->exceptionalIndex:[[I

    iget v2, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mFlickKeyIndex:I

    aget-object v1, v1, v2

    array-length v1, v1

    if-ge v0, v1, :cond_5

    sget-object v1, Lcom/diotek/ime/framework/trace/KeyboardFlick;->exceptionalIndex:[[I

    iget v2, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mFlickKeyIndex:I

    aget-object v1, v1, v2

    aget v1, v1, v0

    if-ne v1, p1, :cond_4

    move p1, v0

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, -0x1

    goto :goto_0
.end method

.method public static getInstance()Lcom/diotek/ime/framework/trace/KeyboardFlick;
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mInstance:Lcom/diotek/ime/framework/trace/KeyboardFlick;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/trace/KeyboardFlick;

    invoke-direct {v0}, Lcom/diotek/ime/framework/trace/KeyboardFlick;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mInstance:Lcom/diotek/ime/framework/trace/KeyboardFlick;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mInstance:Lcom/diotek/ime/framework/trace/KeyboardFlick;

    return-object v0
.end method


# virtual methods
.method public checkNeedMove(Landroid/view/MotionEvent;)I
    .locals 14

    const-wide v12, 0x3fe999999999999aL

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    iput v10, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mCurrentX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    iput v10, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mCurrentY:F

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget v6, Lcom/diotek/ime/framework/trace/KeyboardFlick;->THRESHOLD_X:I

    sget v7, Lcom/diotek/ime/framework/trace/KeyboardFlick;->THRESHOLD_Y:I

    iput-object p1, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mPointingMotion:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    const/4 v11, 0x2

    if-le v10, v11, :cond_0

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mFlickMode:Z

    :cond_0
    iget v10, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mCurrentInputMethod:I

    const/4 v11, 0x7

    if-eq v10, v11, :cond_1

    iget v10, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mCurrentInputMethod:I

    const/16 v11, 0x8

    if-eq v10, v11, :cond_1

    iget-object v10, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    sget v10, Lcom/diotek/ime/framework/trace/KeyboardFlick;->THRESHOLD_X:I

    int-to-double v10, v10

    mul-double/2addr v10, v12

    double-to-int v6, v10

    sget v10, Lcom/diotek/ime/framework/trace/KeyboardFlick;->THRESHOLD_Y:I

    int-to-double v10, v10

    mul-double/2addr v10, v12

    double-to-int v7, v10

    :cond_2
    iget-boolean v10, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mFlickModeStart:Z

    if-eqz v10, :cond_3

    iget-boolean v10, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mFlickMode:Z

    if-eqz v10, :cond_3

    iget v10, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mCurrentX:F

    iget v11, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mFirstDownX:F

    sub-float/2addr v10, v11

    float-to-int v2, v10

    iget v10, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mCurrentY:F

    iget v11, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mFirstDownY:F

    sub-float/2addr v10, v11

    float-to-int v3, v10

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v4, 0x14

    const/16 v5, 0x14

    mul-int/lit8 v10, v1, 0x2

    if-le v0, v10, :cond_6

    if-le v2, v4, :cond_4

    const/4 v8, 0x3

    :cond_3
    :goto_0
    invoke-direct {p0, v8}, Lcom/diotek/ime/framework/trace/KeyboardFlick;->getDirectionIndex(I)I

    move-result v9

    return v9

    :cond_4
    neg-int v10, v4

    if-ge v2, v10, :cond_5

    const/4 v8, 0x1

    goto :goto_0

    :cond_5
    const/4 v8, 0x0

    goto :goto_0

    :cond_6
    if-le v3, v5, :cond_7

    const/4 v8, 0x4

    goto :goto_0

    :cond_7
    neg-int v10, v5

    if-ge v3, v10, :cond_8

    const/4 v8, 0x2

    goto :goto_0

    :cond_8
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public finishFilck()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mPointingMode:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mPointingAction:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mPointingMultiTabAction:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mFlickKeyIndex:I

    iput-boolean v1, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mFlickMode:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mFlickModeStart:Z

    return-void
.end method

.method public init()V
    .locals 3

    iget-object v1, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    sput v1, Lcom/diotek/ime/framework/trace/KeyboardFlick;->sWidth:I

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    sput v1, Lcom/diotek/ime/framework/trace/KeyboardFlick;->sHeight:I

    return-void
.end method

.method public isFlickMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mFlickModeStart:Z

    return v0
.end method

.method public isPointingMultiTabAction()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mPointingMultiTabAction:Z

    return v0
.end method

.method public setDownPosition(Landroid/view/MotionEvent;ILcom/diotek/ime/framework/view/Keyboard$Key;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mFirstDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mFirstDownY:F

    iget v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mFlickKeyIndex:I

    if-ne p2, v0, :cond_0

    iput-object p3, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mFlickKey:Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mFlickMode:Z

    :cond_0
    return-void
.end method

.method public setFlickKeyIndex(I)V
    .locals 1

    iput p1, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mFlickKeyIndex:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mFlickModeStart:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlick;->mFlickModeStart:Z

    goto :goto_0
.end method
