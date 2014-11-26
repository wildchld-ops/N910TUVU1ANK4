.class public Lcom/android/launcher2/QuickLaunch;
.super Landroid/widget/FrameLayout;
.source "QuickLaunch.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Lcom/android/launcher2/Workspace$StateAnimatorProvider;


# static fields
.field private static final ALLAPPS:I = 0x0

.field private static final BOTH:I = 0x2

.field private static final CAMERA:I = 0x1


# instance fields
.field private mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

.field private mAllappsLayout:Landroid/widget/LinearLayout;

.field private mBackground:Landroid/view/View;

.field private mCameraIcon:Lcom/android/launcher2/AllappsIcon;

.field private mCameraLayout:Landroid/widget/LinearLayout;

.field private mHomeView:Lcom/android/launcher2/HomeView;

.field private mIconDestination:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/QuickLaunch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/QuickLaunch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v1, Lcom/sec/android/app/launcher/R$styleable;->QuickLaunch:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/QuickLaunch;->mIconDestination:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/QuickLaunch;)Lcom/android/launcher2/HomeView;
    .locals 1
    .param p0    # Lcom/android/launcher2/QuickLaunch;

    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mHomeView:Lcom/android/launcher2/HomeView;

    return-object v0
.end method


# virtual methods
.method public collectWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V
    .locals 10
    .param p1    # Lcom/android/launcher2/Workspace;
    .param p2    # Lcom/android/launcher2/Workspace$State;
    .param p3    # Lcom/android/launcher2/Workspace$State;
    .param p4    # Lcom/android/launcher2/BaseItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/Workspace;",
            "Lcom/android/launcher2/Workspace$State;",
            "Lcom/android/launcher2/Workspace$State;",
            "Lcom/android/launcher2/BaseItem;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    const v9, 0x7f05000c

    const v8, 0x7f050002

    const v7, 0x7f050001

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v6, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne p3, v6, :cond_6

    const/4 v3, 0x1

    :cond_0
    :goto_0
    if-nez v3, :cond_1

    if-eqz v2, :cond_9

    :cond_1
    invoke-static {v1, v7}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_2

    invoke-static {v1, v9}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/QuickLaunch;->isLandscape()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {v1, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    :goto_1
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v6, v4, v4}, Lcom/android/launcher2/AppIconView;->setDimmed(ZZ)V

    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_4
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mCameraIcon:Lcom/android/launcher2/AllappsIcon;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mCameraIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v6, v4, v4}, Lcom/android/launcher2/AppIconView;->setDimmed(ZZ)V

    iget-object v4, p0, Lcom/android/launcher2/QuickLaunch;->mCameraIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_5
    :goto_2
    invoke-static {v1, v7}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_6
    sget-object v6, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne p3, v6, :cond_0

    if-eqz p4, :cond_7

    move v2, v4

    :goto_3
    goto :goto_0

    :cond_7
    move v2, v5

    goto :goto_3

    :cond_8
    invoke-static {v1, v9}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_1

    :cond_9
    const/high16 v6, 0x7f050000

    invoke-static {v1, v6}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_a

    const v6, 0x7f05000d

    invoke-static {v1, v6}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_b

    invoke-virtual {p0}, Lcom/android/launcher2/QuickLaunch;->isLandscape()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-static {v1, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    :goto_4
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v6, v5, v4}, Lcom/android/launcher2/AppIconView;->setDimmed(ZZ)V

    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_c
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mCameraIcon:Lcom/android/launcher2/AllappsIcon;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mCameraIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v6, v5, v4}, Lcom/android/launcher2/AppIconView;->setDimmed(ZZ)V

    iget-object v5, p0, Lcom/android/launcher2/QuickLaunch;->mCameraIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    :cond_d
    const v6, 0x7f05000d

    invoke-static {v1, v6}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_4
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;

    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method getAllappsIcon()Lcom/android/launcher2/AllappsIcon;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    return-object v0
.end method

.method getCameraIcon()Lcom/android/launcher2/AllappsIcon;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mCameraIcon:Lcom/android/launcher2/AllappsIcon;

    return-object v0
.end method

.method getCameraLayout()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getIconDestination()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/QuickLaunch;->mIconDestination:I

    return v0
.end method

.method public isLandscape()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1    # Landroid/animation/Animator;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mBackground:Landroid/view/View;

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1    # Landroid/animation/Animator;

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mBackground:Landroid/view/View;

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    const v1, 0x7f090057

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    iget v0, p0, Lcom/android/launcher2/QuickLaunch;->mIconDestination:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    const v0, 0x7f090055

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickLaunch;->resetLayout()V

    return-void

    :pswitch_0
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f090056

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method resetLayout()V
    .locals 10

    const v9, 0x7f0f00e5

    const v8, 0x7f030050

    const v7, 0x7f020001

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v3, p0, Lcom/android/launcher2/QuickLaunch;->mIconDestination:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AllappsIcon;

    iput-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    const-string v4, "all_apps_button_icon"

    invoke-virtual {v2, v4}, Lcom/android/launcher2/ThemeLoader;->loadIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v6, v4, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    const v4, 0x7f0f0013

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    const v4, 0x7f0f00ff

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    sget-object v4, Lcom/android/launcher2/FocusHelper;->QUICK_ALLAPPS_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    new-instance v4, Lcom/android/launcher2/QuickLaunch$1;

    invoke-direct {v4, p0}, Lcom/android/launcher2/QuickLaunch$1;-><init>(Lcom/android/launcher2/QuickLaunch;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget v3, p0, Lcom/android/launcher2/QuickLaunch;->mIconDestination:I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AllappsIcon;

    iput-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mCameraIcon:Lcom/android/launcher2/AllappsIcon;

    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mCameraIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02007e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v6, v4, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mCameraIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mCameraIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mCameraIcon:Lcom/android/launcher2/AllappsIcon;

    sget-object v4, Lcom/android/launcher2/FocusHelper;->QUICK_CAMERA_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mCameraIcon:Lcom/android/launcher2/AllappsIcon;

    new-instance v4, Lcom/android/launcher2/QuickLaunch$2;

    invoke-direct {v4, p0}, Lcom/android/launcher2/QuickLaunch$2;-><init>(Lcom/android/launcher2/QuickLaunch;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/launcher2/QuickLaunch;->mCameraIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v6, v4, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v6, v4, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method public setIconDestination(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/launcher2/QuickLaunch;->mIconDestination:I

    return-void
.end method

.method public setup(Lcom/android/launcher2/HomeView;)V
    .locals 0
    .param p1    # Lcom/android/launcher2/HomeView;

    iput-object p1, p0, Lcom/android/launcher2/QuickLaunch;->mHomeView:Lcom/android/launcher2/HomeView;

    return-void
.end method
