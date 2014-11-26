.class public Lcom/diotek/ime/framework/trace/KeyboardPointing;
.super Ljava/lang/Object;
.source "KeyboardPointing.java"


# static fields
.field private static final DBG:Z = false

.field private static IS_WQXGA:Z = false

.field public static final LONGPRESS_X:I = 0x78

.field public static final LONGPRESS_Y:I = 0xfa

.field public static final MOVE_AXIS_X:I = 0x1

.field public static final MOVE_AXIS_Y:I = 0x2

.field public static MOVE_BOUNDARY:I

.field public static final MOVE_NONE:I

.field public static MOVE_THRESHOLD:I

.field private static final TAG:Ljava/lang/String;

.field public static THRESHOLD_X:I

.field public static THRESHOLD_Y:I

.field private static mInstance:Lcom/diotek/ime/framework/trace/KeyboardPointing;

.field public static sHeight:I

.field public static sWidth:I


# instance fields
.field private mBeforeX:F

.field private mBeforeY:F

.field protected mBidiFormatter:Landroid/text/BidiFormatter;

.field mContext:Landroid/content/Context;

.field private mCurrentInputMethod:I

.field private mCurrentX:F

.field private mCurrentY:F

.field mDensity:I

.field private mFirstDownX:F

.field private mFirstDownY:F

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mPointingAction:Z

.field private mPointingMode:Z

.field mPointingMotion:Landroid/view/MotionEvent;

.field private mPointingMultiTabAction:Z

