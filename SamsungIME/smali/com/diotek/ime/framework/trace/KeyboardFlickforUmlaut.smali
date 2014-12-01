.class public Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;
.super Ljava/lang/Object;
.source "KeyboardFlickforUmlaut.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut$FlickMessageHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

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

.field private static final FLICK_FINISHED:I = 0xa

.field public static final MOVE_NONE:I

.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;

.field public static sHeight:I

.field public static sWidth:I


# instance fields
.field mContext:Landroid/content/Context;

.field private mCurrentX:F

.field private mCurrentY:F

.field private mDownKeyIndex:I

.field private mFirstDownX:F

.field private mFirstDownY:F

.field private mFlickKey:Lcom/diotek/ime/framework/view/Keyboard$Key;

.field private mFlickKeyIndex:I

.field private mFlickMessageHandler:Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut$FlickMessageHandler;

.field private mFlickMode:Z

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mPointingAction:Z

.field private mPointingMode:Z

.field mPointingMotion:Landroid/view/MotionEvent;

.field private mPointingMultiTabAction:Z

.field private mSlideModeStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->TAG:Ljava/lang/String;

    sput v1, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->sWidth:I

    sput v1, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->sHeight:I

    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mInstance:Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput v1, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mFirstDownX:F

    iput v1, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mFirstDownY:F

    iput v1, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mCurrentX:F

    iput v1, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mCurrentY:F

    iput v3, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mDownKeyIndex:I

    iput-object v2, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mFlickKey:Lcom/diotek/ime/framework/view/Keyboard$Key;

    iput v3, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mFlickKeyIndex:I

    iput-boolean v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mPointingAction:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mPointingMode:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mPointingMultiTabAction:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mFlickMode:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mSlideModeStart:Z

    iput-object v2, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mFlickMessageHandler:Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut$FlickMessageHandler;

    iput-object v2, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mPointingMotion:Landroid/view/MotionEvent;

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    new-instance v0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut$FlickMessageHandler;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut$FlickMessageHandler;-><init>(Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mFlickMessageHandler:Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut$FlickMessageHandler;

    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mInstance:Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;

    invoke-direct {v0}, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mInstance:Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mInstance:Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;

    return-object v0
.end method


# virtual methods
.method public checkNeedMove(Landroid/view/MotionEvent;I)I
    .locals 10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iput v7, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mCurrentX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iput v7, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mCurrentY:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "flick_up_threshold_range"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F

    move-result v7

    float-to-int v4, v7

    iput-object p1, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mPointingMotion:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_0

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mFlickMode:Z

    sget-object v7, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "#### mFlickMode  : false"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mFlickMode:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  #####"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v7, 0x1

    if-ne p2, v7, :cond_1

    mul-int/lit8 v4, v4, 0x2

    :cond_1
    iget-boolean v7, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mFlickMode:Z

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mCurrentX:F

    iget v8, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mFirstDownX:F

    sub-float/2addr v7, v8

    float-to-int v2, v7

    iget v7, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mCurrentY:F

    iget v8, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mFirstDownY:F

    sub-float/2addr v7, v8

    float-to-int v3, v7

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sget-object v7, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "#### mFirstDownX  : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mFirstDownX:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mFirstDownY  : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mFirstDownY:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  #####"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "#### mCurrentX  : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mCurrentX:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mCurrentY  : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mCurrentY:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  #####"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    mul-int/lit8 v7, v1, 0x2

    if-le v0, v7, :cond_3

    invoke-virtual {p0}, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->finishFilck()V

    const/4 v5, 0x0

    :cond_2
    :goto_0
    return v5

    :cond_3
    if-le v3, v4, :cond_4

    const/4 v5, 0x4

    goto :goto_0

    :cond_4
    neg-int v7, v4

    if-ge v3, v7, :cond_5

    const/4 v5, 0x2

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public finishFilck()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mPointingMode:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mPointingAction:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mPointingMultiTabAction:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mFlickKeyIndex:I

    iput-boolean v1, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mFlickMode:Z

    return-void
.end method

.method public isFlickMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mFlickMode:Z

    return v0
.end method

.method public isPointingMultiTabAction()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mPointingMultiTabAction:Z

    return v0
.end method

.method public setDownPosition(Landroid/view/MotionEvent;ILcom/diotek/ime/framework/view/Keyboard$Key;)V
    .locals 4

    const/16 v3, 0xa

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mFirstDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mFirstDownY:F

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    iput p2, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mFlickKeyIndex:I

    iput-object p3, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mFlickKey:Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mFlickMode:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mFlickMessageHandler:Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut$FlickMessageHandler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mFlickMessageHandler:Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut$FlickMessageHandler;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/trace/KeyboardFlickforUmlaut;->mFlickMode:Z

    goto :goto_0
.end method
