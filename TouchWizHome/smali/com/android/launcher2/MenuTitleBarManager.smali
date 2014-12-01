.class public Lcom/android/launcher2/MenuTitleBarManager;
.super Ljava/lang/Object;
.source "MenuTitleBarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuTitleBarManager$4;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field private static final TAG:Ljava/lang/String; = "Launcher.MenuTitleBarManager"

.field private static final TITLE_BAR_ALPHA_IN:Landroid/animation/PropertyValuesHolder;

.field private static final TITLE_BAR_ALPHA_OUT:Landroid/animation/PropertyValuesHolder;

.field private static final TITLE_BAR_SCALE_IN:F = 1.0f

.field private static final TITLE_BAR_SCALE_OUT:F = 0.9f

.field private static final TITLE_BAR_SCALE_X_IN:Landroid/animation/PropertyValuesHolder;

.field private static final TITLE_BAR_SCALE_X_OUT:Landroid/animation/PropertyValuesHolder;

.field private static final TITLE_BAR_SCALE_Y_IN:Landroid/animation/PropertyValuesHolder;

.field private static final TITLE_BAR_SCALE_Y_OUT:Landroid/animation/PropertyValuesHolder;


# instance fields
.field private mCurrentTitleBar:Landroid/view/View;

.field private mDownloadedTitleBar:Landroid/view/ViewGroup;

.field private mDownloadedTitleBarStub:Landroid/view/ViewStub;

.field private mEditTitleBar:Landroid/view/ViewGroup;

.field private mMenuEditBar:Lcom/android/launcher2/MenuEditBar;

.field private mNormalTitleBar:Landroid/view/ViewGroup;

.field private mSearchTitleBar:Landroid/view/ViewGroup;

.field private mSelectedTitleBar:Landroid/view/ViewGroup;

.field private mSelectedTitleBarStub:Landroid/view/ViewStub;

.field private mTabHost:Lcom/android/launcher2/MenuView;

.field private mTitleBarHeight:I

