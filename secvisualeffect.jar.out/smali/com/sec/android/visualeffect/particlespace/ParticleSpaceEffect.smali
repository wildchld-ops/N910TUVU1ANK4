.class public Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;
.super Landroid/widget/FrameLayout;
.source "ParticleSpaceEffect.java"

# interfaces
.implements Lcom/sec/android/visualeffect/IEffect;


# instance fields
.field private CREATED_DOTS_AMOUNT_AFFORDANCE:I

.field private CREATED_DOTS_AMOUNT_DOWN:I

.field private CREATED_DOTS_AMOUNT_MOVE:I

.field private final DBG:Z

.field private final SCREEN_ON_ANIMATION_DURATION:I

.field private final SCREEN_ON_BACKGROUND_SCALE:F

.field private final SCREEN_ON_WIDGET_SCALE:F

.field private final TAG:Ljava/lang/String;

.field affordanceColor:I

.field private affordanceRunnable:Ljava/lang/Runnable;

.field affordanceX:F

.field affordanceY:F

.field private centerX:F

.field private centerY:F

.field private currentX:F

.field private currentY:F

.field private isLayerSet:Z

.field private isUnlocked:Z

.field private mBgBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private particleEffect:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

.field private screenOnAnimation:Landroid/animation/ValueAnimator;

.field private screenOnAnimationValue:F

.field private stageHeight:F

.field private stageRatio:F

.field private stageWidth:F

.field private wallpaperWidget:Landroid/widget/FrameLayout;

.field private widgetLayout:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "VisualEffectParticleEffect"

    iput-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->DBG:Z

    const/16 v0, 0x2bc

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->SCREEN_ON_ANIMATION_DURATION:I

    const v0, 0x3f99999a

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->SCREEN_ON_WIDGET_SCALE:F

    const v0, 0x3f866666

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->SCREEN_ON_BACKGROUND_SCALE:F

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->isLayerSet:Z

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->isUnlocked:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->CREATED_DOTS_AMOUNT_MOVE:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->CREATED_DOTS_AMOUNT_DOWN:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->CREATED_DOTS_AMOUNT_AFFORDANCE:I

    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->particleSpaceInit()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "VisualEffectParticleEffect"

    iput-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->DBG:Z

    const/16 v0, 0x2bc

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->SCREEN_ON_ANIMATION_DURATION:I

    const v0, 0x3f99999a

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->SCREEN_ON_WIDGET_SCALE:F

    const v0, 0x3f866666

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->SCREEN_ON_BACKGROUND_SCALE:F

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->isLayerSet:Z

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->isUnlocked:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->CREATED_DOTS_AMOUNT_MOVE:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->CREATED_DOTS_AMOUNT_DOWN:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->CREATED_DOTS_AMOUNT_AFFORDANCE:I

    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->particleSpaceInit()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "VisualEffectParticleEffect"

    iput-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->DBG:Z

    const/16 v0, 0x2bc

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->SCREEN_ON_ANIMATION_DURATION:I

    const v0, 0x3f99999a

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->SCREEN_ON_WIDGET_SCALE:F

    const v0, 0x3f866666

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->SCREEN_ON_BACKGROUND_SCALE:F

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->isLayerSet:Z

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->isUnlocked:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->CREATED_DOTS_AMOUNT_MOVE:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->CREATED_DOTS_AMOUNT_DOWN:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->CREATED_DOTS_AMOUNT_AFFORDANCE:I

    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->particleSpaceInit()V

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;F)F
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;
    .param p1    # F

    iput p1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->screenOnAnimationValue:F

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)V
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->animateScreenOn()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)I
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->CREATED_DOTS_AMOUNT_AFFORDANCE:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->particleEffect:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;
    .param p1    # Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->affordanceRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)V
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->unlockFinished()V

    return-void
.end method

