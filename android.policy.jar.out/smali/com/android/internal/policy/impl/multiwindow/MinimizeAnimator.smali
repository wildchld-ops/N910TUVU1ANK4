.class public Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;
.super Ljava/lang/Object;
.source "MinimizeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "MultiPhoneWindow"


# instance fields
.field private final TOUCH_DOWN_MOVEMENT_LOOP:I

.field private coveredTrash:Landroid/widget/ImageView;

.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mCurrMoveDistance:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private mIsLongPressed:Z

.field private mIsMoveEnabled:Z

.field private mIsShowingTrash:Z

.field private mIsTouchDown:Z

.field private mMinimizeIcons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mMovements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;",
            ">;"
        }
    .end annotation
.end field

.field private final mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mNeedAnimation:Z

.field private mOldPositionX:F

.field private mOldPositionY:F

.field private mRemoveLayoutHeight:I

.field mShiftPosition:Ljava/lang/Runnable;

.field private mToken:Landroid/os/IBinder;

.field mWindow:Landroid/view/Window;

.field private mWindowManager:Landroid/view/WindowManager;

.field private removeLayout:Landroid/view/View;

.field private statusBarHeight:I

.field private topBgFoucsEffect:Landroid/widget/ImageView;

.field private trash:Landroid/view/View;

.field private trashBody:Landroid/widget/ImageView;

