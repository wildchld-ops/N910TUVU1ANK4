.class public Lcom/android/keyguard/KeyguardSecurityViewHelper;
.super Ljava/lang/Object;
.source "KeyguardSecurityViewHelper.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mCanceled:Z

.field private static mScaleAnimationDown:Landroid/view/animation/ScaleAnimation;

.field private static mScaleAnimationUp:Landroid/view/animation/ScaleAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "KeyguardSecurityViewHelper"

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityViewHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mCanceled:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mCanceled:Z

    return p0
.end method

.method public static hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V
    .locals 5
    .param p0    # Lcom/android/keyguard/SecurityMessageDisplay;
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/graphics/drawable/Drawable;
    .param p3    # I

    const/4 v2, 0x1

    const/high16 v4, 0x3f800000

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0, p3}, Lcom/android/keyguard/SecurityMessageDisplay;->hideBouncer(I)V

    :cond_0
    if-eqz p1, :cond_1

    sput-boolean v2, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mCanceled:Z

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    if-lez p3, :cond_4

    const-string v1, "alpha"

    new-array v2, v2, [F

    aput v4, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    if-lez p3, :cond_5

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_5
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method private static setScaleAnimation()V
    .locals 16

    const v2, 0x3f83d70a

    const/high16 v1, 0x3f800000

    const/high16 v6, 0x3f000000

    const/4 v5, 0x1

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationUp:Landroid/view/animation/ScaleAnimation;

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationUp:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationUp:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationUp:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v3, 0x14d

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v7, Landroid/view/animation/ScaleAnimation;

    move v8, v2

    move v9, v1

    move v10, v2

    move v11, v1

    move v12, v5

    move v13, v6

    move v14, v5

    move v15, v6

    invoke-direct/range {v7 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    sput-object v7, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationDown:Landroid/view/animation/ScaleAnimation;

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationDown:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationDown:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationDown:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x1d3

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    return-void
.end method

.method public static showBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V
    .locals 5
    .param p0    # Lcom/android/keyguard/SecurityMessageDisplay;
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/graphics/drawable/Drawable;
    .param p3    # I

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0, p3}, Lcom/android/keyguard/SecurityMessageDisplay;->showBouncer(I)V

    :cond_0
    if-eqz p1, :cond_1

    if-lez p3, :cond_4

    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    aput v3, v2, v4

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/Animator;

    sput-boolean v4, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mCanceled:Z

    new-instance v1, Lcom/android/keyguard/KeyguardSecurityViewHelper$1;

    invoke-direct {v1, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    if-lez p3, :cond_5

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_5
    const/16 v1, 0xff

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method public static startAnimationView(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/view/View;I)V
    .locals 5
    .param p0    # Lcom/android/keyguard/SecurityMessageDisplay;
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/View;
    .param p3    # I

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0, p3}, Lcom/android/keyguard/SecurityMessageDisplay;->showBouncer(I)V

    :cond_0
    if-eqz p1, :cond_1

    if-lez p3, :cond_3

    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    aput v3, v2, v4

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/Animator;

    sput-boolean v4, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mCanceled:Z

    new-instance v1, Lcom/android/keyguard/KeyguardSecurityViewHelper$2;

    invoke-direct {v1, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    if-lez p3, :cond_4

    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->setScaleAnimation()V

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationUp:Landroid/view/animation/ScaleAnimation;

    const/16 v2, 0x10b

    invoke-static {p2, v1, v2}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->startViewAnimation(Landroid/view/View;Landroid/view/animation/ScaleAnimation;I)V

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationDown:Landroid/view/animation/ScaleAnimation;

    const/16 v2, 0x258

    invoke-static {p2, v1, v2}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->startViewAnimation(Landroid/view/View;Landroid/view/animation/ScaleAnimation;I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const/high16 v1, 0x437f0000

    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1
.end method

.method private static startViewAnimation(Landroid/view/View;Landroid/view/animation/ScaleAnimation;I)V
    .locals 4
    .param p0    # Landroid/view/View;
    .param p1    # Landroid/view/animation/ScaleAnimation;
    .param p2    # I

    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityViewHelper;->TAG:Ljava/lang/String;

    const-string v2, "Anim or View is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/keyguard/KeyguardSecurityViewHelper$3;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper$3;-><init>(Landroid/view/View;Landroid/view/animation/ScaleAnimation;)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
