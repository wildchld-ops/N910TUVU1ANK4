.class Landroid/view/GestureDetector$SurfaceTouchSharingData;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceTouchSharingData"
.end annotation


# instance fields
.field Actiond:[I

.field DiffAngle:F

.field Major:[I

.field Minor:[I

.field Nd:[I

.field SSsd:[[I

.field Sed:[[F

.field SmeanX:F

.field SmeanY:F

.field Ssd:[[I

.field SsumEccen:F

.field SsumMajor:F

.field SsumMinor:F

.field SsumSize:F

.field SsumX:F

.field SsumY:F

.field SvarX:F

.field SvarY:F

.field Sxd:[[I

.field Syd:[[I

.field public isPrintDebugLog:Z

.field mAction:I

.field mIsRotated:Z

.field mLastGetSettingVariableTime:D

.field mLastPalmSweepTouchUpTime:D

.field mMaxSize:F

.field public mMotionEvent:Landroid/view/MotionEvent;

.field public mSettingPalmSweep:I

.field public mSettingPalmTouch:I

.field public mSettingSurfaceMotionEngine:I

.field public mSettingTapAndTwist:I

.field public mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

.field mTimeGapUPDown:D

.field mTouchCnt:I

.field preSumSize:F

.field tCurrentTime:D

.field final synthetic this$0:Landroid/view/GestureDetector;


# direct methods
.method private constructor <init>(Landroid/view/GestureDetector;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/16 v5, 0xa

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->this$0:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    filled-new-array {v5, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sxd:[[I

    filled-new-array {v5, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Syd:[[I

    filled-new-array {v5, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Ssd:[[I

    filled-new-array {v5, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sed:[[F

    filled-new-array {v5, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SSsd:[[I

    new-array v0, v5, [I

    iput-object v0, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Major:[I

    new-array v0, v5, [I

    iput-object v0, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Minor:[I

    new-array v0, v4, [I

    iput-object v0, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    new-array v0, v4, [I

    iput-object v0, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Actiond:[I

    iput v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SvarX:F

    iput v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SvarY:F

    iput v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    iput v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mMaxSize:F

    iput v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumX:F

    iput v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumY:F

    iput v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    iput v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumEccen:F

    iput v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMajor:F

    iput v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMinor:F

    iput v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanX:F

    iput v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanY:F

    iput v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->preSumSize:F

    iput v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->DiffAngle:F

    iput-boolean v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mIsRotated:Z

    iput v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mSettingSurfaceMotionEngine:I

    iput v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mSettingPalmSweep:I

    iput v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mSettingPalmTouch:I

    iput v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mSettingTapAndTwist:I

    iput-wide v6, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->tCurrentTime:D

    iput-wide v6, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mLastPalmSweepTouchUpTime:D

    iput-wide v6, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTimeGapUPDown:D

    iput-wide v6, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mLastGetSettingVariableTime:D

    iput-boolean v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->isPrintDebugLog:Z

    return-void
.end method


# virtual methods
.method public Initialize()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v2, v2, v1

    aput v7, v2, v0

    iget-object v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Syd:[[I

    aget-object v2, v2, v1

    aput v7, v2, v0

    iget-object v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Ssd:[[I

    aget-object v2, v2, v1

    aput v7, v2, v0

    iget-object v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sed:[[F

    aget-object v2, v2, v1

    aput v8, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Major:[I

    aput v7, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    const/4 v6, 0x2

    aput v7, v5, v6

    aput v7, v3, v4

    aput v7, v2, v7

    iput v7, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    iput v8, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->preSumSize:F

    iput v8, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mMaxSize:F

    return-void
.end method

.method public PreUpdate(Landroid/view/MotionEvent;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    iput v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mAction:I

    iget-object v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Actiond:[I

    iget-object v6, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Actiond:[I

    aget v6, v6, v9

    aput v6, v5, v11

    iget-object v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Actiond:[I

    iget-object v6, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Actiond:[I

    aget v6, v6, v10

    aput v6, v5, v9

    iget-object v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Actiond:[I

    iget v6, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mAction:I

    aput v6, v5, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_3

    :try_start_0
    iget-object v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->this$0:Landroid/view/GestureDetector;

    iget-object v5, v5, Landroid/view/GestureDetector;->context1:Landroid/content/Context;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->this$0:Landroid/view/GestureDetector;

    iget-object v5, v5, Landroid/view/GestureDetector;->context1:Landroid/content/Context;

    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/4 v0, 0x1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_2

    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mIsRotated:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    long-to-double v5, v5

    iput-wide v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->tCurrentTime:D

    iget-wide v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->tCurrentTime:D

    iget-wide v7, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mLastPalmSweepTouchUpTime:D

    sub-double/2addr v5, v7

    iput-wide v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTimeGapUPDown:D

    iget-wide v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTimeGapUPDown:D

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_1

    iget-wide v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTimeGapUPDown:D

    const-wide/high16 v7, 0x4059000000000000L

    cmpg-double v5, v5, v7

    if-gez v5, :cond_1

    iget-object v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Actiond:[I

    aget v5, v5, v10

    if-nez v5, :cond_1

    iget-object v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Actiond:[I

    aget v5, v5, v9

    if-ne v5, v9, :cond_1

    iput v11, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mAction:I

    iget-object v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->this$0:Landroid/view/GestureDetector;

    iget-object v5, v5, Landroid/view/GestureDetector;->mPalmSweepRecognizer:Landroid/view/GestureDetector$PalmSweepRecognizer;

    # getter for: Landroid/view/GestureDetector$PalmSweepRecognizer;->mPreSweepDown:Z
    invoke-static {v5}, Landroid/view/GestureDetector$PalmSweepRecognizer;->access$700(Landroid/view/GestureDetector$PalmSweepRecognizer;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->this$0:Landroid/view/GestureDetector;

    iget-object v5, v5, Landroid/view/GestureDetector;->mPalmSweepRecognizer:Landroid/view/GestureDetector$PalmSweepRecognizer;

    # setter for: Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z
    invoke-static {v5, v9}, Landroid/view/GestureDetector$PalmSweepRecognizer;->access$802(Landroid/view/GestureDetector$PalmSweepRecognizer;Z)Z

    const-string v5, "GestureDetector"

    const-string v6, "[Surface Touch] MotionEvent change to ACTION_MOVE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v5, 0x1

    :try_start_1
    iput-boolean v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mIsRotated:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iput-boolean v10, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mIsRotated:Z

    const-string v5, "GestureDetector"

    const-string v6, "[Surface Touch] Default Rotate = false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v9, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    long-to-double v5, v5

    iput-wide v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mLastPalmSweepTouchUpTime:D

    goto :goto_1
.end method

.method public Update(Landroid/view/MotionEvent;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    iput-object p1, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mMotionEvent:Landroid/view/MotionEvent;

    iput v6, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumX:F

    iput v6, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumY:F

    iput v6, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    iput v6, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumEccen:F

    iput v6, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanX:F

    iput v6, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanY:F

    iput v6, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMajor:F

    iput v6, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMinor:F

    iput v6, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->DiffAngle:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    if-ltz v1, :cond_0

    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v5, v5, v2

    aget v5, v5, v1

    aput v5, v3, v4

    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Syd:[[I

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Syd:[[I

    aget-object v5, v5, v2

    aget v5, v5, v1

    aput v5, v3, v4

    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Ssd:[[I

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Ssd:[[I

    aget-object v5, v5, v2

    aget v5, v5, v1

    aput v5, v3, v4

    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sed:[[F

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sed:[[F

    aget-object v5, v5, v2

    aget v5, v5, v1

    aput v5, v3, v4

    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SSsd:[[I

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SSsd:[[I

    aget-object v5, v5, v2

    aget v5, v5, v1

    aput v5, v3, v4

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v3, v3, v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v3, v7

    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Syd:[[I

    aget-object v3, v3, v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v3, v7

    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Ssd:[[I

    aget-object v3, v3, v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getSurfaceSize(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v3, v7

    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sed:[[F

    aget-object v3, v3, v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getEccen(I)F

    move-result v4

    aput v4, v3, v7

    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Major:[I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getSurfaceMajor(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v3, v1

    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Minor:[I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getSurfaceMinor(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    iget-object v4, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    aget v4, v4, v8

    aput v4, v3, v9

    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    iget-object v4, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    aget v4, v4, v7

    aput v4, v3, v8

    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    aput v0, v3, v7

    iget v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    iget v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    if-ne v3, v8, :cond_3

    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v3, v3, v7

    iget-object v4, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v4, v4, v7

    aget v4, v4, v7

    aput v4, v3, v8

    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Syd:[[I

    aget-object v3, v3, v7

    iget-object v4, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Syd:[[I

    aget-object v4, v4, v7

    aget v4, v4, v7

    aput v4, v3, v8

    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v3, v3, v7

    iget-object v4, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v4, v4, v7

    aget v4, v4, v8

    aput v4, v3, v9

    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Syd:[[I

    aget-object v3, v3, v7

    iget-object v4, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Syd:[[I

    aget-object v4, v4, v7

    aget v4, v4, v8

    aput v4, v3, v9

    :cond_3
    const/4 v1, 0x0

    :goto_3
    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    aget v3, v3, v7

    if-ge v1, v3, :cond_4

    iget v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumX:F

    iget-object v4, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v4, v4, v1

    aget v4, v4, v7

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumX:F

    iget v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumY:F

    iget-object v4, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Syd:[[I

    aget-object v4, v4, v1

    aget v4, v4, v7

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumY:F

    iget v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    iget-object v4, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Ssd:[[I

    aget-object v4, v4, v1

    aget v4, v4, v7

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    iget v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMajor:F

    iget-object v4, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Major:[I

    aget v4, v4, v1

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMajor:F

    iget v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMinor:F

    iget-object v4, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Minor:[I

    aget v4, v4, v1

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMinor:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    iget v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumX:F

    iget-object v4, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    aget v4, v4, v7

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanX:F

    iget v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumY:F

    iget-object v4, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    aget v4, v4, v7

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanY:F

    iget v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMajor:F

    iget v4, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMinor:F

    div-float/2addr v3, v4

    iput v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumEccen:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSumSize()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, -0x40800000

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSumSize()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEccen()F

    move-result v3

    iput v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumEccen:F

    :cond_5
    iget v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mMaxSize:F

    iget v4, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    iget v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    iput v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mMaxSize:F

    :cond_6
    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Actiond:[I

    aget v3, v3, v7

    if-ne v3, v8, :cond_7

    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Actiond:[I

    aget v3, v3, v8

    const/4 v4, 0x6

    if-ne v3, v4, :cond_7

    iget v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->preSumSize:F

    iput v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    :cond_7
    iget v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    iput v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->preSumSize:F

    iput v6, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SvarX:F

    iput v6, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SvarY:F

    const/4 v1, 0x0

    :goto_4
    iget-object v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    aget v3, v3, v7

    if-ge v1, v3, :cond_8

    iget v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SvarX:F

    iget-object v4, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v4, v4, v1

    aget v4, v4, v7

    int-to-float v4, v4

    iget v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanX:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v5, v5, v1

    aget v5, v5, v7

    int-to-float v5, v5

    iget v6, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanX:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SvarX:F

    iget v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SvarY:F

    iget-object v4, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Syd:[[I

    aget-object v4, v4, v1

    aget v4, v4, v7

    int-to-float v4, v4

    iget v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanY:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Syd:[[I

    aget-object v5, v5, v1

    aget v5, v5, v7

    int-to-float v5, v5

    iget v6, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanY:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SvarY:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    iget v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SvarX:F

    iget-object v4, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    aget v4, v4, v7

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SvarX:F

    iget v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SvarY:F

    iget-object v4, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    aget v4, v4, v7

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SvarY:F

    iget-boolean v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->isPrintDebugLog:Z

    if-nez v3, :cond_9

    const/4 v3, 0x5

    if-lt v0, v3, :cond_9

    iput-boolean v8, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->isPrintDebugLog:Z

    :cond_9
    sget-boolean v3, Landroid/view/GestureDetector;->DEBUG:Z

    if-eqz v3, :cond_a

    iget v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    const/16 v4, 0x32

    if-ge v3, v4, :cond_a

    iget-boolean v3, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->isPrintDebugLog:Z

    if-eqz v3, :cond_a

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_a

    const-string v3, "GestureDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ST] cnt:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " N:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " x:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sxd:[[I

    aget-object v5, v5, v1

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " y:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Syd:[[I

    aget-object v5, v5, v1

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " s:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Ssd:[[I

    aget-object v5, v5, v1

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SsumEccen:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumEccen:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pa:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPalm()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sumMajor:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMajor:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sumMinor:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMinor:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SumSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SvarX:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SvarX:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SvarY:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SvarY:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_a
    return-void
.end method