.method private animateScreenOn()V
    .locals 6

    const/high16 v5, 0x3f800000

    const v3, 0x3e4cccd0

    iget v4, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->screenOnAnimationValue:F

    mul-float/2addr v3, v4

    add-float v2, v3, v5

    iget-object v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->widgetLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->widgetLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setScaleY(F)V

    const v3, 0x3d4cccc0

    iget v4, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->screenOnAnimationValue:F

    mul-float/2addr v3, v4

    add-float v1, v3, v5

    iget-object v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->wallpaperWidget:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->wallpaperWidget:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/view/View;->setScaleY(F)V

    iget v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->screenOnAnimationValue:F

    sub-float v0, v5, v3

    iget-object v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->widgetLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private getColor(FF)I
    .locals 17
    .param p1    # F
    .param p2    # F

    const v4, 0xffffff

    const/4 v14, 0x0

    cmpg-float v14, p1, v14

    if-lez v14, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->stageWidth:F

    cmpl-float v14, p1, v14

    if-lez v14, :cond_1

    :cond_0
    move v5, v4

    :goto_0
    return v5

    :cond_1
    const/4 v14, 0x0

    cmpg-float v14, p2, v14

    if-lez v14, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->stageHeight:F

    cmpl-float v14, p2, v14

    if-lez v14, :cond_3

    :cond_2
    move v5, v4

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mBgBitmap:Landroid/graphics/Bitmap;

    if-nez v14, :cond_4

    const-string v14, "VisualEffectParticleEffect"

    const-string v15, "getColor : mBgBitmap = null"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v5, v4

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v14, v3

    int-to-float v15, v1

    div-float v2, v14, v15

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->stageRatio:F

    cmpl-float v14, v2, v14

    if-lez v14, :cond_9

    int-to-float v14, v1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->stageHeight:F

    div-float v11, v14, v15

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->stageWidth:F

    mul-float v13, v14, v11

    int-to-float v12, v1

    int-to-float v14, v3

    sub-float/2addr v14, v13

    const/high16 v15, 0x40000000

    div-float/2addr v14, v15

    float-to-int v9, v14

    :goto_2
    mul-float v14, p1, v11

    float-to-int v14, v14

    add-int v7, v9, v14

    mul-float v14, p2, v11

    float-to-int v14, v14

    add-int v8, v10, v14

    if-gez v7, :cond_5

    const/4 v7, 0x0

    :cond_5
    if-lt v7, v3, :cond_6

    add-int/lit8 v7, v3, -0x1

    :cond_6
    if-gez v8, :cond_7

    const/4 v8, 0x0

    :cond_7
    if-lt v8, v1, :cond_8

    add-int/lit8 v8, v1, -0x1

    :cond_8
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14, v7, v8}, Landroid/graphics/Bitmap;->getPixel(II)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_1

    :cond_9
    int-to-float v14, v3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->stageWidth:F

    div-float v11, v14, v15

    int-to-float v13, v3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->stageHeight:F

    mul-float v12, v14, v11

    int-to-float v14, v1

    sub-float/2addr v14, v12

    const/high16 v15, 0x40000000

    div-float/2addr v14, v15

    float-to-int v10, v14

    goto :goto_2

    :catch_0
    move-exception v6

    const-string v14, "VisualEffectParticleEffect"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getColor : IllegalArgumentException = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "VisualEffectParticleEffect"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getColor : bitmap = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mBgBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " x "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mBgBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "VisualEffectParticleEffect"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getColor : stageWidth = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->stageWidth:F

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", stageHeight =  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->stageHeight:F

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "VisualEffectParticleEffect"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getColor : x = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", y =  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private particleSpaceInit()V
    .locals 2

    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "particleSpaceInit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->resetOrientation()V

    new-instance v0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    iget-object v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->particleEffect:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->particleEffect:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->setAnimator()V

    return-void
.end method

.method private resetOrientation()V
    .locals 5

    const/high16 v4, 0x40000000

    const-string v1, "VisualEffectParticleEffect"

    const-string v2, "resetOrientation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->stageWidth:F

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->stageHeight:F

    const-string v1, "VisualEffectParticleEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->stageWidth:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->stageHeight:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->stageWidth:F

    div-float/2addr v1, v4

    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->centerX:F

    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->stageHeight:F

    div-float/2addr v1, v4

    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->centerY:F

    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->stageWidth:F

    iget v2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->stageHeight:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->stageRatio:F

    iget-object v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->particleEffect:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->particleEffect:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    invoke-virtual {v1}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->clearEffect()V

    :cond_0
    return-void
.end method

.method private setAnimator()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->screenOnAnimation:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->screenOnAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/CubicEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/CubicEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->screenOnAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->screenOnAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$1;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$1;-><init>(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000
        0x0
    .end array-data
.end method

.method private setViewProperties(Landroid/view/View;FFFFF)V
    .locals 0
    .param p1    # Landroid/view/View;
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F
    .param p6    # F

    invoke-virtual {p1, p2}, Landroid/view/View;->setX(F)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setY(F)V

    invoke-virtual {p1, p4}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, p5}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, p6}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private unlockFinished()V
    .locals 2

    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "unlockFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->clearEffect()V

    return-void
