.class public Lcom/sec/android/app/camera/MenuBase;
.super Ljava/lang/Object;
.source "MenuBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/MenuBase$OnHideListener;,
        Lcom/sec/android/app/camera/MenuBase$OnShowListener;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "MenuBase"

.field public static final Z_LEVEL_0:I = 0x0

.field public static final Z_LEVEL_1:I = 0x1

.field public static final Z_LEVEL_10:I = 0xb

.field public static final Z_LEVEL_11:I = 0xc

.field public static final Z_LEVEL_12:I = 0xd

.field public static final Z_LEVEL_13:I = 0xe

.field public static final Z_LEVEL_14:I = 0xf

.field public static final Z_LEVEL_2:I = 0x2

.field public static final Z_LEVEL_3:I = 0x3

.field public static final Z_LEVEL_4:I = 0x5

.field public static final Z_LEVEL_5:I = 0x6

.field public static final Z_LEVEL_6:I = 0x7

.field public static final Z_LEVEL_7:I = 0x8

.field public static final Z_LEVEL_8:I = 0x9

.field public static final Z_LEVEL_9:I = 0xa

.field public static final Z_LEVEL_FULLSCREEN:I = 0x11

.field public static final Z_LEVEL_TOP:I = 0x10

.field public static final Z_LEVEL_TOUCH_FOCUS:I = 0x4


# instance fields
.field private mActive:Z

.field protected mActivityContext:Lcom/sec/android/app/camera/Camera;

.field protected mAnchor:Lcom/sec/android/glview/TwGLImage;

.field protected mBaseView:Landroid/view/ViewGroup;

.field private mCaptureEnabled:Z

.field protected mChild:Lcom/sec/android/app/camera/MenuBase;

.field private mEffect:Z

.field private mGLActive:Z

.field protected mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

.field private mHasShowViewMsg:Z

.field private mHideAnimation:Landroid/view/animation/Animation;

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mLaunchType:I

.field protected mLaunchX:F

.field protected mLaunchY:F

.field public mLayoutId:I

.field protected mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

.field private mOnHideListener:Lcom/sec/android/app/camera/MenuBase$OnHideListener;

.field private mOnShowListener:Lcom/sec/android/app/camera/MenuBase$OnShowListener;

.field private mPreviewTouchEnabled:Z

.field protected mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private final mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private final mShowAnimationSet:Landroid/view/animation/AnimationSet;

.field private final mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

.field public mViewId:I

.field protected mVisibility:Z

