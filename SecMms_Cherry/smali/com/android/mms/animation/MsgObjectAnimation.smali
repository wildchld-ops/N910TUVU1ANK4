.class public Lcom/android/mms/animation/MsgObjectAnimation;
.super Ljava/lang/Object;
.source "MsgObjectAnimation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static concatenatedAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 1

    new-instance v0, Lcom/android/mms/animation/MsgObjectAnimation$2;

    invoke-direct {v0, p2, p3}, Lcom/android/mms/animation/MsgObjectAnimation$2;-><init>(Landroid/view/View;Landroid/view/animation/Animation;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Lcom/android/mms/animation/MsgObjectAnimation$3;

    invoke-direct {v0, p2}, Lcom/android/mms/animation/MsgObjectAnimation$3;-><init>(Landroid/view/View;)V

    invoke-virtual {p3, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static concatenatedAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 1

    new-instance v0, Lcom/android/mms/animation/MsgObjectAnimation$1;

    invoke-direct {v0, p0, p2}, Lcom/android/mms/animation/MsgObjectAnimation$1;-><init>(Landroid/view/View;Landroid/view/animation/Animation;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static createAddEffect(JLandroid/view/animation/Interpolator;)Landroid/view/animation/AnimationSet;
    .locals 10

    const/high16 v5, 0x3f800000

    const v7, 0x3dcccccd

    move-wide v0, p0

    move-wide v2, p0

    move-object v4, p2

    move v6, v5

    move v8, v5

    invoke-static/range {v0 .. v8}, Lcom/android/mms/animation/MsgObjectAnimation;->createScaleFadeInSet(JJLandroid/view/animation/Interpolator;FFFF)Landroid/view/animation/AnimationSet;

    move-result-object v9

    invoke-virtual {v9, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v9
.end method

.method public static createBouncerX(JLandroid/view/animation/Interpolator;Ljava/lang/Object;FF)Landroid/animation/ObjectAnimator;
    .locals 7

    const-string v4, "x"

    move-wide v0, p0

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/mms/animation/MsgAnimation;->createAnimator(JLandroid/view/animation/Interpolator;Ljava/lang/Object;Ljava/lang/String;FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static createBouncerY(JLandroid/view/animation/Interpolator;Ljava/lang/Object;FF)Landroid/animation/ObjectAnimator;
    .locals 7

    const-string v4, "y"

    move-wide v0, p0

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/mms/animation/MsgAnimation;->createAnimator(JLandroid/view/animation/Interpolator;Ljava/lang/Object;Ljava/lang/String;FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static createDeleteEffect(JLandroid/view/animation/Interpolator;)Landroid/view/animation/AnimationSet;
    .locals 10

    const/high16 v5, 0x3f800000

    const v8, 0x3dcccccd

    move-wide v0, p0

    move-wide v2, p0

    move-object v4, p2

    move v6, v5

    move v7, v5

    invoke-static/range {v0 .. v8}, Lcom/android/mms/animation/MsgObjectAnimation;->createScaleFadeOutSet(JJLandroid/view/animation/Interpolator;FFFF)Landroid/view/animation/AnimationSet;

    move-result-object v9

    invoke-virtual {v9, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v9
.end method

.method public static createFadeIn(JLandroid/view/animation/Interpolator;Ljava/lang/Object;)Landroid/animation/ObjectAnimator;
    .locals 7

    const-string v4, "alpha"

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000

    move-wide v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lcom/android/mms/animation/MsgAnimation;->createAnimator(JLandroid/view/animation/Interpolator;Ljava/lang/Object;Ljava/lang/String;FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static createFadeIn(JLandroid/view/animation/Interpolator;)Landroid/view/animation/AlphaAnimation;
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/mms/animation/MsgAnimation;->createAlpha(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    return-object v0
.end method

.method public static createFadeOut(JLandroid/view/animation/Interpolator;Ljava/lang/Object;)Landroid/animation/ObjectAnimator;
    .locals 7

    const-string v4, "alpha"

    const/high16 v5, 0x3f800000

    const/4 v6, 0x0

    move-wide v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lcom/android/mms/animation/MsgAnimation;->createAnimator(JLandroid/view/animation/Interpolator;Ljava/lang/Object;Ljava/lang/String;FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static createFadeOut(JLandroid/view/animation/Interpolator;)Landroid/view/animation/AlphaAnimation;
    .locals 2

    const/high16 v0, 0x3f800000

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/mms/animation/MsgAnimation;->createAlpha(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    return-object v0
.end method

.method public static createMoveHideEffect(JLandroid/view/animation/Interpolator;FFFFFF)Landroid/view/animation/AnimationSet;
    .locals 13

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000

    const/high16 v7, 0x3f800000

    move-wide v2, p0

    move/from16 v6, p3

    move/from16 v8, p4

    invoke-static/range {v2 .. v8}, Lcom/android/mms/animation/MsgObjectAnimation;->createScaleAtRightTop(JLandroid/view/animation/Interpolator;FFFF)Landroid/view/animation/ScaleAnimation;

    move-result-object v11

    const/4 v2, 0x0

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/mms/animation/MsgObjectAnimation;->createMoveXY(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v12

    const/4 v2, 0x0

    move/from16 v0, p7

    move/from16 v1, p8

    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/mms/animation/MsgAnimation;->createAlpha(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/AlphaAnimation;

    move-result-object v9

    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v10, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v10, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v10, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {v10, p0, p1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    invoke-virtual {v10, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v10
.end method

.method public static createMoveXY(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;
    .locals 11

    const/4 v4, 0x0

    const/4 v3, 0x0

    move-wide v0, p0

    move-object v2, p2

    move v5, v3

    move v6, p3

    move v7, v3

    move v8, v4

    move v9, v3

    move v10, p4

    invoke-static/range {v0 .. v10}, Lcom/android/mms/animation/MsgAnimation;->createTranslate(JLandroid/view/animation/Interpolator;IFIFIFIF)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    return-object v0
.end method

.method public static createScaleAtCenter(JLandroid/view/animation/Interpolator;FFFF)Landroid/view/animation/ScaleAnimation;
    .locals 11

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000

    move-wide v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v10}, Lcom/android/mms/animation/MsgAnimation;->createScale(JLandroid/view/animation/Interpolator;FFFFIFIF)Landroid/view/animation/ScaleAnimation;

    move-result-object v0

    return-object v0
.end method

.method public static createScaleAtCustomType(JLandroid/view/animation/Interpolator;FFFFIFIF)Landroid/view/animation/ScaleAnimation;
    .locals 1

    invoke-static/range {p0 .. p10}, Lcom/android/mms/animation/MsgAnimation;->createScale(JLandroid/view/animation/Interpolator;FFFFIFIF)Landroid/view/animation/ScaleAnimation;

    move-result-object v0

    return-object v0
.end method

.method public static createScaleAtLeft(JLandroid/view/animation/Interpolator;FFFF)Landroid/view/animation/ScaleAnimation;
    .locals 11

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000

    const/4 v9, 0x0

    const/high16 v10, 0x3f000000

    move-wide v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v10}, Lcom/android/mms/animation/MsgAnimation;->createScale(JLandroid/view/animation/Interpolator;FFFFIFIF)Landroid/view/animation/ScaleAnimation;

    move-result-object v0

    return-object v0
.end method

.method public static createScaleAtRight(JLandroid/view/animation/Interpolator;FFFF)Landroid/view/animation/ScaleAnimation;
    .locals 11

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000

    move-wide v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v10}, Lcom/android/mms/animation/MsgAnimation;->createScale(JLandroid/view/animation/Interpolator;FFFFIFIF)Landroid/view/animation/ScaleAnimation;

    move-result-object v0

    return-object v0
.end method

.method public static createScaleAtRightBottom(JLandroid/view/animation/Interpolator;FFFF)Landroid/view/animation/ScaleAnimation;
    .locals 11

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000

    move-wide v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v10}, Lcom/android/mms/animation/MsgAnimation;->createScale(JLandroid/view/animation/Interpolator;FFFFIFIF)Landroid/view/animation/ScaleAnimation;

    move-result-object v0

    return-object v0
.end method

.method public static createScaleAtRightTop(JLandroid/view/animation/Interpolator;FFFF)Landroid/view/animation/ScaleAnimation;
    .locals 11

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-wide v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v10}, Lcom/android/mms/animation/MsgAnimation;->createScale(JLandroid/view/animation/Interpolator;FFFFIFIF)Landroid/view/animation/ScaleAnimation;

    move-result-object v0

    return-object v0
.end method

.method public static createScaleFadeInSet(JJLandroid/view/animation/Interpolator;FFFF)Landroid/view/animation/AnimationSet;
    .locals 10

    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {v8, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Lcom/android/mms/animation/MsgObjectAnimation;->createFadeIn(JLandroid/view/animation/Interpolator;)Landroid/view/animation/AlphaAnimation;

    move-result-object v7

    const/4 v2, 0x0

    move-wide v0, p0

    move v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-static/range {v0 .. v6}, Lcom/android/mms/animation/MsgObjectAnimation;->createScaleAtCenter(JLandroid/view/animation/Interpolator;FFFF)Landroid/view/animation/ScaleAnimation;

    move-result-object v9

    invoke-virtual {v8, p4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v8, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v8
.end method

.method public static createScaleFadeOutSet(JJLandroid/view/animation/Interpolator;FFFF)Landroid/view/animation/AnimationSet;
    .locals 10

    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {v8, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/mms/animation/MsgObjectAnimation;->createFadeOut(JLandroid/view/animation/Interpolator;)Landroid/view/animation/AlphaAnimation;

    move-result-object v7

    const/4 v2, 0x0

    move-wide v0, p2

    move v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-static/range {v0 .. v6}, Lcom/android/mms/animation/MsgObjectAnimation;->createScaleAtCenter(JLandroid/view/animation/Interpolator;FFFF)Landroid/view/animation/ScaleAnimation;

    move-result-object v9

    invoke-virtual {v8, p4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v8, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    return-object v8
.end method

.method public static createSlideX(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;
    .locals 11

    const/4 v8, 0x0

    const/4 v3, 0x0

    move-wide v0, p0

    move-object v2, p2

    move v4, p3

    move v5, v3

    move v6, p4

    move v7, v3

    move v9, v3

    move v10, v8

    invoke-static/range {v0 .. v10}, Lcom/android/mms/animation/MsgAnimation;->createTranslate(JLandroid/view/animation/Interpolator;IFIFIFIF)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    return-object v0
.end method

.method public static createSlideXByPercent(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;
    .locals 11

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v0, p0

    move-object v2, p2

    move v4, p3

    move v5, v3

    move v6, p4

    move v9, v7

    move v10, v8

    invoke-static/range {v0 .. v10}, Lcom/android/mms/animation/MsgAnimation;->createTranslate(JLandroid/view/animation/Interpolator;IFIFIFIF)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    return-object v0
.end method

.method public static createSlideY(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;
    .locals 11

    const/4 v4, 0x0

    const/4 v3, 0x0

    move-wide v0, p0

    move-object v2, p2

    move v5, v3

    move v6, v4

    move v7, v3

    move v8, p3

    move v9, v3

    move v10, p4

    invoke-static/range {v0 .. v10}, Lcom/android/mms/animation/MsgAnimation;->createTranslate(JLandroid/view/animation/Interpolator;IFIFIFIF)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    return-object v0
.end method

.method public static slideAndShakeObject(Landroid/view/View;JF)V
    .locals 11

    const/4 v5, 0x0

    const/high16 v6, 0x42480000

    new-instance v0, Lcom/android/mms/animation/easing/QuintIn100;

    invoke-direct {v0}, Lcom/android/mms/animation/easing/QuintIn100;-><init>()V

    const/high16 v1, -0x40800000

    mul-float/2addr v1, p3

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideX(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v10

    new-instance v2, Lcom/android/mms/animation/easing/QuintIn100;

    invoke-direct {v2}, Lcom/android/mms/animation/easing/QuintIn100;-><init>()V

    const/high16 v3, 0x41700000

    const/high16 v4, -0x3e900000

    move-wide v0, p1

    move v7, v5

    move v8, v6

    invoke-static/range {v0 .. v8}, Lcom/android/mms/animation/MsgAnimation;->createRotate(JLandroid/view/animation/Interpolator;FFIFIF)Landroid/view/animation/RotateAnimation;

    move-result-object v9

    invoke-static {p0, v10, v9}, Lcom/android/mms/animation/MsgObjectAnimation;->concatenatedAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    return-void
.end method