.field private trashCover:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->TOUCH_DOWN_MOVEMENT_LOOP:I

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMovements:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsTouchDown:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsLongPressed:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsMoveEnabled:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsShowingTrash:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mNeedAnimation:Z

    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mOldPositionX:F

    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mOldPositionY:F

    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->statusBarHeight:I

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mToken:Landroid/os/IBinder;

    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mRemoveLayoutHeight:I

    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;-><init>(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mShiftPosition:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$2;-><init>(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mToken:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    const-string v1, "multiwindow_facade"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105015f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mRemoveLayoutHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMovements:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsTouchDown:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->openTrashCoverAnimation()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->shakeTrashCoverAnimation()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->closeTrashCoverAnimation()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->scaleTrashAnimation()V

    return-void
.end method

.method private closeTrashCoverAnimation()V
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v6, -0x42b33333

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$6;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$6;-><init>(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trashCover:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 5

    const/4 v4, -0x1

    const-string v2, "MultiPhoneWindow"

    const-string v3, "MinimizeAnimator::createLayoutParams"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x578

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v3, 0x240010

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v2, 0x30

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    return-object v0
.end method

.method private getMinimizedDrawable(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->create(Landroid/app/Activity;Landroid/content/ComponentName;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;)V
    .locals 13

    const v12, 0x1050145

    const/high16 v11, 0x40400000

    const/high16 v10, 0x40000000

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v5, "MultiPhoneWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MinimizeAnimator::handleTouchDown : event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mOldPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mOldPositionY:F

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v9, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v5

    sub-float v5, v6, v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v10

    sub-float v1, v5, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    sub-float v5, v6, v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v10

    sub-float v2, v5, v6

    div-float v3, v1, v11

    div-float v4, v2, v11

    const/4 v0, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v0, v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMovements:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    invoke-direct {v6, p0, v3, v4}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;-><init>(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;FF)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsTouchDown:Z

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsLongPressed:Z

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/view/View;->setPressed(Z)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v9, :cond_1

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mShiftPosition:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mToken:Landroid/os/IBinder;

    invoke-virtual {v5, v6, v8}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setAppVisibility(Landroid/os/IBinder;Z)V

    return-void
.end method

.method private handleTouchMove(Landroid/view/MotionEvent;)V
    .locals 10

    iget v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mOldPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    cmpl-float v7, v7, v8

    if-nez v7, :cond_1

    iget v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mOldPositionY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    cmpl-float v7, v7, v8

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsLongPressed:Z

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v7

    sub-float v7, v8, v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1050145

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    sub-float v1, v7, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v7

    sub-float v7, v8, v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1050145

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    sub-float v2, v7, v8

    const/high16 v7, 0x40400000

    div-float v3, v1, v7

    const/high16 v7, 0x40400000

    div-float v4, v2, v7

    const/4 v0, 0x0

    :goto_1
    const/4 v7, 0x3

    if-ge v0, v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMovements:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    invoke-direct {v8, p0, v3, v4}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;-><init>(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;FF)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/View;->setPressed(Z)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mShiftPosition:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mToken:Landroid/os/IBinder;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setAppVisibility(Landroid/os/IBinder;Z)V

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsLongPressed:Z

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mOldPositionX:F

    sub-float v5, v7, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mOldPositionY:F

    sub-float v6, v7, v8

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_4

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMovements:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    invoke-direct {v8, p0, v5, v6}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;-><init>(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;FF)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mOldPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mOldPositionY:F

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsShowingTrash:Z

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->statusBarHeight:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->statusBarHeight:I

    iget v9, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mRemoveLayoutHeight:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_5

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->coveredTrash:Landroid/widget/ImageView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trashCover:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trashBody:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->topBgFoucsEffect:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mNeedAnimation:Z

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mNeedAnimation:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->scaleTrashAnimation()V

    goto/16 :goto_0

    :cond_4
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v8

    add-float/2addr v8, v5

    invoke-virtual {v7, v8}, Landroid/view/View;->setX(F)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v8

    add-float/2addr v8, v6

    invoke-virtual {v7, v8}, Landroid/view/View;->setY(F)V

    goto/16 :goto_2

    :cond_5
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->coveredTrash:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trashCover:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trashBody:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->topBgFoucsEffect:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trash:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->clearAnimation()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trashCover:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->clearAnimation()V

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mNeedAnimation:Z

    goto/16 :goto_0
.end method

.method private handleTouchUp(Landroid/view/MotionEvent;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "MultiPhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MinimizeAnimator::handleTouchUp : event = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsTouchDown:Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setPressed(Z)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->hide()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v6}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setAppVisibility(Landroid/os/IBinder;Z)V

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsShowingTrash:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->statusBarHeight:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->statusBarHeight:I

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mRemoveLayoutHeight:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->removeAllTasks(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->hideTrash()V

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mNeedAnimation:Z

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method private hide()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private openTrashCoverAnimation()V
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v8, -0x42b33333

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$4;-><init>(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trashCover:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private scaleTrashAnimation()V
    .locals 9

    const v2, 0x3f8ccccd

    const/high16 v1, 0x3f800000

    const/high16 v6, 0x3f000000

    const/4 v5, 0x1

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$3;-><init>(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trash:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private shakeTrashCoverAnimation()V
    .locals 8

    const/4 v7, 0x2

    const/4 v3, 0x1

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3f600000

    const/high16 v2, 0x40a00000

    const/high16 v4, 0x3f000000

    const v6, 0x3f4ccccd

    move v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$5;-><init>(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trashCover:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private show()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addWindow()Landroid/view/Window;
    .locals 5

    const/4 v2, 0x0

    const-string v3, "MultiPhoneWindow"

    const-string v4, "MinimizeAnimator::addWindow"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v3, v4, v2, v2}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    :goto_1
    return-object v2

    :cond_1
    const-string v3, "MultiPhoneWindow"

    const-string v4, "failed to create new window"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public handleLongClick()V
    .locals 2

    const-string v0, "MultiPhoneWindow"

    const-string v1, "MinimizeAnimator::handleLongClick"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsLongPressed:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mShiftPosition:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public hideTrash()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsShowingTrash:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsShowingTrash:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public initialize(II)V
    .locals 9

    const/4 v8, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMovements:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050145

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1050146

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v4}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    int-to-float v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    int-to-float v3, p2

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    invoke-direct {v3, p0, v8, v8}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;-><init>(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;FF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->resetResolvedLayoutDirection()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutDirection(I)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->show()V

    return-void
.end method

.method public isShowingTrash()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsShowingTrash:Z

    return v0
.end method

.method public makeMinimizeIcons(Z)V
    .locals 10

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getTabs()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getTabs()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/multiwindow/MultiWindowTab;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowTab;->getStackId()I

    move-result v5

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowTab;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    new-instance v3, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->getMinimizedDrawable(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "MultiPhoneWindow"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "makeMinimizeIcons componentName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    invoke-static {v7}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->create(Landroid/app/Activity;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    move-result-object v4

    new-instance v3, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "MultiPhoneWindow"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "makeMinimizeIcons componentName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->handleTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->handleTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->handleTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public removeWindow()V
    .locals 2

    const-string v0, "MultiPhoneWindow"

    const-string v1, "MinimizeAnimator::removeWindow"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    :cond_0
    return-void
.end method

.method public showTrash()V
    .locals 14

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    const v3, 0x109007c

    const/4 v4, 0x0

    invoke-virtual {v10, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    const v4, 0x102036b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trash:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    const v4, 0x102036c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->coveredTrash:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    const v4, 0x102036d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trashCover:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    const v4, 0x102036e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trashBody:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    const v4, 0x1020370

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->topBgFoucsEffect:Landroid/widget/ImageView;

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget v5, v9, Landroid/graphics/Point;->x:I

    iget v6, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mRemoveLayoutHeight:I

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v3, v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    :try_start_0
    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->statusBarHeight:I

    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/IWindowManager;->isStatusBarVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->statusBarHeight:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v11, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->statusBarHeight:I

    iput v3, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x40800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsShowingTrash:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mNeedAnimation:Z

    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method