.end method


# virtual methods
.method public clearEffect()V
    .locals 7

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000

    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "clearEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->centerX:F

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->currentX:F

    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->centerY:F

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->currentY:F

    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->widgetLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->widgetLayout:Landroid/widget/FrameLayout;

    move-object v0, p0

    move v3, v2

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->setViewProperties(Landroid/view/View;FFFFF)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->wallpaperWidget:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->wallpaperWidget:Landroid/widget/FrameLayout;

    move-object v0, p0

    move v3, v2

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->setViewProperties(Landroid/view/View;FFFFF)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->particleEffect:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->clearEffect()V

    return-void
.end method

.method public destroy()V
    .locals 2

    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v5, 0x0

    iget-boolean v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->isLayerSet:Z

    if-nez v1, :cond_1

    const-string v1, "VisualEffectParticleEffect"

    const-string v2, "handleTouchEvent : isLayerSet is false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->currentX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->currentY:F

    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->currentX:F

    iget v2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->currentY:F

    invoke-direct {p0, v1, v2}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->getColor(FF)I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "VisualEffectParticleEffect"

    const-string v2, "handleTouchEvent : ACTION_DOWN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->isUnlocked:Z

    iget-object v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->particleEffect:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    iget v2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->CREATED_DOTS_AMOUNT_DOWN:I

    iget v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->currentX:F

    iget v4, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->currentY:F

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->addDots(IFFI)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->isUnlocked:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->particleEffect:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    iget v2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->CREATED_DOTS_AMOUNT_MOVE:I

    iget v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->currentX:F

    iget v4, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->currentY:F

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->addDots(IFFI)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    :cond_4
    const-string v1, "VisualEffectParticleEffect"

    const-string v2, "handleTouchEvent : ACTION_UP || ACTION_CANCEL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->centerX:F

    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->currentX:F

    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->centerY:F

    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->currentY:F

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->resetOrientation()V

    return-void
.end method

.method public pauseEffect()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->particleEffect:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->pauseEffect()V

    return-void
.end method

.method public resumeEffect()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->particleEffect:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->resumeEffect()V

    return-void
.end method

.method public screenOnAnimationStart()V
    .locals 2

    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "screenOnAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->isLayerSet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->screenOnAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "isLayerSet = false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setLayers(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .locals 3
    .param p1    # Landroid/widget/FrameLayout;
    .param p2    # Landroid/widget/FrameLayout;

    const-string v0, "VisualEffectParticleEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLayers : widgetLayout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->widgetLayout:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->wallpaperWidget:Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->isLayerSet:Z

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->clearEffect()V

    return-void
.end method

.method public setWallpaperBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1    # Landroid/graphics/Bitmap;

    const-string v0, "VisualEffectParticleEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWallpaperBitmap : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "VisualEffectParticleEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWallpaperBitmap : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->mBgBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 3
    .param p1    # J
    .param p3    # Landroid/graphics/Rect;

    const-string v0, "VisualEffectParticleEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showUnlockAffordance : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", startDelay : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->affordanceX:F

    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->affordanceY:F

    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->affordanceX:F

    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->affordanceY:F

    invoke-direct {p0, v0, v1}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->getColor(FF)I

    move-result v0

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->affordanceColor:I

    new-instance v0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$2;

    invoke-direct {v0, p0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$2;-><init>(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->affordanceRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->affordanceRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public unlock()V
    .locals 6

    const v5, 0x3f99999a

    const v4, 0x3f866666

    const-string v2, "VisualEffectParticleEffect"

    const-string v3, "unlock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->isUnlocked:Z

    iget-object v2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->particleEffect:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    invoke-virtual {v2}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->unlockDots()V

    const-wide/16 v0, 0x15e

    iget-object v2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->wallpaperWidget:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/interpolator/CubicEaseOut;

    invoke-direct {v3}, Landroid/view/animation/interpolator/CubicEaseOut;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$3;

    invoke-direct {v3, p0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$3;-><init>(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->widgetLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/interpolator/CubicEaseOut;

    invoke-direct {v3}, Landroid/view/animation/interpolator/CubicEaseOut;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
