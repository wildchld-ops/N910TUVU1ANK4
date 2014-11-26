.class public Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;
.super Ljava/lang/Object;
.source "SystemGesturesPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_TRACKED_POINTERS:I = 0x20

.field private static final SWIPE_COCKTAIL:I = 0x4

.field private static final SWIPE_FROM_BOTTOM:I = 0x2

.field private static final SWIPE_FROM_RIGHT:I = 0x3

.field private static final SWIPE_FROM_TOP:I = 0x1

.field private static final SWIPE_LEFT_CENTER_LEFT:I = 0x65

.field private static final SWIPE_NONE:I = 0x0

.field private static final SWIPE_RIGHT_CENTER_RIGHT:I = 0x64

.field private static final SWIPE_TIMEOUT_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "SystemGestures"

.field private static final UNTRACKED_POINTER:I = -0x1


# instance fields
.field private final mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

.field private mCanStartEasyOneHand:Z

.field mCocktailExtent:I

.field mCurrentRotation:I

.field private mDebugFireable:Z

.field private final mDownPointerId:[I

.field private mDownPointers:I

.field private final mDownTime:[J

.field private final mDownX:[F

.field private final mDownY:[F

.field private mFirstDownTime:J

.field private mFirstDownX:I

.field private mFirstDownY:I

.field mHasCocktailBar:Z

.field mIwm:Landroid/view/IWindowManager;

.field private mMaxReachedTime:J

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

.field private mStartFromLeft:Z

.field private final mSwipeDistanceThreshold:I

.field private mSwipeFireable:Z

.field private mSwipeFromTopMargin:I

.field private final mSwipeStartThreshold:I

.field screenHeight:I

.field screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    const/high16 v3, 0x3f000000

    const/16 v2, 0x20

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointerId:[I

    new-array v1, v2, [F

    iput-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownX:[F

    new-array v1, v2, [F

    iput-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownY:[F

    new-array v1, v2, [J

    iput-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownTime:[J

    const-string v1, "callbacks"

    invoke-static {v1, p2}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    const-string v1, "context"

    invoke-static {v1, p1}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    iget v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    iput v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42480000

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeFromTopMargin:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCurrentRotation:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mHasCocktailBar:Z

    const/high16 v1, 0x40a00000

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCocktailExtent:I

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportStyleTransition(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    invoke-direct {v1, p1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    :cond_0
    return-void
.end method

.method private captureDown(Landroid/view/MotionEvent;I)V
    .locals 5
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownX:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v2, v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownY:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v2, v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownTime:[J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    aput-wide v3, v2, v0

    :cond_0
    return-void
.end method

.method private static checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object p1
.end method

.method private detectEasyOneHandGesture(Landroid/view/MotionEvent;)I
    .locals 13
    .param p1    # Landroid/view/MotionEvent;

    const/4 v10, 0x3

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isEasyOneHandEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    div-int/lit8 v4, v9, 0x3

    iget v11, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isEasyOneHandRunning()Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v10

    :goto_0
    div-int v3, v11, v9

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isEasyOneHandRunning()Z

    move-result v11

    if-eqz v11, :cond_1

    :goto_1
    div-int v2, v9, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    float-to-int v7, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    float-to-int v8, v9

    const-string v9, "SystemGestures"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "detectEasyOneHandGesture() isRunning="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isEasyOneHandRunning()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mStartFromLeft="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mStartFromLeft:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", MoveDistanceX="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxX:I

    iget v12, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinX:I

    sub-int/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", MoveDistanceY="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxY:I

    iget v12, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinY:I

    sub-int/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mFirstDownX="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mFirstDownY="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownY:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", upX="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", upY="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", width="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mMaxX="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxX:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mMinX="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinX:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", upX-DownX="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:I

    sub-int v11, v7, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", upY-DownY="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownY:I

    sub-int v11, v8, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxX:I

    iget v10, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinX:I

    sub-int/2addr v9, v10

    if-le v9, v4, :cond_3

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxX:I

    iget v10, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinX:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxY:I

    iget v11, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinY:I

    sub-int/2addr v10, v11

    if-le v9, v10, :cond_3

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:I

    if-ltz v9, :cond_3

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:I

    sub-int v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownY:I

    sub-int v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    div-int/lit8 v9, v9, 0x4

    if-ge v0, v9, :cond_3

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenHeight:I

    div-int/lit8 v9, v9, 0x8

    if-ge v1, v9, :cond_3

    iget-wide v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownTime:J

    sub-long v9, v5, v9

    const-wide/16 v11, 0x28a

    cmp-long v9, v9, v11

    if-gez v9, :cond_3

    iget-wide v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxReachedTime:J

    sub-long v9, v5, v9

    const-wide/16 v11, 0x12c

    cmp-long v9, v9, v11

    if-gez v9, :cond_3

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:I

    if-ge v9, v3, :cond_2

    if-ge v7, v2, :cond_2

    const-string v9, "SystemGestures"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "detectEasyOneHandGesture() success left. t1="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownTime:J

    sub-long v11, v5, v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", t2="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxReachedTime:J

    sub-long v11, v5, v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0x65

    :goto_2
    return v9

    :cond_0
    const/4 v9, 0x5

    goto/16 :goto_0

    :cond_1
    const/4 v10, 0x4

    goto/16 :goto_1

    :cond_2
    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:I

    iget v10, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    sub-int/2addr v10, v3

    if-le v9, v10, :cond_3

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    sub-int/2addr v9, v2

    if-le v7, v9, :cond_3

    const-string v9, "SystemGestures"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "detectEasyOneHandGesture() success right. t1="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownTime:J

    sub-long v11, v5, v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", t2="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxReachedTime:J

    sub-long v11, v5, v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0x64

    goto :goto_2

    :cond_3
    const/4 v9, -0x1

    goto :goto_2
.end method

.method private detectSwipe(IJFF)I
    .locals 11
    .param p1    # I
    .param p2    # J
    .param p4    # F
    .param p5    # F

    iget-object v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownX:[F

    aget v4, v9, p1

    iget-object v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownY:[F

    aget v5, v9, p1

    iget-object v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownTime:[J

    aget-wide v9, v9, p1

    sub-long v2, p2, v9

    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mHasCocktailBar:Z

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCocktailExtent:I

    add-int/2addr v8, v9

    :cond_0
    int-to-float v9, v8

    cmpg-float v9, v5, v9

    if-gtz v9, :cond_5

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v9, v9

    add-float/2addr v9, v5

    cmpl-float v9, p5, v9

    if-lez v9, :cond_5

    const-wide/16 v9, 0x1f4

    cmp-long v9, v2, v9

    if-gez v9, :cond_5

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeFromTopMargin:I

    iget v9, v1, Landroid/graphics/Point;->x:I

    iget v10, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeFromTopMargin:I

    sub-int v7, v9, v10

    :cond_1
    if-eqz v6, :cond_3

    int-to-float v9, v6

    cmpl-float v9, p4, v9

    if-lez v9, :cond_5

    int-to-float v9, v7

    cmpg-float v9, p4, v9

    if-gez v9, :cond_5

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mHasCocktailBar:Z

    if-eqz v9, :cond_2

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCurrentRotation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCocktailExtent:I

    int-to-float v9, v9

    cmpg-float v9, v5, v9

    if-gez v9, :cond_2

    const/4 v9, 0x4

    :goto_0
    return v9

    :cond_2
    const/4 v9, 0x1

    goto :goto_0

    :cond_3
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mHasCocktailBar:Z

    if-eqz v9, :cond_4

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCurrentRotation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCocktailExtent:I

    int-to-float v9, v9

    cmpg-float v9, v5, v9

    if-gez v9, :cond_4

    const/4 v9, 0x4

    goto :goto_0

    :cond_4
    const/4 v9, 0x1

    goto :goto_0

    :cond_5
    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenHeight:I

    iget v10, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    cmpl-float v9, v5, v9

    if-ltz v9, :cond_7

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v9, v9

    sub-float v9, v5, v9

    cmpg-float v9, p5, v9

    if-gez v9, :cond_7

    const-wide/16 v9, 0x1f4

    cmp-long v9, v2, v9

    if-gez v9, :cond_7

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mHasCocktailBar:Z

    if-eqz v9, :cond_6

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCurrentRotation:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_6

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenHeight:I

    iget v10, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCocktailExtent:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    cmpl-float v9, v5, v9

    if-lez v9, :cond_6

    const/4 v9, 0x4

    goto :goto_0

    :cond_6
    const/4 v9, 0x2

    goto :goto_0

    :cond_7
    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    iget v10, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    cmpl-float v9, v4, v9

    if-ltz v9, :cond_9

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v9, v9

    sub-float v9, v4, v9

    cmpg-float v9, p4, v9

    if-gez v9, :cond_9

    const-wide/16 v9, 0x1f4

    cmp-long v9, v2, v9

    if-gez v9, :cond_9

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mHasCocktailBar:Z

    if-eqz v9, :cond_8

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCurrentRotation:I

    if-nez v9, :cond_8

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    iget v10, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCocktailExtent:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    cmpl-float v9, v4, v9

    if-lez v9, :cond_8

    const/4 v9, 0x4

    goto :goto_0

    :cond_8
    const/4 v9, 0x3

    goto :goto_0

    :cond_9
    int-to-float v9, v8

    cmpg-float v9, v4, v9

    if-gtz v9, :cond_a

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v9, v9

    add-float/2addr v9, v4

    cmpl-float v9, p4, v9

    if-lez v9, :cond_a

    const-wide/16 v9, 0x1f4

    cmp-long v9, v2, v9

    if-gez v9, :cond_a

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mHasCocktailBar:Z

    if-eqz v9, :cond_a

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCurrentRotation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_a

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCocktailExtent:I

    int-to-float v9, v9

    cmpg-float v9, v4, v9

    if-gez v9, :cond_a

    const/4 v9, 0x4

    goto/16 :goto_0

    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method private detectSwipe(Landroid/view/MotionEvent;)I
    .locals 20
    .param p1    # Landroid/view/MotionEvent;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v17

    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v3

    const/4 v2, -0x1

    if-eq v3, v2, :cond_3

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v15, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v4

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v6

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    move-result v19

    if-eqz v19, :cond_1

    :cond_0
    :goto_2
    return v19

    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    move-object/from16 v8, p0

    move v9, v3

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    move-result v19

    if-nez v19, :cond_0

    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    :cond_4
    const/16 v19, 0x0

    goto :goto_2
.end method

.method private findIndex(I)I
    .locals 4
    .param p1    # I

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointers:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointerId:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointers:I

    const/16 v3, 0x20

    if-eq v2, v3, :cond_2

    if-ne p1, v1, :cond_3

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointerId:[I

    iget v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointers:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointers:I

    aput p1, v1, v2

    iget v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointers:I

    add-int/lit8 v0, v1, -0x1

    goto :goto_1
.end method

.method private getWindowManager()Landroid/view/IWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mIwm:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mIwm:Landroid/view/IWindowManager;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mIwm:Landroid/view/IWindowManager;

    return-object v0
.end method

.method private updateCocktailBarInfo()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCurrentRotation:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1    # Landroid/view/MotionEvent;

    const/4 v11, 0x2

    const/4 v3, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    invoke-virtual {v8, v9, p1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->onTouchEvent(ILandroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isEasyOneHandEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    if-eq v8, v11, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownY:I

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isEasyOneHandRunning()Z

    move-result v8

    if-eqz v8, :cond_2

    move v3, v5

    :cond_2
    iget v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownY:I

    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenHeight:I

    mul-int/lit8 v8, v8, 0x2

    div-int/lit8 v8, v8, 0x3

    if-ge v5, v8, :cond_4

    iget v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:I

    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    div-int/2addr v8, v3

    if-lt v5, v8, :cond_3

    iget v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:I

    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    div-int/2addr v9, v3

    sub-int/2addr v8, v9

    if-le v5, v8, :cond_4

    :cond_3
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCanStartEasyOneHand:Z

    iget v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:I

    iput v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxX:I

    iput v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinX:I

    iget v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownY:I

    iput v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxY:I

    iput v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownTime:J

    iget v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:I

    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    div-int/2addr v8, v3

    if-ge v5, v8, :cond_5

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mStartFromLeft:Z

    :cond_4
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDebugFireable:Z

    iput v7, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointers:I

    invoke-direct {p0, p1, v7}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->updateCocktailBarInfo()V

    goto :goto_0

    :cond_5
    move v5, v7

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDebugFireable:Z

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-ge v5, v3, :cond_6

    :goto_2
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDebugFireable:Z

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDebugFireable:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;->onDebug()V

    goto/16 :goto_0

    :cond_6
    move v6, v7

    goto :goto_2

    :pswitch_3
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCanStartEasyOneHand:Z

    if-eqz v8, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v1, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v2, v8

    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinX:I

    if-le v8, v1, :cond_d

    move v8, v1

    :goto_3
    iput v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinX:I

    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxX:I

    if-le v8, v1, :cond_e

    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxX:I

    :goto_4
    iput v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxX:I

    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinY:I

    if-le v8, v2, :cond_f

    move v8, v2

    :goto_5
    iput v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinY:I

    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxY:I

    if-le v8, v2, :cond_7

    iget v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxY:I

    :cond_7
    iput v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxY:I

    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxX:I

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinX:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    div-int/lit8 v9, v9, 0x4

    if-le v8, v9, :cond_b

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isEasyOneHandRunning()Z

    move-result v8

    if-eqz v8, :cond_8

    move v3, v5

    :cond_8
    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:I

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    div-int/2addr v9, v3

    if-ge v8, v9, :cond_9

    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxX:I

    if-ge v1, v8, :cond_a

    :cond_9
    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:I

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    iget v10, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    div-int/2addr v10, v3

    sub-int/2addr v9, v10

    if-le v8, v9, :cond_b

    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinX:I

    if-gt v1, v8, :cond_b

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxReachedTime:J

    :cond_b
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    if-eqz v8, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->detectSwipe(Landroid/view/MotionEvent;)I

    move-result v4

    if-nez v4, :cond_c

    move v7, v6

    :cond_c
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    if-ne v4, v6, :cond_10

    iget-object v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromTop()V

    goto/16 :goto_0

    :cond_d
    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinX:I

    goto :goto_3

    :cond_e
    move v8, v1

    goto :goto_4

    :cond_f
    iget v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinY:I

    goto :goto_5

    :cond_10
    if-ne v4, v11, :cond_11

    iget-object v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromBottom()V

    goto/16 :goto_0

    :cond_11
    if-ne v4, v5, :cond_12

    iget-object v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromRight()V

    goto/16 :goto_0

    :cond_12
    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v1, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v2, v5

    iget-object v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v5, v1, v2}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;->onSwipeCocktail(II)V

    goto/16 :goto_0

    :pswitch_4
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCanStartEasyOneHand:Z

    if-eqz v5, :cond_13

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->detectEasyOneHandGesture(Landroid/view/MotionEvent;)I

    move-result v0

    const/16 v5, 0x65

    if-ne v0, v5, :cond_14

    iget-object v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;->onSwipeLeftCenterLeft()V

    :cond_13
    :goto_6
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCanStartEasyOneHand:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDebugFireable:Z

    goto/16 :goto_0

    :cond_14
    const/16 v5, 0x64

    if-ne v0, v5, :cond_13

    iget-object v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;->onSwipeRightCenterRight()V

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
