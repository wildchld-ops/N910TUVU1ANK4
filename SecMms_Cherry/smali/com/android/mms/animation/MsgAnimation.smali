.class public Lcom/android/mms/animation/MsgAnimation;
.super Ljava/lang/Object;
.source "MsgAnimation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAlpha(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/AlphaAnimation;
    .locals 2
    .param p0    # J
    .param p2    # Landroid/view/animation/Interpolator;
    .param p3    # F
    .param p4    # F

    const/4 v1, 0x1

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    invoke-virtual {v0, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method public static createAnimator(JLandroid/view/animation/Interpolator;Ljava/lang/Object;Ljava/lang/String;FF)Landroid/animation/ObjectAnimator;
    .locals 5
    .param p0    # J
    .param p2    # Landroid/view/animation/Interpolator;
    .param p3    # Ljava/lang/Object;
    .param p4    # Ljava/lang/String;
    .param p5    # F
    .param p6    # F

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput p5, v2, v3

    aput p6, v2, v4

    invoke-static {p4, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v2, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v2, v3

    invoke-static {p3, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method public static createAnimator(JLandroid/view/animation/Interpolator;Ljava/lang/Object;Ljava/lang/String;II)Landroid/animation/ObjectAnimator;
    .locals 5
    .param p0    # J
    .param p2    # Landroid/view/animation/Interpolator;
    .param p3    # Ljava/lang/Object;
    .param p4    # Ljava/lang/String;
    .param p5    # I
    .param p6    # I

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput p5, v2, v3

    aput p6, v2, v4

    invoke-static {p4, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v2, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v2, v3

    invoke-static {p3, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method public static createRotate(JLandroid/view/animation/Interpolator;FFIFIF)Landroid/view/animation/RotateAnimation;
    .locals 7
    .param p0    # J
    .param p2    # Landroid/view/animation/Interpolator;
    .param p3    # F
    .param p4    # F
    .param p5    # I
    .param p6    # F
    .param p7    # I
    .param p8    # F

    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    invoke-virtual {v0, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method public static createScale(JLandroid/view/animation/Interpolator;FFFFIFIF)Landroid/view/animation/ScaleAnimation;
    .locals 9
    .param p0    # J
    .param p2    # Landroid/view/animation/Interpolator;
    .param p3    # F
    .param p4    # F
    .param p5    # F
    .param p6    # F
    .param p7    # I
    .param p8    # F
    .param p9    # I
    .param p10    # F

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    invoke-virtual {v0, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method public static createTranslate(JLandroid/view/animation/Interpolator;IFIFIFIF)Landroid/view/animation/TranslateAnimation;
    .locals 9
    .param p0    # J
    .param p2    # Landroid/view/animation/Interpolator;
    .param p3    # I
    .param p4    # F
    .param p5    # I
    .param p6    # F
    .param p7    # I
    .param p8    # F
    .param p9    # I
    .param p10    # F

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v0, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method