.field private mPointingShiftPressed:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/diotek/ime/framework/trace/KeyboardPointing;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->TAG:Ljava/lang/String;

    const/16 v0, 0x3e

    sput v0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->MOVE_THRESHOLD:I

    const/16 v0, 0x5a

    sput v0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->MOVE_BOUNDARY:I

    const/16 v0, 0x1e

    sput v0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->THRESHOLD_X:I

    const/16 v0, 0x32

    sput v0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->THRESHOLD_Y:I

    sput v1, Lcom/diotek/ime/framework/trace/KeyboardPointing;->sWidth:I

    sput v1, Lcom/diotek/ime/framework/trace/KeyboardPointing;->sHeight:I

    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mInstance:Lcom/diotek/ime/framework/trace/KeyboardPointing;

    sput-boolean v1, Lcom/diotek/ime/framework/trace/KeyboardPointing;->IS_WQXGA:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v2, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mBidiFormatter:Landroid/text/BidiFormatter;

    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mFirstDownX:F

    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mFirstDownY:F

    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mBeforeX:F

    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mBeforeY:F

    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentX:F

    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentY:F

    iput-boolean v1, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingAction:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingMode:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingMultiTabAction:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingShiftPressed:Z

    iput v1, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentInputMethod:I

    iput-object v2, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingMotion:Landroid/view/MotionEvent;

    iput-object v2, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0xa0

    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mDensity:I

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mBidiFormatter:Landroid/text/BidiFormatter;

    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method private checkNarrowChar()Z
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    const-string v1, ""

    const-string v0, ""

    if-eqz v2, :cond_0

    invoke-interface {v2, v4, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v2, v4, v3}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/trace/KeyboardPointing;->isNarrowChar(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/trace/KeyboardPointing;->isNarrowChar(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move v3, v4

    :cond_2
    return v3
.end method

.method private getAdjectFactorForDensity(I)F
    .locals 1
    .param p1    # I

    const/high16 v0, 0x3f800000

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const/high16 v0, 0x3f800000

    goto :goto_0

    :sswitch_1
    const/high16 v0, 0x3f800000

    goto :goto_0

    :sswitch_2
    const v0, 0x3f99999a

    goto :goto_0

    :sswitch_3
    const v0, 0x3f5eb852

    goto :goto_0

    :sswitch_4
    const/high16 v0, 0x40000000

    goto :goto_0

    :sswitch_5
    const v0, 0x3f99999a

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xd5 -> :sswitch_2
        0xf0 -> :sswitch_3
        0x140 -> :sswitch_4
        0x1e0 -> :sswitch_5
    .end sparse-switch
.end method

.method private getDistance(FFFF)I
    .locals 6
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # F

    const-wide/high16 v4, 0x4000000000000000L

    sub-float v0, p1, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float v2, p2, p4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static getInstance()Lcom/diotek/ime/framework/trace/KeyboardPointing;
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mInstance:Lcom/diotek/ime/framework/trace/KeyboardPointing;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/trace/KeyboardPointing;

    invoke-direct {v0}, Lcom/diotek/ime/framework/trace/KeyboardPointing;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mInstance:Lcom/diotek/ime/framework/trace/KeyboardPointing;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mInstance:Lcom/diotek/ime/framework/trace/KeyboardPointing;

    return-object v0
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private isNarrowChar(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1    # Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    :cond_2
    const/16 v2, 0x69

    if-eq v0, v2, :cond_3

    const/16 v2, 0x6a

    if-eq v0, v2, :cond_3

    const/16 v2, 0x6c

    if-eq v0, v2, :cond_3

    const/16 v2, 0x66

    if-eq v0, v2, :cond_3

    const/16 v2, 0x74

    if-eq v0, v2, :cond_3

    const/16 v2, 0x49

    if-ne v0, v2, :cond_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isPointMovementGesture(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1    # Landroid/view/MotionEvent;

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v6, 0x2

    if-lt v4, v6, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/trace/KeyboardPointing;->getPointingShiftPressed()Z

    move-result v6

    if-nez v6, :cond_0

    iput-boolean v5, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingAction:Z

    :goto_0
    return v5

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    sget v5, Lcom/diotek/ime/framework/trace/KeyboardPointing;->MOVE_BOUNDARY:I

    int-to-float v2, v5

    iget v5, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mFirstDownX:F

    iget v6, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mFirstDownY:F

    iget v7, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentX:F

    iget v8, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentY:F

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/diotek/ime/framework/trace/KeyboardPointing;->getDistance(FFFF)I

    move-result v0

    sget v5, Lcom/diotek/ime/framework/trace/KeyboardPointing;->MOVE_THRESHOLD:I

    int-to-float v3, v5

    invoke-direct {p0}, Lcom/diotek/ime/framework/trace/KeyboardPointing;->checkNarrowChar()Z

    move-result v5

    if-eqz v5, :cond_1

    const/high16 v5, 0x40000000

    div-float/2addr v3, v5

    :cond_1
    int-to-float v5, v0

    cmpl-float v5, v5, v3

    if-ltz v5, :cond_2

    int-to-float v5, v0

    cmpg-float v5, v5, v2

    if-gez v5, :cond_2

    const/4 v1, 0x1

    :goto_1
    move v5, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private recycleVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private resetVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    return-void
.end method


# virtual methods
.method public checkNeedMove(Landroid/view/MotionEvent;)I
    .locals 8
    .param p1    # Landroid/view/MotionEvent;

    const-wide v6, 0x3fe999999999999aL

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentX:F

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentY:F

    :goto_0
    const/4 v2, 0x0

    sget v0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->THRESHOLD_X:I

    sget v1, Lcom/diotek/ime/framework/trace/KeyboardPointing;->THRESHOLD_Y:I

    iput-object p1, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingMotion:Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/trace/KeyboardPointing;->isPointMovementGesture(Landroid/view/MotionEvent;)Z

    move-result v3

    if-ne v3, v5, :cond_0

    iput-boolean v5, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingMode:Z

    :cond_0
    iget v3, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentInputMethod:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentInputMethod:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    sget v3, Lcom/diotek/ime/framework/trace/KeyboardPointing;->THRESHOLD_X:I

    int-to-double v3, v3

    mul-double/2addr v3, v6

    double-to-int v0, v3

    sget v3, Lcom/diotek/ime/framework/trace/KeyboardPointing;->THRESHOLD_Y:I

    int-to-double v3, v3

    mul-double/2addr v3, v6

    double-to-int v1, v3

    :cond_2
    iget-boolean v3, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingMode:Z

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentX:F

    iget v4, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mBeforeX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v4, v0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    const/4 v2, 0x1

    iput-boolean v5, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingAction:Z

    :goto_1
    return v2

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentY:F

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentY:F

    iget v4, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mBeforeY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v4, v1

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    const/4 v2, 0x2

    iput-boolean v5, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingAction:Z

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingAction:Z

    const/4 v2, 0x0

    goto :goto_1
.end method

.method public finishPointing()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingMode:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingAction:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingMultiTabAction:Z

    return-void
.end method

.method public getDirectionX(Landroid/view/MotionEvent;)I
    .locals 3
    .param p1    # Landroid/view/MotionEvent;

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentX:F

    :goto_0
    iget v1, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentX:F

    iget v2, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mBeforeX:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/16 v0, 0x16

    :goto_1
    iget v1, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentX:F

    iput v1, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mBeforeX:F

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentX:F

    goto :goto_0

    :cond_1
    const/16 v0, 0x15

    goto :goto_1
.end method

.method public getDirectionY(Landroid/view/MotionEvent;)I
    .locals 3
    .param p1    # Landroid/view/MotionEvent;

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentY:F

    :goto_0
    iget v1, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentY:F

    iget v2, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mBeforeY:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/16 v0, 0x14

    :goto_1
    iget v1, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentY:F

    iput v1, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mBeforeY:F

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentY:F

    goto :goto_0

    :cond_1
    const/16 v0, 0x13

    goto :goto_1
.end method

.method public getMultiDirection()I
    .locals 12

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10, v9}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v4

    iget-object v10, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v5

    if-eqz v5, :cond_0

    check-cast v5, Lcom/diotek/ime/framework/view/PopupKeyboardView;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getSplitRightView()Landroid/view/View;

    move-result-object v5

    :cond_0
    iget-object v10, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v3

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v2

    const/16 v0, 0x56

    const/4 v1, 0x0

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v10

    iput v10, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentInputMethod:I

    iget-object v10, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090148

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v0, v10

    iget-object v10, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v10

    if-eqz v10, :cond_1

    check-cast v4, Lcom/diotek/ime/implement/view/KeyboardView;

    invoke-virtual {v4, v9}, Lcom/diotek/ime/implement/view/KeyboardView;->getOneHandLeftRightViewWidth(Z)I

    move-result v1

    :cond_1
    div-int/lit8 v6, v8, 0xa

    div-int/lit8 v7, v2, 0x7

    add-int/lit8 v10, v1, 0x0

    int-to-float v10, v10

    iget-object v11, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingMotion:Landroid/view/MotionEvent;

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_3

    iget-object v10, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingMotion:Landroid/view/MotionEvent;

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    add-int v11, v6, v1

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_3

    const/16 v9, 0x15

    :cond_2
    :goto_0
    return v9

    :cond_3
    sub-int v10, v8, v6

    add-int/2addr v10, v1

    int-to-float v10, v10

    iget-object v11, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingMotion:Landroid/view/MotionEvent;

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_4

    iget-object v10, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingMotion:Landroid/view/MotionEvent;

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    add-int v11, v8, v1

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_4

    const/16 v9, 0x16

    goto :goto_0

    :cond_4
    add-int/lit8 v10, v0, 0x0

    int-to-float v10, v10

    iget-object v11, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingMotion:Landroid/view/MotionEvent;

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_5

    iget-object v10, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingMotion:Landroid/view/MotionEvent;

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    add-int v11, v7, v0

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_5

    const/16 v9, 0x13

    goto :goto_0

    :cond_5
    sub-int v10, v2, v7

    add-int/2addr v10, v0

    int-to-float v10, v10

    iget-object v11, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingMotion:Landroid/view/MotionEvent;

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_2

    iget-object v10, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingMotion:Landroid/view/MotionEvent;

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    add-int v11, v2, v0

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_2

    const/16 v9, 0x14

    goto :goto_0
.end method

.method public getPointingShiftPressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingShiftPressed:Z

    return v0
.end method

.method public init()V
    .locals 7

    const/16 v6, 0xa00

    const/16 v5, 0x640

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v3}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v4, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v4, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mDensity:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v4, v6, :cond_0

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-eq v4, v5, :cond_1

    :cond_0
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v4, v6, :cond_2

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v4, v5, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    sput-boolean v3, Lcom/diotek/ime/framework/trace/KeyboardPointing;->IS_WQXGA:Z

    iget v3, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mDensity:I

    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/trace/KeyboardPointing;->getAdjectFactorForDensity(I)F

    move-result v0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    sput v3, Lcom/diotek/ime/framework/trace/KeyboardPointing;->sWidth:I

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    sput v3, Lcom/diotek/ime/framework/trace/KeyboardPointing;->sHeight:I

    sget v3, Lcom/diotek/ime/framework/trace/KeyboardPointing;->sWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x40c00000

    mul-float/2addr v4, v0

    div-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcom/diotek/ime/framework/trace/KeyboardPointing;->MOVE_THRESHOLD:I

    sget v3, Lcom/diotek/ime/framework/trace/KeyboardPointing;->sWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x40800000

    mul-float/2addr v4, v0

    div-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcom/diotek/ime/framework/trace/KeyboardPointing;->MOVE_BOUNDARY:I

    sget v3, Lcom/diotek/ime/framework/trace/KeyboardPointing;->sWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x41c00000

    mul-float/2addr v4, v0

    div-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcom/diotek/ime/framework/trace/KeyboardPointing;->THRESHOLD_X:I

    sget v3, Lcom/diotek/ime/framework/trace/KeyboardPointing;->sHeight:I

    int-to-float v3, v3

    const/high16 v4, 0x41200000

    mul-float/2addr v4, v0

    div-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcom/diotek/ime/framework/trace/KeyboardPointing;->THRESHOLD_Y:I

    sget-boolean v3, Lcom/diotek/ime/framework/trace/KeyboardPointing;->IS_WQXGA:Z

    if-eqz v3, :cond_3

    sget v3, Lcom/diotek/ime/framework/trace/KeyboardPointing;->THRESHOLD_X:I

    div-int/lit8 v3, v3, 0x2

    sput v3, Lcom/diotek/ime/framework/trace/KeyboardPointing;->THRESHOLD_X:I

    :cond_3
    return-void
.end method

.method public isPointingAction()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingAction:Z

    return v0
.end method

.method public isPointingMultiTabAction()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingMultiTabAction:Z

    return v0
.end method

.method public onDownKeyEvent(I)V
    .locals 23
    .param p1    # I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getEditorEnterAction()I

    move-result v17

    const/16 v21, 0x0

    const/16 v16, 0x0

    const/16 v22, 0x0

    const/16 v5, 0x13

    move/from16 v0, p1

    if-eq v0, v5, :cond_1

    const/16 v5, 0x14

    move/from16 v0, p1

    if-eq v0, v5, :cond_1

    const/16 v5, 0x15

    move/from16 v0, p1

    if-eq v0, v5, :cond_1

    const/16 v5, 0x16

    move/from16 v0, p1

    if-eq v0, v5, :cond_1

    sget-object v5, Lcom/diotek/ime/framework/trace/KeyboardPointing;->TAG:Ljava/lang/String;

    const-string v6, "keyEventCode is not DPAD direction"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v19, :cond_2

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v21

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v16

    :try_start_0
    new-instance v5, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v5}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v5

    iget-object v0, v5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v22, v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    if-eqz v21, :cond_8

    if-eqz v16, :cond_8

    if-eqz v22, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/trace/KeyboardPointing;->getPointingShiftPressed()Z

    move-result v5

    if-nez v5, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mBidiFormatter:Landroid/text/BidiFormatter;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/BidiFormatter;->isRtl(Ljava/lang/String;)Z

    move-result v20

    :try_start_1
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mBidiFormatter:Landroid/text/BidiFormatter;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/BidiFormatter;->isRtl(Ljava/lang/String;)Z

    move-result v20

    sget-object v5, Lcom/diotek/ime/framework/trace/KeyboardPointing;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "has ENTER, leadingChar, isRtlString : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_2
    const/4 v5, 0x3

    move/from16 v0, v17

    if-ne v0, v5, :cond_a

    if-nez v20, :cond_5

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_4

    const/16 v5, 0x16

    move/from16 v0, p1

    if-eq v0, v5, :cond_0

    :cond_4
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_5

    const/16 v5, 0x15

    move/from16 v0, p1

    if-eq v0, v5, :cond_0

    :cond_5
    if-eqz v20, :cond_7

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_6

    const/16 v5, 0x15

    move/from16 v0, p1

    if-eq v0, v5, :cond_0

    :cond_6
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_7

    const/16 v5, 0x16

    move/from16 v0, p1

    if-eq v0, v5, :cond_0

    :cond_7
    const/16 v5, 0x14

    move/from16 v0, p1

    if-eq v0, v5, :cond_0

    const/16 v5, 0x13

    move/from16 v0, p1

    if-eq v0, v5, :cond_0

    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/trace/KeyboardPointing;->getPointingShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_e

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    move-wide v4, v2

    move/from16 v7, p1

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    :goto_3
    const/16 v5, 0x102

    invoke-virtual {v1, v5}, Landroid/view/KeyEvent;->setSource(I)V

    new-instance v4, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    move-wide v7, v2

    move/from16 v10, p1

    invoke-direct/range {v4 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    const/16 v5, 0x102

    invoke-virtual {v4, v5}, Landroid/view/KeyEvent;->setSource(I)V

    if-eqz v19, :cond_0

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/trace/KeyboardPointing;->getPointingShiftPressed()Z

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto/16 :goto_0

    :catch_0
    move-exception v18

    sget-object v5, Lcom/diotek/ime/framework/trace/KeyboardPointing;->TAG:Ljava/lang/String;

    const-string v6, "NullPointerException in onDownKeyEvent"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    :try_start_2
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mBidiFormatter:Landroid/text/BidiFormatter;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/BidiFormatter;->isRtl(Ljava/lang/String;)Z

    move-result v20

    sget-object v5, Lcom/diotek/ime/framework/trace/KeyboardPointing;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "has ENTER, PrevLeadingChar, isRtlString : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v18

    sget-object v5, Lcom/diotek/ime/framework/trace/KeyboardPointing;->TAG:Ljava/lang/String;

    const-string v6, "NullPointerException, isRtlString checking in onDownKeyEvent"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_a
    if-nez v20, :cond_c

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_b

    const/16 v5, 0x16

    move/from16 v0, p1

    if-eq v0, v5, :cond_0

    :cond_b
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_c

    const/16 v5, 0x15

    move/from16 v0, p1

    if-eq v0, v5, :cond_0

    :cond_c
    if-eqz v20, :cond_8

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_d

    const/16 v5, 0x15

    move/from16 v0, p1

    if-eq v0, v5, :cond_0

    :cond_d
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_8

    const/16 v5, 0x16

    move/from16 v0, p1

    if-ne v0, v5, :cond_8

    goto/16 :goto_0

    :cond_e
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    move-wide v4, v2

    move/from16 v7, p1

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    goto/16 :goto_3
.end method

.method public setDownPosition(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mFirstDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mFirstDownY:F

    iget v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mFirstDownX:F

    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mBeforeX:F

    iget v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mFirstDownY:F

    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mBeforeY:F

    :cond_0
    return-void
.end method

.method public setDownPosition(Landroid/view/MotionEvent;I)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # I

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mFirstDownX:F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mFirstDownY:F

    iget v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mFirstDownX:F

    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mBeforeX:F

    iget v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mFirstDownY:F

    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mBeforeY:F

    :cond_0
    return-void
.end method

.method public setPointingShiftPressed(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingShiftPressed:Z

    return-void
.end method