.field private mUninstallTitleBar:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x2

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/MenuTitleBarManager;->DEBUGGABLE:Z

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_SCALE_X_OUT:Landroid/animation/PropertyValuesHolder;

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v1, v2, [F

    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_SCALE_X_IN:Landroid/animation/PropertyValuesHolder;

    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v1, v2, [F

    fill-array-data v1, :array_2

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_SCALE_Y_OUT:Landroid/animation/PropertyValuesHolder;

    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v1, v2, [F

    fill-array-data v1, :array_3

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_SCALE_Y_IN:Landroid/animation/PropertyValuesHolder;

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v2, [F

    fill-array-data v1, :array_4

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_ALPHA_OUT:Landroid/animation/PropertyValuesHolder;

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v2, [F

    fill-array-data v1, :array_5

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_ALPHA_IN:Landroid/animation/PropertyValuesHolder;

    return-void

    :array_0
    .array-data 4
        0x3f800000
        0x3f666666
    .end array-data

    :array_1
    .array-data 4
        0x3f666666
        0x3f800000
    .end array-data

    :array_2
    .array-data 4
        0x3f800000
        0x3f666666
    .end array-data

    :array_3
    .array-data 4
        0x3f666666
        0x3f800000
    .end array-data

    :array_4
    .array-data 4
        0x3f800000
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/MenuTitleBarManager;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private getSlideDownAnimation(Ljava/util/List;Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v3, 0x2

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v3, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    new-array v1, v3, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v3, [F

    iget v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTitleBarHeight:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v3, v5

    const/4 v4, 0x0

    aput v4, v3, v6

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_ALPHA_IN:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v6

    invoke-static {p2, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getSlideUpAnimation(Ljava/util/List;Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    new-array v1, v2, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v6, [F

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v3, v5

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_ALPHA_OUT:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v6

    invoke-static {p2, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/MenuTitleBarManager$1;

    invoke-direct {v1, p0, p2}, Lcom/android/launcher2/MenuTitleBarManager$1;-><init>(Lcom/android/launcher2/MenuTitleBarManager;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public animateInTitleBar(Ljava/util/List;Landroid/view/View;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            "Z)V"
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v1, 0x3f800000

    if-eqz p3, :cond_2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-ne p2, v0, :cond_1

    invoke-virtual {p2, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_SCALE_X_IN:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v3

    const/4 v2, 0x1

    sget-object v3, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_SCALE_Y_IN:Landroid/animation/PropertyValuesHolder;

    aput-object v3, v1, v2

    sget-object v2, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_ALPHA_IN:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuTitleBarManager;->getSlideDownAnimation(Ljava/util/List;Landroid/view/View;)V

    goto :goto_1
.end method

.method public animateOutTitleBar(Ljava/util/List;Landroid/view/View;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            "Z)V"
        }
    .end annotation

    if-eqz p3, :cond_2

    if-eqz p2, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-ne p2, v7, :cond_1

    const v7, 0x3f666666

    invoke-virtual {p2, v7}, Landroid/view/View;->setScaleX(F)V

    const v7, 0x3f666666

    invoke-virtual {p2, v7}, Landroid/view/View;->setScaleY(F)V

    :goto_0
    const/16 v7, 0x8

    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {p2, v7}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-ne p2, v7, :cond_5

    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    const/4 v9, 0x0

    sget-object v10, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_SCALE_X_OUT:Landroid/animation/PropertyValuesHolder;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_SCALE_Y_OUT:Landroid/animation/PropertyValuesHolder;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    sget-object v10, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_ALPHA_OUT:Landroid/animation/PropertyValuesHolder;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v7, Lcom/android/launcher2/MenuTitleBarManager$2;

    invoke-direct {v7, p0, p2}, Lcom/android/launcher2/MenuTitleBarManager$2;-><init>(Lcom/android/launcher2/MenuTitleBarManager;Landroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v7

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-boolean v7, Lcom/android/launcher2/MenuTitleBarManager;->DEBUGGABLE:Z

    if-eqz v7, :cond_3

    const-string v7, "Launcher.MenuTitleBarManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "current page is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " count "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    const/4 v7, 0x2

    new-array v3, v7, [I

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v7, 0x1

    aget v5, v3, v7

    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v7, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v7, 0x1

    aget v6, v3, v7

    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    sub-int v8, v5, v6

    int-to-float v8, v8

    invoke-virtual {v4}, Landroid/view/View;->getPivotY()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setPivotY(F)V

    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setPivotX(F)V

    :cond_4
    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    const/4 v8, 0x2

    sget-object v9, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_5
    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuTitleBarManager;->getSlideUpAnimation(Ljava/util/List;Landroid/view/View;)V

    goto/16 :goto_1
.end method

.method public changeTitleBar(Ljava/util/List;Landroid/view/View;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            "Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mCurrentTitleBar:Landroid/view/View;

    if-ne p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mCurrentTitleBar:Landroid/view/View;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/launcher2/MenuTitleBarManager;->animateOutTitleBar(Ljava/util/List;Landroid/view/View;Z)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher2/MenuTitleBarManager;->animateInTitleBar(Ljava/util/List;Landroid/view/View;Z)V

    iput-object p2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mCurrentTitleBar:Landroid/view/View;

    goto :goto_0
.end method

.method public changeTitleBar(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/launcher2/MenuAppsGrid$State;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/launcher2/MenuTitleBarManager;->changeTitleBar(Ljava/util/List;Landroid/view/View;Z)V

    return-void
.end method

.method public changeTitleBar(Ljava/util/List;Lcom/android/launcher2/MenuWidgets$WidgetState;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/launcher2/MenuWidgets$WidgetState;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuWidgets$WidgetState;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/launcher2/MenuTitleBarManager;->changeTitleBar(Ljava/util/List;Landroid/view/View;Z)V

    return-void
.end method

.method public getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;
    .locals 9

    const/4 v5, 0x0

    const v8, 0x7f09009b

    const/4 v7, 0x0

    sget-object v4, Lcom/android/launcher2/MenuTitleBarManager$4;->$SwitchMap$com$android$launcher2$MenuAppsGrid$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    const-string v4, "Launcher.MenuTitleBarManager"

    const-string v6, "unknown state when asking for title bar"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    :goto_0
    return-object v4

    :pswitch_0
    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSelectedTitleBar:Landroid/view/ViewGroup;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSelectedTitleBarStub:Landroid/view/ViewStub;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSelectedTitleBarStub:Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSelectedTitleBar:Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSelectedTitleBarStub:Landroid/view/ViewStub;

    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSelectedTitleBar:Landroid/view/ViewGroup;

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mEditTitleBar:Landroid/view/ViewGroup;

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBarStub:Landroid/view/ViewStub;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBarStub:Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    iget-object v5, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBarStub:Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->getInflatedId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    :goto_1
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0f00c6

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    invoke-static {v4, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    if-eqz v1, :cond_1

    new-instance v4, Lcom/android/launcher2/MenuTitleBarManager$3;

    invoke-direct {v4, p0, v3}, Lcom/android/launcher2/MenuTitleBarManager$3;-><init>(Lcom/android/launcher2/MenuTitleBarManager;Landroid/widget/Toast;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v1}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/view/View;->setHoverPopupType(I)V

    invoke-virtual {v1}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    const/16 v5, 0x3035

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    invoke-virtual {v1}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    const v5, 0x7f0c0091

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v4, v5, v7}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    invoke-virtual {v1}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/HoverPopupWindow;->setFHAnimationEnabled(Z)V

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->hasMenuKey()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    goto/16 :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBarStub:Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBarStub:Landroid/view/ViewStub;

    goto/16 :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    const v6, 0x7f09009c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_2

    :pswitch_4
    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mUninstallTitleBar:Landroid/view/ViewGroup;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public getActiveTitleBarForState(Lcom/android/launcher2/MenuWidgets$WidgetState;)Landroid/view/ViewGroup;
    .locals 3

    sget-object v1, Lcom/android/launcher2/MenuTitleBarManager$4;->$SwitchMap$com$android$launcher2$MenuWidgets$WidgetState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const-string v1, "Launcher.MenuTitleBarManager"

    const-string v2, "unknown widget state when asking for title bar"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mUninstallTitleBar:Landroid/view/ViewGroup;

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    const v2, 0x7f0900b7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSearchTitleBar:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSearchTitleBar:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    const v2, 0x7f0900b6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSearchTitleBar:Landroid/view/ViewGroup;

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSearchTitleBar:Landroid/view/ViewGroup;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getEditTitleBar()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mEditTitleBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getMenuEditBar()Lcom/android/launcher2/MenuEditBar;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mMenuEditBar:Lcom/android/launcher2/MenuEditBar;

    return-object v0
.end method

.method public getTitleBarHeight()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTitleBarHeight:I

    return v0
.end method

.method public hideEditBar(Landroid/animation/Animator;Lcom/android/launcher2/MenuStateAnimatorSet;)V
    .locals 3

    invoke-virtual {p2}, Lcom/android/launcher2/MenuStateAnimatorSet;->end()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mCurrentTitleBar:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/MenuTitleBarManager;->animateInTitleBar(Ljava/util/List;Landroid/view/View;Z)V

    invoke-virtual {p2, v0}, Lcom/android/launcher2/MenuStateAnimatorSet;->buildAndStart(Ljava/util/List;)V

    return-void
.end method

.method public init(Lcom/android/launcher2/MenuView;)V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const v2, 0x7f0900aa

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    const v2, 0x7f0900b2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mEditTitleBar:Landroid/view/ViewGroup;

    const v2, 0x7f09009d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/MenuEditBar;

    iput-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mMenuEditBar:Lcom/android/launcher2/MenuEditBar;

    const v2, 0x7f0900b3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mUninstallTitleBar:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mEditTitleBar:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/FocusHelper;->TITLEBAR_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const v2, 0x7f0900b9

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSelectedTitleBar:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSelectedTitleBar:Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    const v2, 0x7f0900b8

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSelectedTitleBarStub:Landroid/view/ViewStub;

    :cond_2
    const v2, 0x7f0900b5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    if-nez v2, :cond_3

    const v2, 0x7f0900b4

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBarStub:Landroid/view/ViewStub;

    :cond_3
    iput-object p1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    iget-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mCurrentTitleBar:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0090

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTitleBarHeight:I

    goto/16 :goto_0
.end method

.method public resetTitleBar(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/MenuTitleBarManager;->setTitleBarVisibility(Landroid/view/View;I)V

    const/high16 v0, 0x3f800000

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public resetTitleBar(Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuTitleBarManager;->resetTitleBar(Landroid/view/View;)V

    return-void
.end method

.method public setEditBarClickListener(Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;)V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mEditTitleBar:Landroid/view/ViewGroup;

    const v2, 0x7f090076

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mEditTitleBar:Landroid/view/ViewGroup;

    const v2, 0x7f0900a4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mEditTitleBar:Landroid/view/ViewGroup;

    const v2, 0x7f0900a0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    const v3, 0x7f0f00ca

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    const v3, 0x7f0f00ac

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitleBarVisibility(Landroid/view/View;I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public setTitleBarVisibility(Lcom/android/launcher2/MenuAppsGrid$State;I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher2/MenuTitleBarManager;->setTitleBarVisibility(Landroid/view/View;I)V

    return-void
.end method

.method public showEditBar(ZZZZLcom/android/launcher2/MenuStateAnimatorSet;Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mMenuEditBar:Lcom/android/launcher2/MenuEditBar;

    if-eqz v0, :cond_0

    invoke-virtual {p5}, Lcom/android/launcher2/MenuStateAnimatorSet;->end()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mCurrentTitleBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/launcher2/MenuTitleBarManager;->animateOutTitleBar(Ljava/util/List;Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mMenuEditBar:Lcom/android/launcher2/MenuEditBar;

    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/MenuEditBar;->show(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;ZZZZZ)V

    invoke-virtual {p5, v2}, Lcom/android/launcher2/MenuStateAnimatorSet;->buildAndStart(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public slideDownTitleBar(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuStateAnimatorSet;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/MenuTitleBarManager;->getSlideDownAnimation(Ljava/util/List;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Lcom/android/launcher2/MenuStateAnimatorSet;->buildAndStart(Ljava/util/List;)V

    return-void
.end method

.method public slideDownTitleBar(Lcom/android/launcher2/MenuAppsGrid$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuAppsGrid$State;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/launcher2/MenuTitleBarManager;->getSlideDownAnimation(Ljava/util/List;Landroid/view/View;)V

    return-void
.end method

.method public slideUpTitleBar(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuStateAnimatorSet;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/MenuTitleBarManager;->getSlideUpAnimation(Ljava/util/List;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Lcom/android/launcher2/MenuStateAnimatorSet;->buildAndStart(Ljava/util/List;)V

    return-void
.end method

.method public slideUpTitleBar(Lcom/android/launcher2/MenuAppsGrid$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuAppsGrid$State;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/launcher2/MenuTitleBarManager;->getSlideUpAnimation(Ljava/util/List;Landroid/view/View;)V

    return-void
.end method
