.class public Lcom/android/launcher2/LauncherAppWidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "LauncherAppWidgetHostView.java"

# interfaces
.implements Lcom/android/launcher2/DynamicShadowMixin$Holder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;
    }
.end annotation


# static fields
.field private static ENABLE_SHADOW:Z


# instance fields
.field private final lastSpanBitmap:[I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHasPerformedLongPress:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field final mLastTouch:[I

.field private mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

.field private mShadowMixin:Lcom/android/launcher2/DynamicShadowMixin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/LauncherAppWidgetHostView;->ENABLE_SHADOW:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->lastSpanBitmap:[I

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    sget-boolean v0, Lcom/android/launcher2/LauncherAppWidgetHostView;->ENABLE_SHADOW:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/launcher2/DynamicShadowMixin;

    invoke-direct {v0, p0}, Lcom/android/launcher2/DynamicShadowMixin;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mShadowMixin:Lcom/android/launcher2/DynamicShadowMixin;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/LauncherAppWidgetHostView;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/LauncherAppWidgetHostView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/LauncherAppWidgetHostView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/LauncherAppWidgetHostView;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method private getViewBitmap()Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearFocus()V

    invoke-virtual {p0, v5}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v4

    invoke-virtual {p0, v5}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v3

    invoke-virtual {p0, v5}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v5, 0x3f800000

    invoke-virtual {p0, v5}, Landroid/view/View;->setAlpha(F)V

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method private postCheckForLongClick()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;-><init>(Lcom/android/launcher2/LauncherAppWidgetHostView;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;->rememberWindowAttachCount()V

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public bitmapNeedsUpdated(II)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->lastSpanBitmap:[I

    aget v2, v2, v0

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->lastSpanBitmap:[I

    aget v2, v2, v1

    if-eq p2, v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public cancelLongPress()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->cancelLongPress()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public getDescendantFocusability()I
    .locals 1

    const/high16 v0, 0x60000

    return v0
.end method

.method public getDynamicShadowMixin()Lcom/android/launcher2/DynamicShadowMixin;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mShadowMixin:Lcom/android/launcher2/DynamicShadowMixin;

    return-object v0
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getLastTouchPoint()[I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mShadowMixin:Lcom/android/launcher2/DynamicShadowMixin;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mShadowMixin:Lcom/android/launcher2/DynamicShadowMixin;

    invoke-virtual {v2}, Lcom/android/launcher2/DynamicShadowMixin;->invalidate()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->isInResizeMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-object v0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

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

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-boolean v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    iput-boolean v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

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
    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v0

    invoke-direct {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->postCheckForLongClick()V

    goto :goto_1

    :pswitch_2
    iput-boolean v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

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

.method public onMeasure(II)V
    .locals 3

    const/high16 v2, 0x40000000

    const/high16 v1, -0x80000000

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

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

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->cancelLongPress()V

    goto :goto_0
.end method

.method public setLastTouchPoint(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    return-void
.end method

.method public updateBitmapForSpan(Lcom/android/launcher2/CellLayout;IILcom/android/launcher2/ShadowBuilder;)Landroid/graphics/Bitmap;
    .locals 7

    invoke-virtual {p0, p2, p3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->bitmapNeedsUpdated(II)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mBitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-object v5

    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->lastSpanBitmap:[I

    const/4 v6, 0x0

    aput p2, v5, v6

    iget-object v5, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->lastSpanBitmap:[I

    const/4 v6, 0x1

    aput p3, v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v3, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iput p2, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iput p3, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/launcher2/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    iget v0, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    iget v1, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v5, v0

    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v6, v1

    invoke-virtual {p0, v0, v1, v5, v6}, Landroid/view/ViewGroup;->layout(IIII)V

    invoke-direct {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getViewBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p4, v5}, Lcom/android/launcher2/ShadowBuilder;->setBitmap(Landroid/graphics/Bitmap;)V

    iput v3, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iput v4, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iget-object v5, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
