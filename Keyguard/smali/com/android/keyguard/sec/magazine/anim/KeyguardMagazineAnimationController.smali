.class public Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;
.super Ljava/lang/Object;
.source "KeyguardMagazineAnimationController.java"


# instance fields
.field private mAnimTrayLayoutTransition:Landroid/animation/LayoutTransition;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;->mAnimTrayLayoutTransition:Landroid/animation/LayoutTransition;

    return-void
.end method

.method private getAppearingLayoutTransitionAnimation()Landroid/animation/ObjectAnimator;
    .locals 7

    const/4 v6, 0x2

    const/4 v0, 0x0

    const-string v4, "scaleX"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const-string v4, "scaleY"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const-string v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_2

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    aput-object v1, v4, v6

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v4, Lcom/android/keyguard/sec/magazine/anim/interpolator/SineInOut33;

    invoke-direct {v4}, Lcom/android/keyguard/sec/magazine/anim/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f666666
        0x3f800000
    .end array-data

    :array_1
    .array-data 4
        0x3f666666
        0x3f800000
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method private getDisappearingLayoutTransitionAnimation()Landroid/animation/ObjectAnimator;
    .locals 7

    const/4 v6, 0x2

    const/4 v0, 0x0

    const-string v4, "scaleX"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const-string v4, "scaleY"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const-string v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_2

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    aput-object v1, v4, v6

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v4, Lcom/android/keyguard/sec/magazine/anim/interpolator/SineInOut33;

    invoke-direct {v4}, Lcom/android/keyguard/sec/magazine/anim/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000
        0x3f666666
    .end array-data

    :array_1
    .array-data 4
        0x3f800000
        0x3f666666
    .end array-data

    :array_2
    .array-data 4
        0x3f800000
        0x0
    .end array-data
.end method


# virtual methods
.method public getLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 12

    const/4 v11, 0x3

    const-wide/16 v9, 0x1f4

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;->mAnimTrayLayoutTransition:Landroid/animation/LayoutTransition;

    if-nez v3, :cond_0

    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;->mAnimTrayLayoutTransition:Landroid/animation/LayoutTransition;

    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;->mAnimTrayLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v4, 0x1e

    invoke-virtual {v3, v8, v4, v5}, Landroid/animation/LayoutTransition;->setStagger(IJ)V

    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;->mAnimTrayLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v4, 0x1e

    invoke-virtual {v3, v6, v4, v5}, Landroid/animation/LayoutTransition;->setStagger(IJ)V

    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;->mAnimTrayLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v3, v7, v9, v10}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;->mAnimTrayLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v3, v11, v9, v10}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;->mAnimTrayLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v3, v8, v9, v10}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;->mAnimTrayLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v3, v6, v9, v10}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;->mAnimTrayLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v3, v6}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    const-string v3, "left"

    new-array v4, v7, [I

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const-string v3, "right"

    new-array v4, v7, [I

    fill-array-data v4, :array_1

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v3, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v3, v8

    aput-object v2, v3, v6

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/android/keyguard/sec/magazine/anim/interpolator/SineInOut33;

    invoke-direct {v3}, Lcom/android/keyguard/sec/magazine/anim/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;->mAnimTrayLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v3, v8, v0}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;->mAnimTrayLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v3, v6, v0}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;->mAnimTrayLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;->getAppearingLayoutTransitionAnimation()Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;->mAnimTrayLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-direct {p0}, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;->getDisappearingLayoutTransitionAnimation()Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v3, v11, v4}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/sec/magazine/anim/KeyguardMagazineAnimationController;->mAnimTrayLayoutTransition:Landroid/animation/LayoutTransition;

    return-object v3

    :array_0
    .array-data 4
        0x0
        0x64
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x64
    .end array-data
.end method
