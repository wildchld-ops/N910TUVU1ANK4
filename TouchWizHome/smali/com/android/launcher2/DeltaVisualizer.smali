.class public Lcom/android/launcher2/DeltaVisualizer;
.super Ljava/lang/Object;
.source "DeltaVisualizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/DeltaVisualizer$AnimLayerPendingRunnable;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAnimLayerPendingRunnables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockTransform:Z

.field private final mLastDeltas:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            "Lcom/android/launcher2/PositionDelta;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayout:Lcom/android/launcher2/CellLayout;

.field private final mMainHandler:Landroid/os/Handler;

.field private final tmpRemove:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellLayout;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DeltaVisualizer;->mLastDeltas:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DeltaVisualizer;->tmpRemove:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher2/DeltaVisualizer;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/DeltaVisualizer;->mBlockTransform:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DeltaVisualizer;->mAnimLayerPendingRunnables:Ljava/util/List;

    iput-object p1, p0, Lcom/android/launcher2/DeltaVisualizer;->mLayout:Lcom/android/launcher2/CellLayout;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/DeltaVisualizer;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/DeltaVisualizer;->mAnimLayerPendingRunnables:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/DeltaVisualizer;)Ljava/util/IdentityHashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/DeltaVisualizer;->mLastDeltas:Ljava/util/IdentityHashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/BaseItem;Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/DeltaVisualizer;->getBitmapForAnim(Lcom/android/launcher2/BaseItem;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/DeltaVisualizer;)Lcom/android/launcher2/CellLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/DeltaVisualizer;->mLayout:Lcom/android/launcher2/CellLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/DeltaVisualizer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/DeltaVisualizer;->mBlockTransform:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/launcher2/DeltaVisualizer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/DeltaVisualizer;->mBlockTransform:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/AnimationLayer$Anim;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/DeltaVisualizer;->removeAllListeners(Lcom/android/launcher2/AnimationLayer$Anim;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/DeltaVisualizer;->positioningListener(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/DeltaVisualizer;->bounceOnEndListener(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/DeltaVisualizer;->bounceListner(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V

    return-void
.end method

.method private animateDelta(Lcom/android/launcher2/PositionDelta;)V
    .locals 8

    iget-object v1, p1, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/DeltaVisualizer;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->isTransitioningToShowAllApps()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v1

    sget-object v6, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-eq v1, v6, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/DeltaVisualizer;->mLastDeltas:Ljava/util/IdentityHashMap;

    iget-object v6, p1, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v1, v6}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/DeltaVisualizer;->mLastDeltas:Ljava/util/IdentityHashMap;

    iget-object v6, p1, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v1, v6}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v7, p1}, Lcom/android/launcher2/PositionDelta;->differentFrom(Lcom/android/launcher2/PositionDelta;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v3

    iget-object v1, p0, Lcom/android/launcher2/DeltaVisualizer;->mLayout:Lcom/android/launcher2/CellLayout;

    iget-object v6, p1, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v1, v6}, Lcom/android/launcher2/CellLayout;->getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v6

    invoke-direct {p0, v4, v1, v6}, Lcom/android/launcher2/DeltaVisualizer;->updateViewForSpan(Landroid/view/View;II)Z

    move-result v5

    iget-object v1, p0, Lcom/android/launcher2/DeltaVisualizer;->mLayout:Lcom/android/launcher2/CellLayout;

    iget-object v6, p1, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v1, v4, v6}, Lcom/android/launcher2/CellLayout;->onPreDeltaVisualize(Landroid/view/View;Lcom/android/launcher2/BaseItem;)V

    new-instance v0, Lcom/android/launcher2/DeltaVisualizer$1;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/DeltaVisualizer$1;-><init>(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/Launcher;Lcom/android/launcher2/AnimationLayer;Landroid/view/View;ZLcom/android/launcher2/PositionDelta;)V

    iget-object v1, p0, Lcom/android/launcher2/DeltaVisualizer;->mAnimLayerPendingRunnables:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/launcher2/DeltaVisualizer;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private bounceListner(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V
    .locals 9

    const v8, 0x3cf5c28f

    invoke-virtual {p1}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v7

    check-cast v7, Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher2/DeltaVisualizer;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/launcher2/AnimationLayer$Anim;->getFrom()[I

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    new-instance v0, Lcom/android/launcher2/DeltaVisualizer$5;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/DeltaVisualizer$5;-><init>(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/AnimationLayer$Anim;[ILandroid/view/View;Landroid/widget/ImageView;Lcom/android/launcher2/AnimationLayer;)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v0, -0x1

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const-wide/16 v0, 0x1c2

    invoke-virtual {v7, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/launcher2/DeltaVisualizer$6;

    invoke-direct {v0, p0, v7}, Lcom/android/launcher2/DeltaVisualizer$6;-><init>(Lcom/android/launcher2/DeltaVisualizer;Landroid/animation/ValueAnimator;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private bounceOnEndListener(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {p1}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher2/DeltaVisualizer$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher2/DeltaVisualizer$4;-><init>(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private finishOnEndListener(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {p1}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher2/DeltaVisualizer$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/launcher2/DeltaVisualizer$3;-><init>(Lcom/android/launcher2/DeltaVisualizer;Landroid/view/View;Lcom/android/launcher2/AnimationLayer$Anim;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private getBitmapForAnim(Lcom/android/launcher2/BaseItem;Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    instance-of v2, p2, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v2, :cond_0

    check-cast p2, Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {p2}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    instance-of v2, p2, Lcom/android/launcher2/FolderIconView;

    if-eqz v2, :cond_1

    move-object v2, p2

    check-cast v2, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->isContentDragging()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, p2

    check-cast v2, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->redrawFolderIcon()Z

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->buildDrawingCache()V

    invoke-virtual {p2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_3
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/View;->destroyDrawingCache()V

    goto :goto_0
.end method

.method private positioningListener(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V
    .locals 5

    iget-object v3, p0, Lcom/android/launcher2/DeltaVisualizer;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v3

    check-cast v3, Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/launcher2/DeltaVisualizer$2;

    invoke-direct {v4, p0, p1, v1, v0}, Lcom/android/launcher2/DeltaVisualizer$2;-><init>(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/AnimationLayer$Anim;Landroid/widget/ImageView;Lcom/android/launcher2/AnimationLayer;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private removeAllListeners(Lcom/android/launcher2/AnimationLayer$Anim;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    instance-of v1, v1, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/DeltaVisualizer;->mBlockTransform:Z

    return-void
.end method

.method private resetItem(Lcom/android/launcher2/BaseItem;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/launcher2/DeltaVisualizer;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher2/DeltaVisualizer;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3, p1}, Lcom/android/launcher2/CellLayout;->getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/launcher2/DeltaVisualizer;->updateViewForSpan(Landroid/view/View;II)Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/DeltaVisualizer;->mBlockTransform:Z

    const/4 v3, 0x0

    const/16 v4, 0x12c

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/launcher2/AnimationLayer;->updateExistingAnimationTo(Landroid/view/View;[IIZ)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/launcher2/DeltaVisualizer;->removeAllListeners(Lcom/android/launcher2/AnimationLayer$Anim;)V

    invoke-direct {p0, v0, v2}, Lcom/android/launcher2/DeltaVisualizer;->positioningListener(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V

    invoke-direct {p0, v0, v2}, Lcom/android/launcher2/DeltaVisualizer;->finishOnEndListener(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/DeltaVisualizer;->getBitmapForAnim(Lcom/android/launcher2/BaseItem;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/launcher2/AnimationLayer$Anim;->updateBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateViewForSpan(Landroid/view/View;II)Z
    .locals 8

    const/4 v1, 0x0

    instance-of v3, p1, Lcom/android/launcher2/SurfaceWidgetView;

    if-nez v3, :cond_0

    instance-of v3, p1, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v3, :cond_3

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    iput p2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iput p3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iget-object v3, p0, Lcom/android/launcher2/DeltaVisualizer;->mLayout:Lcom/android/launcher2/CellLayout;

    iget-object v3, v3, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v3, v0}, Lcom/android/launcher2/CellLayoutChildren;->setupLp(Lcom/android/launcher2/CellLayout$LayoutParams;)V

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_3

    :cond_1
    const/4 v1, 0x1

    instance-of v3, p1, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v3, :cond_4

    move-object v3, p1

    check-cast v3, Lcom/android/launcher2/SurfaceWidgetView;

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/SurfaceWidgetView;->resizeSurfaceWidgetView(II)V

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v6, v7

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_3
    return v1

    :cond_4
    instance-of v3, p1, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/DeltaVisualizer;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getSpanCalculator()Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Landroid/appwidget/AppWidgetHostView;

    iget-object v4, p0, Lcom/android/launcher2/DeltaVisualizer;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    iget v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v6, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/launcher2/WorkspaceSpanCalculator;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher2/Launcher;II)V

    iget-object v3, p0, Lcom/android/launcher2/DeltaVisualizer;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Workspace;

    iget v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v6, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move-object v4, p1

    check-cast v4, Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    iget-object v7, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/HomeWidgetItem;

    iget v4, v4, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-virtual {v3, v5, v6, v7, v4}, Lcom/android/launcher2/Workspace;->sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V

    goto :goto_0
.end method


# virtual methods
.method public reset()V
    .locals 4

    iget-object v3, p0, Lcom/android/launcher2/DeltaVisualizer;->mLastDeltas:Ljava/util/IdentityHashMap;

    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    invoke-direct {p0, v1}, Lcom/android/launcher2/DeltaVisualizer;->resetItem(Lcom/android/launcher2/BaseItem;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/DeltaVisualizer;->mLastDeltas:Ljava/util/IdentityHashMap;

    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->clear()V

    iget-object v3, p0, Lcom/android/launcher2/DeltaVisualizer;->mAnimLayerPendingRunnables:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/DeltaVisualizer;->mAnimLayerPendingRunnables:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/android/launcher2/DeltaVisualizer;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/DeltaVisualizer;->mAnimLayerPendingRunnables:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_2
    return-void
.end method

.method public updateForDeltas(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->changed()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v0}, Lcom/android/launcher2/DeltaVisualizer;->animateDelta(Lcom/android/launcher2/PositionDelta;)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/DeltaVisualizer;->mLastDeltas:Ljava/util/IdentityHashMap;

    iget-object v4, v0, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3, v4}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    invoke-direct {p0, v3}, Lcom/android/launcher2/DeltaVisualizer;->resetItem(Lcom/android/launcher2/BaseItem;)V

    iget-object v3, p0, Lcom/android/launcher2/DeltaVisualizer;->tmpRemove:Ljava/util/List;

    iget-object v4, v0, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/DeltaVisualizer;->tmpRemove:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    iget-object v3, p0, Lcom/android/launcher2/DeltaVisualizer;->mLastDeltas:Ljava/util/IdentityHashMap;

    invoke-virtual {v3, v1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/DeltaVisualizer;->tmpRemove:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_0
.end method