.field protected mZorder:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V
    .locals 8

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mGLActive:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mPreviewTouchEnabled:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mCaptureEnabled:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mEffect:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActive:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mHasShowViewMsg:Z

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v2, 0x3f666666

    const/high16 v3, 0x3f800000

    const v4, 0x3f666666

    const/high16 v5, 0x3f800000

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iput p2, p0, Lcom/sec/android/app/camera/MenuBase;->mLayoutId:I

    iput p3, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    move/from16 v0, p6

    iput v0, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    iput-object p4, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mInflater:Landroid/view/LayoutInflater;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/sec/android/app/camera/MenuBase;->mLayoutId:I

    invoke-virtual {v1, v2, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v2, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mEffect:Z

    iget-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mEffect:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimation:Landroid/view/animation/Animation;

    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mGLActive:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mPreviewTouchEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mCaptureEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mEffect:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActive:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mHasShowViewMsg:Z

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f666666

    const/high16 v2, 0x3f800000

    const v3, 0x3f666666

    const/high16 v4, 0x3f800000

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mGLActive:Z

    iput-object p3, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iput-object p4, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iput p5, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    iput p2, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    iput-boolean p6, p0, Lcom/sec/android/app/camera/MenuBase;->mEffect:Z

    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mEffect:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimation:Landroid/view/animation/Animation;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;IZ)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mGLActive:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mPreviewTouchEnabled:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mCaptureEnabled:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mEffect:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActive:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mHasShowViewMsg:Z

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v2, 0x3f666666

    const/high16 v3, 0x3f800000

    const v4, 0x3f666666

    const/high16 v5, 0x3f800000

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mGLActive:Z

    iput-object p3, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iput-object p4, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iput-object p5, p0, Lcom/sec/android/app/camera/MenuBase;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move/from16 v0, p6

    iput v0, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    iput p2, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mEffect:Z

    iget-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mEffect:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimation:Landroid/view/animation/Animation;

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public clearGLView()V
    .locals 3

    iget-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mGLActive:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLContext;->findViewByTag(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->clear()V

    :cond_0
    return-void
.end method

.method public final getBaseResourceId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/MenuBase;->mLayoutId:I

    return v0
.end method

.method public final getBaseViewId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    return v0
.end method

.method public final getVisibility()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    return v0
.end method

.method public final getZorder()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public hasShowNextViewMsg()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mHasShowViewMsg:Z

    return v0
.end method

.method public hideMenu()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/app/camera/MenuBase;->mGLActive:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v3, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_1
    iput-boolean v4, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mOnHideListener:Lcom/sec/android/app/camera/MenuBase$OnHideListener;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mOnHideListener:Lcom/sec/android/app/camera/MenuBase$OnHideListener;

    invoke-interface {v2, p0}, Lcom/sec/android/app/camera/MenuBase$OnHideListener;->onHide(Lcom/sec/android/app/camera/MenuBase;)V

    :cond_4
    iput-boolean v4, p0, Lcom/sec/android/app/camera/MenuBase;->mActive:Z

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLContext;->findViewByTag(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mHideAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mHideAnimation:Landroid/view/animation/Animation;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;Z)V

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    goto :goto_1

    :cond_6
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_1
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActive:Z

    return v0
.end method

.method public isAnimationFinished()Z
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLContext;->findViewByTag(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->isAnimationFinished()Z

    move-result v1

    goto :goto_0
.end method

.method public final isCaptureEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mCaptureEnabled:Z

    return v0
.end method

.method public final isFullScreen()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    and-int/lit16 v0, v0, 0xf0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isPreviewTouchEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mPreviewTouchEnabled:Z

    return v0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAutoFocusCompleted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBack()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onHide()V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method protected onShow()V
    .locals 0

    return-void
.end method

.method public onStartingPreviewCompleted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method protected resourceChanged(Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-void
.end method

.method public restoreMenu()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v2, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/MenuBase;->mGLActive:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v3, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    iput-boolean v5, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mOnShowListener:Lcom/sec/android/app/camera/MenuBase$OnShowListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mOnShowListener:Lcom/sec/android/app/camera/MenuBase$OnShowListener;

    invoke-interface {v2, p0}, Lcom/sec/android/app/camera/MenuBase$OnShowListener;->onShow(Lcom/sec/android/app/camera/MenuBase;)V

    :cond_3
    iput-boolean v5, p0, Lcom/sec/android/app/camera/MenuBase;->mActive:Z

    return-void

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLContext;->findViewByTag(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    :cond_5
    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final setAnchor(Lcom/sec/android/glview/TwGLImage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    return-void
.end method

.method public final setBaseResourceId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/MenuBase;->mLayoutId:I

    return-void
.end method

.method public final setBaseViewId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    return-void
.end method

.method protected setCaptureEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/MenuBase;->mCaptureEnabled:Z

    return-void
.end method

.method public final setChild(Lcom/sec/android/app/camera/MenuBase;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    return-void
.end method

.method public final setDim(Z)V
    .locals 3

    iget-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mGLActive:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLContext;->findViewByTag(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    const/16 v1, 0x20

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setHideAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mHideAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method public final setLaunchPosition(FF)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/MenuBase;->mLaunchX:F

    iput p2, p0, Lcom/sec/android/app/camera/MenuBase;->mLaunchY:F

    return-void
.end method

.method public final setLaunchType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/MenuBase;->mLaunchType:I

    return-void
.end method

.method public setOnHideListener(Lcom/sec/android/app/camera/MenuBase$OnHideListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mOnHideListener:Lcom/sec/android/app/camera/MenuBase$OnHideListener;

    return-void
.end method

.method public setOnShowListener(Lcom/sec/android/app/camera/MenuBase$OnShowListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mOnShowListener:Lcom/sec/android/app/camera/MenuBase$OnShowListener;

    return-void
.end method

.method public setShowAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method public setShowNextViewMsg(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/MenuBase;->mHasShowViewMsg:Z

    return-void
.end method

.method protected setTouchHandled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/MenuBase;->mPreviewTouchEnabled:Z

    return-void
.end method

.method public final setZorder(I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    and-int/lit16 v0, v0, 0xf0

    or-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    return-void
.end method

.method public showMenu()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/Camera;->pushMenu(Lcom/sec/android/app/camera/MenuBase;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/MenuBase;->mViewId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLContext;->findViewByTag(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->bringToFront()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->restoreMenu()V

    goto :goto_0
.end method
