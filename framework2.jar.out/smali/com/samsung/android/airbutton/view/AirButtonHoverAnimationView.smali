.class public Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;
.super Landroid/widget/FrameLayout;
.source "AirButtonHoverAnimationView.java"


# instance fields
.field private ANIMATION_VIEW_HALF_SIZE:I

.field private DISPLAY_AREA_SHIFT_DELTA_X:I

.field private DISPLAY_AREA_SHIFT_DELTA_Y:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mAnimator:Ljava/lang/Runnable;

.field private mCurrentPoint:Landroid/graphics/Point;

.field private mFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mHandler:Landroid/os/Handler;

.field private mIsAnimating:Z

.field private mIsVisible:Z

.field private mOldPoint:Landroid/graphics/Point;

.field private mParentView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;F)V
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # F

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mParentView:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mAnimationView:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->ANIMATION_VIEW_HALF_SIZE:I

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->DISPLAY_AREA_SHIFT_DELTA_X:I

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->DISPLAY_AREA_SHIFT_DELTA_Y:I

    iput-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mCurrentPoint:Landroid/graphics/Point;

    iput-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mOldPoint:Landroid/graphics/Point;

    iput-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mIsVisible:Z

    iput-boolean v2, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mIsAnimating:Z

    new-instance v0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView$1;-><init>(Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mAnimator:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mParentView:Landroid/view/View;

    invoke-direct {p0, p2}, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->initBasicVariables(F)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;)Landroid/graphics/Point;
    .locals 1
    .param p0    # Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mCurrentPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 0
    .param p0    # Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;
    .param p1    # Landroid/graphics/Point;

    iput-object p1, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mCurrentPoint:Landroid/graphics/Point;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;)Landroid/graphics/Point;
    .locals 1
    .param p0    # Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mOldPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 0
    .param p0    # Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;
    .param p1    # Landroid/graphics/Point;

    iput-object p1, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mOldPoint:Landroid/graphics/Point;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mAnimationView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;)Ljava/lang/Runnable;
    .locals 1
    .param p0    # Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mAnimator:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initBasicVariables(F)V
    .locals 3
    .param p1    # F

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v1, v0

    mul-float/2addr v1, p1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->ANIMATION_VIEW_HALF_SIZE:I

    return-void
.end method

.method private showAnimationView(FF)V
    .locals 3
    .param p1    # F
    .param p2    # F

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mAnimationView:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mCurrentPoint:Landroid/graphics/Point;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mAnimationView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mCurrentPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mAnimationView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mCurrentPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mAnimationView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mIsVisible:Z

    const/16 v1, 0x13

    const/4 v2, -0x1

    :try_start_0
    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public hideAnimationView()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mAnimationView:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-boolean v4, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mIsVisible:Z

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mAnimationView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mAnimator:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mCurrentPoint:Landroid/graphics/Point;

    iput-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mOldPoint:Landroid/graphics/Point;

    iput-boolean v4, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mIsAnimating:Z

    iput-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mAnimationView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    const/4 v2, -0x1

    :try_start_0
    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x2

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mAnimationView:Landroid/widget/ImageView;

    if-nez v3, :cond_0

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mAnimationView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mAnimationView:Landroid/widget/ImageView;

    const v4, 0x10800e9

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mAnimationView:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    new-array v2, v8, [I

    fill-array-data v2, :array_0

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mParentView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v0, v8, [I

    fill-array-data v0, :array_1

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v2, v6

    aget v4, v0, v6

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->DISPLAY_AREA_SHIFT_DELTA_X:I

    aget v3, v2, v7

    aget v4, v0, v7

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->DISPLAY_AREA_SHIFT_DELTA_Y:I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2
    .param p1    # I

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/airbutton/AirButtonImpl;->hideHoverPointer()V

    :cond_0
    return-void
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/accessibility/AccessibilityEvent;

    const/4 v0, 0x1

    return v0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public setAnimationViewPosition(FF)V
    .locals 5
    .param p1    # F
    .param p2    # F

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->ANIMATION_VIEW_HALF_SIZE:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->DISPLAY_AREA_SHIFT_DELTA_X:I

    int-to-float v3, v3

    add-float v0, v2, v3

    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->ANIMATION_VIEW_HALF_SIZE:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->DISPLAY_AREA_SHIFT_DELTA_Y:I

    int-to-float v3, v3

    add-float v1, v2, v3

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mCurrentPoint:Landroid/graphics/Point;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mIsVisible:Z

    if-nez v2, :cond_3

    :cond_2
    new-instance v2, Landroid/graphics/Point;

    float-to-int v3, v0

    float-to-int v4, v1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mCurrentPoint:Landroid/graphics/Point;

    :cond_3
    iget-boolean v2, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mIsAnimating:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mAnimator:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mIsAnimating:Z

    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->showAnimationView(FF)V

    goto :goto_0
.end method
