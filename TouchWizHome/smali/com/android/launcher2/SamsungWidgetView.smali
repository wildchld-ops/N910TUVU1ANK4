.class public Lcom/android/launcher2/SamsungWidgetView;
.super Landroid/widget/FrameLayout;
.source "SamsungWidgetView.java"

# interfaces
.implements Lcom/android/launcher2/DynamicShadowMixin$Holder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;
    }
.end annotation


# static fields
.field private static ENABLE_SHADOW:Z


# instance fields
.field private mHasPerformedLongPress:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field final mLastTouch:[I

.field private mPendingCheckForLongPress:Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;

.field private mShadowMixin:Lcom/android/launcher2/DynamicShadowMixin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/SamsungWidgetView;->ENABLE_SHADOW:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/SamsungWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/SamsungWidgetView;->mLastTouch:[I

    invoke-direct {p0}, Lcom/android/launcher2/SamsungWidgetView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/SamsungWidgetView;)I
    .locals 1
    .param p0    # Lcom/android/launcher2/SamsungWidgetView;

    invoke-virtual {p0}, Landroid/view/View;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/SamsungWidgetView;)Z
    .locals 1
    .param p0    # Lcom/android/launcher2/SamsungWidgetView;

    iget-boolean v0, p0, Lcom/android/launcher2/SamsungWidgetView;->mHasPerformedLongPress:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/SamsungWidgetView;Z)Z
    .locals 0
    .param p0    # Lcom/android/launcher2/SamsungWidgetView;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/launcher2/SamsungWidgetView;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/SamsungWidgetView;)I
    .locals 1
    .param p0    # Lcom/android/launcher2/SamsungWidgetView;

    invoke-virtual {p0}, Landroid/view/View;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method private init()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/launcher2/SamsungWidgetView;->mInflater:Landroid/view/LayoutInflater;

    sget-boolean v0, Lcom/android/launcher2/SamsungWidgetView;->ENABLE_SHADOW:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/launcher2/DynamicShadowMixin;

    invoke-direct {v0, p0}, Lcom/android/launcher2/DynamicShadowMixin;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher2/SamsungWidgetView;->mShadowMixin:Lcom/android/launcher2/DynamicShadowMixin;

    :cond_0
    return-void
.end method

.method private postCheckForLongClick()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/SamsungWidgetView;->mHasPerformedLongPress:Z

    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetView;->mPendingCheckForLongPress:Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;-><init>(Lcom/android/launcher2/SamsungWidgetView;)V

    iput-object v0, p0, Lcom/android/launcher2/SamsungWidgetView;->mPendingCheckForLongPress:Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetView;->mPendingCheckForLongPress:Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;

    invoke-virtual {v0}, Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;->rememberWindowAttachCount()V

    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetView;->mPendingCheckForLongPress:Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->cancelLongPress()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/SamsungWidgetView;->mHasPerformedLongPress:Z

    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetView;->mPendingCheckForLongPress:Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetView;->mPendingCheckForLongPress:Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
    .param p2    # Landroid/view/View;
    .param p3    # J

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public dumpSamsungWidgetAppInfo()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher2/SamsungWidgetItem;

    if-eqz v1, :cond_0

    const-string v1, "SamsungWidgetView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public getDynamicShadowMixin()Lcom/android/launcher2/DynamicShadowMixin;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetView;->mShadowMixin:Lcom/android/launcher2/DynamicShadowMixin;

    return-object v0
.end method

.method public getErrorView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getLastTouchPoint()[I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetView;->mLastTouch:[I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 2
    .param p1    # [I
    .param p2    # Landroid/graphics/Rect;

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/SamsungWidgetView;->mShadowMixin:Lcom/android/launcher2/DynamicShadowMixin;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/SamsungWidgetView;->mShadowMixin:Lcom/android/launcher2/DynamicShadowMixin;

    invoke-virtual {v1}, Lcom/android/launcher2/DynamicShadowMixin;->invalidate()V

    :cond_0
    return-object v0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/MotionEvent;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "pen_hovering"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-boolean v2, p0, Lcom/android/launcher2/SamsungWidgetView;->mHasPerformedLongPress:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    iput-boolean v1, p0, Lcom/android/launcher2/SamsungWidgetView;->mHasPerformedLongPress:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/launcher2/SamsungWidgetView;->mLastTouch:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    iget-object v2, p0, Lcom/android/launcher2/SamsungWidgetView;->mLastTouch:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v0

    invoke-direct {p0}, Lcom/android/launcher2/SamsungWidgetView;->postCheckForLongClick()V

    goto :goto_1

    :pswitch_2
    iput-boolean v1, p0, Lcom/android/launcher2/SamsungWidgetView;->mHasPerformedLongPress:Z

    iget-object v2, p0, Lcom/android/launcher2/SamsungWidgetView;->mPendingCheckForLongPress:Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/SamsungWidgetView;->mPendingCheckForLongPress:Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;

    invoke-virtual {p0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    sget-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/MotionEvent;

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/SamsungWidgetView;->mLastTouch:[I

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/android/launcher2/SamsungWidgetView;->mLastTouch:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v4

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    :cond_2
    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/SamsungWidgetView;->cancelLongPress()V

    goto :goto_0
.end method

.method public setLastTouchPoint(II)V
    .locals 2
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetView;->mLastTouch:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetView;->mLastTouch:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    return-void
.end method
