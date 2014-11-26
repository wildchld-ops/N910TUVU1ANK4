.class public Lcom/sec/android/visualeffect/blind/BlindEffect;
.super Landroid/widget/FrameLayout;
.source "BlindEffect.java"

# interfaces
.implements Lcom/sec/android/visualeffect/IEffect;


# instance fields
.field private final DBG:Z

.field private final DOWN_ANIMATION_DURATION:I

.field private final TAG:Ljava/lang/String;

.field private final TOTAL_COLUMN_LANDSCAPE:I

.field private final TOTAL_COLUMN_PORTRAIT:I

.field private UNLOCK_ALPHA_ANIMATION_DURATION:I

.field private final UP_ANIMATION_DURATION:I

.field private affordanceRunnableDown:Ljava/lang/Runnable;

.field private affordanceRunnableUp:Ljava/lang/Runnable;

.field affordanceX:F

.field affordanceY:F

.field private animationValue:F

.field private bitmapLandscape:Landroid/graphics/Bitmap;

.field private bitmapPortrait:Landroid/graphics/Bitmap;

.field private blindLandscape:[Lcom/sec/android/visualeffect/blind/Blind;

.field private blindPortrait:[Lcom/sec/android/visualeffect/blind/Blind;

.field private cm:Landroid/graphics/ColorMatrix;

.field private currentX:F

.field private currentY:F

.field private dm:Landroid/util/DisplayMetrics;

.field private downAnimator:Landroid/animation/ValueAnimator;

.field private isInitialized:Z

.field private isLandscape:Z

.field private isRight:Z

.field private lastX:F

.field private lastY:F

.field private layoutLandscape:Landroid/widget/FrameLayout;

.field private layoutPortrait:Landroid/widget/FrameLayout;

.field private light:Landroid/graphics/Bitmap;

.field private lightView:Lcom/sec/android/visualeffect/blind/ImageViewBlended;

.field private longWidth:I

.field private mContext:Landroid/content/Context;

.field private moveAnimator:Landroid/animation/ValueAnimator;

.field private point2X:F

.field private point2Y:F

.field private pointX:F

.field private pointY:F

.field private pushAnimationMax:F

.field private pushAnimationMin:F

.field private shortWidth:I

.field private stageHeight:I

.field private stageWidth:I

.field private totalColumn:I

.field private unlockAlphaAnimator:Landroid/animation/ValueAnimator;

.field private unlockeff:Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;

.field private upAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v1, -0x40800000

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "BlindEffect"

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->TAG:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->DBG:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->light:Landroid/graphics/Bitmap;

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->isRight:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pushAnimationMin:F

    iput v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pointX:F

    iput v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pointY:F

    iput v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->point2X:F

    iput v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->point2Y:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->dm:Landroid/util/DisplayMetrics;

    iput v2, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->totalColumn:I

    iput-boolean v3, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->isLandscape:Z

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->isInitialized:Z

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->UNLOCK_ALPHA_ANIMATION_DURATION:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->DOWN_ANIMATION_DURATION:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->UP_ANIMATION_DURATION:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->TOTAL_COLUMN_LANDSCAPE:I

    const/16 v0, 0x19

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->TOTAL_COLUMN_PORTRAIT:I

    invoke-direct {p0, p1}, Lcom/sec/android/visualeffect/blind/BlindEffect;->constructor(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v1, -0x40800000

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "BlindEffect"

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->TAG:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->DBG:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->light:Landroid/graphics/Bitmap;

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->isRight:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pushAnimationMin:F

    iput v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pointX:F

    iput v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pointY:F

    iput v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->point2X:F

    iput v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->point2Y:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->dm:Landroid/util/DisplayMetrics;

    iput v2, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->totalColumn:I

    iput-boolean v3, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->isLandscape:Z

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->isInitialized:Z

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->UNLOCK_ALPHA_ANIMATION_DURATION:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->DOWN_ANIMATION_DURATION:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->UP_ANIMATION_DURATION:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->TOTAL_COLUMN_LANDSCAPE:I

    const/16 v0, 0x19

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->TOTAL_COLUMN_PORTRAIT:I

    invoke-direct {p0, p1}, Lcom/sec/android/visualeffect/blind/BlindEffect;->constructor(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v1, -0x40800000

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "BlindEffect"

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->TAG:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->DBG:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->light:Landroid/graphics/Bitmap;

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->isRight:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pushAnimationMin:F

    iput v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pointX:F

    iput v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pointY:F

    iput v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->point2X:F

    iput v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->point2Y:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->dm:Landroid/util/DisplayMetrics;

    iput v2, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->totalColumn:I

    iput-boolean v3, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->isLandscape:Z

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->isInitialized:Z

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->UNLOCK_ALPHA_ANIMATION_DURATION:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->DOWN_ANIMATION_DURATION:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->UP_ANIMATION_DURATION:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->TOTAL_COLUMN_LANDSCAPE:I

    const/16 v0, 0x19

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->TOTAL_COLUMN_PORTRAIT:I

    invoke-direct {p0, p1}, Lcom/sec/android/visualeffect/blind/BlindEffect;->constructor(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/visualeffect/blind/BlindEffect;)F
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/blind/BlindEffect;

    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->animationValue:F

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/visualeffect/blind/BlindEffect;F)F
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/blind/BlindEffect;
    .param p1    # F

    iput p1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->animationValue:F

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/visualeffect/blind/BlindEffect;)F
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/blind/BlindEffect;

    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pushAnimationMin:F

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/visualeffect/blind/BlindEffect;)I
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/blind/BlindEffect;

    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->totalColumn:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/visualeffect/blind/BlindEffect;I)V
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/blind/BlindEffect;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/sec/android/visualeffect/blind/BlindEffect;->setScale(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/visualeffect/blind/BlindEffect;)V
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/blind/BlindEffect;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->unlockFinished()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/visualeffect/blind/BlindEffect;FF)V
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/blind/BlindEffect;
    .param p1    # F
    .param p2    # F

    invoke-direct {p0, p1, p2}, Lcom/sec/android/visualeffect/blind/BlindEffect;->playDownAnimator(FF)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/visualeffect/blind/BlindEffect;)V
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/blind/BlindEffect;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->playUpAnimator()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/visualeffect/blind/BlindEffect;)Lcom/sec/android/visualeffect/blind/ImageViewBlended;
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/blind/BlindEffect;

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->lightView:Lcom/sec/android/visualeffect/blind/ImageViewBlended;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/visualeffect/blind/BlindEffect;)F
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/blind/BlindEffect;

    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pushAnimationMax:F

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/visualeffect/blind/BlindEffect;)F
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/blind/BlindEffect;

    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pointX:F

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/visualeffect/blind/BlindEffect;F)F
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/blind/BlindEffect;
    .param p1    # F

    iput p1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pointX:F

    return p1
.end method

.method static synthetic access$416(Lcom/sec/android/visualeffect/blind/BlindEffect;F)F
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/blind/BlindEffect;
    .param p1    # F

    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pointX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pointX:F

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/visualeffect/blind/BlindEffect;)F
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/blind/BlindEffect;

    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->point2X:F

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/visualeffect/blind/BlindEffect;F)F
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/blind/BlindEffect;
    .param p1    # F

    iput p1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->point2X:F

    return p1
.end method

.method static synthetic access$516(Lcom/sec/android/visualeffect/blind/BlindEffect;F)F
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/blind/BlindEffect;
    .param p1    # F

    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->point2X:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->point2X:F

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/visualeffect/blind/BlindEffect;)V
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/blind/BlindEffect;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->cancelAllAnimator()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/visualeffect/blind/BlindEffect;)F
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/blind/BlindEffect;

    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->currentX:F

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/visualeffect/blind/BlindEffect;)F
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/blind/BlindEffect;

    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pointY:F

    return v0
.end method

.method static synthetic access$816(Lcom/sec/android/visualeffect/blind/BlindEffect;F)F
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/blind/BlindEffect;
    .param p1    # F

    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pointY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pointY:F

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/visualeffect/blind/BlindEffect;)F
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/blind/BlindEffect;

    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->currentY:F

    return v0
.end method

.method private backgroundImageUpdate()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const-string v3, "BlindEffect"

    const-string v4, "backgroundImageUpdate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x28

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->blindLandscape:[Lcom/sec/android/visualeffect/blind/Blind;

    aget-object v0, v3, v1

    iget-object v3, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->bitmapLandscape:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/blind/Blind;->getBlindX()I

    move-result v4

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/blind/Blind;->getBlindWidth()I

    move-result v5

    iget v6, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->shortWidth:I

    invoke-static {v3, v4, v7, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/visualeffect/blind/Blind;->changeBitmap(Landroid/graphics/Bitmap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/16 v3, 0x19

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->blindPortrait:[Lcom/sec/android/visualeffect/blind/Blind;

    aget-object v0, v3, v1

    iget-object v3, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->bitmapPortrait:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/blind/Blind;->getBlindX()I

    move-result v4

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/blind/Blind;->getBlindWidth()I

    move-result v5

    iget v6, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->longWidth:I

    invoke-static {v3, v4, v7, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/visualeffect/blind/Blind;->changeBitmap(Landroid/graphics/Bitmap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->bitmapLandscape:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v3, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->bitmapPortrait:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v8, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->bitmapLandscape:Landroid/graphics/Bitmap;

    iput-object v8, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->bitmapPortrait:Landroid/graphics/Bitmap;

    return-void
.end method

.method private cancelAllAnimator()V
    .locals 2

    const-string v0, "BlindEffect"

    const-string v1, "cancelAllAnimator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->downAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->upAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->moveAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->cancelAnimator(Landroid/animation/Animator;)V

    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private constructor(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const-string v0, "BlindEffect"

    const-string v1, "Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->stageWidth:I

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->stageHeight:I

    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->stageWidth:I

    iget v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->stageHeight:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->stageWidth:I

    :goto_0
    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->longWidth:I

    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->stageWidth:I

    iget v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->stageHeight:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->stageHeight:I

    :goto_1
    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->shortWidth:I

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->stageHeight:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->stageWidth:I

    goto :goto_1
.end method

.method private destroyMask()V
    .locals 2

    const-string v0, "BlindEffect"

    const-string v1, "destroyMask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->unlockeff:Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->unlockeff:Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;->destroy()V

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->unlockeff:Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->unlockeff:Lcom/sec/android/visualeffect/blind/blindmask/BlindMaskEffect;

    :cond_0
    return-void
.end method

.method private getBlindX(IZ)I
    .locals 4
    .param p1    # I
    .param p2    # Z

    if-eqz p2, :cond_0

    const/16 v0, 0x28

    :goto_0
    if-eqz p2, :cond_1

    iget v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->longWidth:I

    :goto_1
    mul-int v3, p1, v1

    div-int/2addr v3, v0

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2

    :cond_0
    const/16 v0, 0x19

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->shortWidth:I

    goto :goto_1
.end method

.method private getDistance(FFI)F
    .locals 4
    .param p1    # F
    .param p2    # F
    .param p3    # I

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->isLandscape:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->blindLandscape:[Lcom/sec/android/visualeffect/blind/Blind;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Lcom/sec/android/visualeffect/blind/Blind;->getMidPoint()F

    move-result v1

    sub-float p1, v1, p2

    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->isLandscape:Z

    if-eqz v1, :cond_3

    const/high16 v0, 0x41000000

    :goto_1
    cmpg-float v1, p1, v3

    if-gez v1, :cond_0

    const/high16 v1, -0x40800000

    mul-float/2addr p1, v1

    :cond_0
    iget v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->stageWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    sub-float/2addr v1, p1

    const/high16 v2, 0x447a0000

    div-float p1, v1, v2

    cmpg-float v1, p1, v3

    if-gez v1, :cond_1

    const/4 p1, 0x0

    :cond_1
    return p1

    :cond_2
    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->blindPortrait:[Lcom/sec/android/visualeffect/blind/Blind;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Lcom/sec/android/visualeffect/blind/Blind;->getMidPoint()F

    move-result v1

    sub-float p1, v1, p2

    goto :goto_0

    :cond_3
    const/high16 v0, 0x40a00000

    goto :goto_1
.end method

.method private getScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p1    # Landroid/graphics/Bitmap;
    .param p2    # I
    .param p3    # I

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v7, p2

    int-to-float v8, p3

    div-float v4, v7, v8

    int-to-float v7, v2

    int-to-float v8, v0

    div-float v1, v7, v8

    cmpl-float v7, v1, v4

    if-lez v7, :cond_0

    int-to-float v7, v0

    mul-float/2addr v7, v4

    float-to-int v6, v7

    sub-int v7, v2, v6

    div-int/lit8 v7, v7, 0x2

    invoke-static {p1, v7, v9, v6, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_0
    const/4 v7, 0x1

    invoke-static {v3, p2, p3, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    :cond_0
    int-to-float v7, v2

    div-float/2addr v7, v4

    float-to-int v5, v7

    sub-int v7, v0, v5

    div-int/lit8 v7, v7, 0x2

    invoke-static {p1, v9, v7, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method

.method private playDownAnimator(FF)V
    .locals 4
    .param p1    # F
    .param p2    # F

    iput p1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->currentX:F

    iput p2, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->currentY:F

    iput p1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->lastX:F

    iput p2, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->lastY:F

    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->animationValue:F

    float-to-double v0, v0

    const-wide v2, 0x3fd3333333333333L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iput p1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pointX:F

    iput p2, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pointY:F

    iput p1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->point2X:F

    iput p2, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->point2Y:F

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->clearEffect()V

    invoke-direct {p0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->cancelAllAnimator()V

    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->animationValue:F

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pushAnimationMin:F

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->downAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->moveAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private playUpAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->upAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->downAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->upAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->cancelAnimator(Landroid/animation/Animator;)V

    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->animationValue:F

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pushAnimationMax:F

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->upAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private setAffordanceRunnable()V
    .locals 1

    new-instance v0, Lcom/sec/android/visualeffect/blind/BlindEffect$6;

    invoke-direct {v0, p0}, Lcom/sec/android/visualeffect/blind/BlindEffect$6;-><init>(Lcom/sec/android/visualeffect/blind/BlindEffect;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->affordanceRunnableDown:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/android/visualeffect/blind/BlindEffect$7;

    invoke-direct {v0, p0}, Lcom/sec/android/visualeffect/blind/BlindEffect$7;-><init>(Lcom/sec/android/visualeffect/blind/BlindEffect;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->affordanceRunnableUp:Ljava/lang/Runnable;

    return-void
.end method

.method private setAnimator()V
    .locals 4

    const/4 v3, 0x2

    new-array v0, v3, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->downAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->downAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->downAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->downAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/blind/BlindEffect$1;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/blind/BlindEffect$1;-><init>(Lcom/sec/android/visualeffect/blind/BlindEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v3, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->upAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->upAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->upAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->upAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/blind/BlindEffect$2;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/blind/BlindEffect$2;-><init>(Lcom/sec/android/visualeffect/blind/BlindEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->upAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/blind/BlindEffect$3;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/blind/BlindEffect$3;-><init>(Lcom/sec/android/visualeffect/blind/BlindEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v3, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->moveAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->moveAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->moveAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->moveAnimator:Landroid/animation/ValueAnimator;

    const-wide/32 v1, 0x36ee80

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->moveAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/blind/BlindEffect$4;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/blind/BlindEffect$4;-><init>(Lcom/sec/android/visualeffect/blind/BlindEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v3, [F

    fill-array-data v0, :array_3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->unlockAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->unlockAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuadEaseIn;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuadEaseIn;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->unlockAlphaAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->UNLOCK_ALPHA_ANIMATION_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->unlockAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/blind/BlindEffect$5;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/blind/BlindEffect$5;-><init>(Lcom/sec/android/visualeffect/blind/BlindEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x3e99999a
        0x3f800000
    .end array-data

    :array_1
    .array-data 4
        0x3f800000
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    :array_3
    .array-data 4
        0x3f800000
        0x0
    .end array-data
.end method

.method private setBlind()V
    .locals 12

    const/4 v11, 0x0

    const/16 v10, 0x28

    const/16 v9, 0x19

    const/4 v8, 0x0

    new-array v6, v10, [Lcom/sec/android/visualeffect/blind/Blind;

    iput-object v6, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->blindLandscape:[Lcom/sec/android/visualeffect/blind/Blind;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v10, :cond_0

    add-int/lit8 v6, v3, 0x1

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/sec/android/visualeffect/blind/BlindEffect;->getBlindX(IZ)I

    move-result v4

    sub-int v1, v4, v2

    iget-object v6, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->bitmapLandscape:Landroid/graphics/Bitmap;

    iget v7, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->shortWidth:I

    invoke-static {v6, v2, v8, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v0, Lcom/sec/android/visualeffect/blind/Blind;

    iget-object v6, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6, v5, v2, v1}, Lcom/sec/android/visualeffect/blind/Blind;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;II)V

    iget-object v6, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->blindLandscape:[Lcom/sec/android/visualeffect/blind/Blind;

    aput-object v0, v6, v3

    int-to-float v6, v2

    invoke-virtual {v0, v6}, Landroid/view/View;->setX(F)V

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v6, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->layoutLandscape:Landroid/widget/FrameLayout;

    iget v7, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->shortWidth:I

    invoke-virtual {v6, v0, v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    move v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-array v6, v9, [Lcom/sec/android/visualeffect/blind/Blind;

    iput-object v6, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->blindPortrait:[Lcom/sec/android/visualeffect/blind/Blind;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v9, :cond_1

    add-int/lit8 v6, v3, 0x1

    invoke-direct {p0, v6, v8}, Lcom/sec/android/visualeffect/blind/BlindEffect;->getBlindX(IZ)I

    move-result v4

    sub-int v1, v4, v2

    iget-object v6, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->bitmapPortrait:Landroid/graphics/Bitmap;

    iget v7, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->longWidth:I

    invoke-static {v6, v2, v8, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v0, Lcom/sec/android/visualeffect/blind/Blind;

    iget-object v6, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6, v5, v2, v1}, Lcom/sec/android/visualeffect/blind/Blind;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;II)V

    iget-object v6, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->blindPortrait:[Lcom/sec/android/visualeffect/blind/Blind;

    aput-object v0, v6, v3

    int-to-float v6, v2

    invoke-virtual {v0, v6}, Landroid/view/View;->setX(F)V

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v6, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->layoutPortrait:Landroid/widget/FrameLayout;

    iget v7, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->longWidth:I

    invoke-virtual {v6, v0, v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    move v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->bitmapLandscape:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v6, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->bitmapPortrait:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v11, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->bitmapLandscape:Landroid/graphics/Bitmap;

    iput-object v11, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->bitmapPortrait:Landroid/graphics/Bitmap;

    return-void
.end method

.method private setBrightness(Landroid/graphics/ColorMatrix;F)V
    .locals 5
    .param p1    # Landroid/graphics/ColorMatrix;
    .param p2    # F

    const/high16 v4, 0x3f800000

    const/4 v3, 0x0

    const/high16 v1, 0x43480000

    mul-float v0, p2, v1

    const/16 v1, 0x14

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v4, v1, v2

    const/4 v2, 0x1

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v3, v1, v2

    const/4 v2, 0x3

    aput v3, v1, v2

    const/4 v2, 0x4

    aput v0, v1, v2

    const/4 v2, 0x5

    aput v3, v1, v2

    const/4 v2, 0x6

    aput v4, v1, v2

    const/4 v2, 0x7

    aput v3, v1, v2

    const/16 v2, 0x8

    aput v3, v1, v2

    const/16 v2, 0x9

    aput v0, v1, v2

    const/16 v2, 0xa

    aput v3, v1, v2

    const/16 v2, 0xb

    aput v3, v1, v2

    const/16 v2, 0xc

    aput v4, v1, v2

    const/16 v2, 0xd

    aput v3, v1, v2

    const/16 v2, 0xe

    aput v0, v1, v2

    const/16 v2, 0xf

    aput v3, v1, v2

    const/16 v2, 0x10

    aput v3, v1, v2

    const/16 v2, 0x11

    aput v3, v1, v2

    const/16 v2, 0x12

    aput v4, v1, v2

    const/16 v2, 0x13

    aput v3, v1, v2

    invoke-virtual {p1, v1}, Landroid/graphics/ColorMatrix;->set([F)V

    return-void
.end method

.method private setLight()V
    .locals 4

    new-instance v0, Lcom/sec/android/visualeffect/blind/ImageViewBlended;

    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/visualeffect/blind/ImageViewBlended;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->lightView:Lcom/sec/android/visualeffect/blind/ImageViewBlended;

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->light:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->stageWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->stageWidth:I

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->light:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->lightView:Lcom/sec/android/visualeffect/blind/ImageViewBlended;

    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->light:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/blind/ImageViewBlended;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->lightView:Lcom/sec/android/visualeffect/blind/ImageViewBlended;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->lightView:Lcom/sec/android/visualeffect/blind/ImageViewBlended;

    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->light:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->light:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void
.end method

.method private setScale(I)V
    .locals 9
    .param p1    # I

    const/high16 v8, 0x40000000

    const/high16 v7, 0x3f800000

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pointX:F

    invoke-direct {p0, v1, v4, p1}, Lcom/sec/android/visualeffect/blind/BlindEffect;->getDistance(FFI)F

    move-result v1

    iget-object v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->upAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->point2X:F

    invoke-direct {p0, v2, v4, p1}, Lcom/sec/android/visualeffect/blind/BlindEffect;->getDistance(FFI)F

    move-result v2

    :cond_0
    cmpl-float v4, v2, v1

    if-lez v4, :cond_1

    move v1, v2

    :cond_1
    iget-object v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->upAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->lightView:Lcom/sec/android/visualeffect/blind/ImageViewBlended;

    iget v5, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->pointX:F

    iget-object v6, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->light:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setX(F)V

    iget-object v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->lightView:Lcom/sec/android/visualeffect/blind/ImageViewBlended;

    iget v5, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->currentY:F

    iget-object v6, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->light:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setY(F)V

    :cond_2
    iget-boolean v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->isLandscape:Z

    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->blindLandscape:[Lcom/sec/android/visualeffect/blind/Blind;

    :goto_0
    iget-boolean v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->isLandscape:Z

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->animationValue:F

    mul-float/2addr v4, v1

    add-float v3, v7, v4

    :goto_1
    aget-object v4, v0, p1

    invoke-virtual {v4, v3}, Landroid/view/View;->setScaleX(F)V

    aget-object v4, v0, p1

    invoke-virtual {v4, v3}, Landroid/view/View;->setScaleY(F)V

    aget-object v4, v0, p1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->cm:Landroid/graphics/ColorMatrix;

    iget v5, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->animationValue:F

    mul-float/2addr v5, v1

    invoke-direct {p0, v4, v5}, Lcom/sec/android/visualeffect/blind/BlindEffect;->setBrightness(Landroid/graphics/ColorMatrix;F)V

    aget-object v4, v0, p1

    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v6, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->cm:Landroid/graphics/ColorMatrix;

    invoke-direct {v5, v6}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->blindPortrait:[Lcom/sec/android/visualeffect/blind/Blind;

    goto :goto_0

    :cond_4
    iget v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->animationValue:F

    mul-float/2addr v4, v1

    const/high16 v5, 0x3f200000

    mul-float/2addr v4, v5

    add-float v3, v7, v4

    goto :goto_1
.end method

.method private unlockFinished()V
    .locals 2

    const-string v0, "BlindEffect"

    const-string v1, "unlockFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blindEffectInit()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "BlindEffect"

    const-string v1, "blindEffectInit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->cm:Landroid/graphics/ColorMatrix;

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->layoutLandscape:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->layoutLandscape:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutDirection(I)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->layoutLandscape:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->layoutPortrait:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->layoutPortrait:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutDirection(I)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->layoutPortrait:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->resetOrientation()V

    invoke-direct {p0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->setBlind()V

    invoke-direct {p0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->setLight()V

    invoke-direct {p0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->setAnimator()V

    invoke-direct {p0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->setAffordanceRunnable()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->isInitialized:Z

    return-void
.end method

.method public clearEffect()V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000

    const-string v1, "BlindEffect"

    const-string v2, "clearEffect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->cancelAllAnimator()V

    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->blindLandscape:[Lcom/sec/android/visualeffect/blind/Blind;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->layoutLandscape:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->layoutPortrait:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x28

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->blindLandscape:[Lcom/sec/android/visualeffect/blind/Blind;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->blindLandscape:[Lcom/sec/android/visualeffect/blind/Blind;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->blindLandscape:[Lcom/sec/android/visualeffect/blind/Blind;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x19

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->blindPortrait:[Lcom/sec/android/visualeffect/blind/Blind;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->blindPortrait:[Lcom/sec/android/visualeffect/blind/Blind;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->blindPortrait:[Lcom/sec/android/visualeffect/blind/Blind;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 2

    const-string v0, "BlindEffect"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->cancelAllAnimator()V

    return-void
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "BlindEffect"

    const-string v5, "handleTouchEvent : ACTION_DOWN"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->affordanceRunnableDown:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->affordanceRunnableUp:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/blind/BlindEffect;->playDownAnimator(FF)V

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    if-nez v4, :cond_3

    iget v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->lastX:F

    sub-float v0, v2, v4

    iget v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->lastY:F

    sub-float v1, v3, v4

    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-lez v4, :cond_2

    iput-boolean v7, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->isRight:Z

    :goto_1
    iget v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->currentX:F

    add-float/2addr v4, v0

    iput v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->currentX:F

    iget v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->currentY:F

    add-float/2addr v4, v1

    iput v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->currentY:F

    iput v2, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->lastX:F

    iput v3, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->lastY:F

    goto :goto_0

    :cond_2
    iput-boolean v6, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->isRight:Z

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-eq v4, v7, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    :cond_4
    const-string v4, "BlindEffect"

    const-string v5, "handleTouchEvent : ACTION_UP || ACTION_CANCEL"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->playUpAnimator()V

    goto :goto_0
.end method

.method public initAnimationValue()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->animationValue:F

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->lightView:Lcom/sec/android/visualeffect/blind/ImageViewBlended;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->lightView:Lcom/sec/android/visualeffect/blind/ImageViewBlended;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public resetOrientation()V
    .locals 7

    const/16 v2, 0x28

    const/16 v3, 0x19

    const/16 v6, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->stageWidth:I

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->stageHeight:I

    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->stageWidth:I

    iget v4, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->stageHeight:I

    if-le v0, v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->isLandscape:Z

    const-string v0, "BlindEffect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resetOrientation : isLandscape = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->isLandscape:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->stageWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " x "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->stageHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->isLandscape:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->totalColumn:I

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->isLandscape:Z

    if-eqz v0, :cond_2

    iput v2, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->totalColumn:I

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->layoutLandscape:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->layoutPortrait:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    iput v3, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->totalColumn:I

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->layoutLandscape:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->layoutPortrait:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public setBackgroundImage(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1    # Landroid/graphics/Bitmap;

    const-string v0, "BlindEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBackgroundImage : "

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

    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->longWidth:I

    iget v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->shortWidth:I

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/visualeffect/blind/BlindEffect;->getScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->bitmapLandscape:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->shortWidth:I

    iget v1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->longWidth:I

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/visualeffect/blind/BlindEffect;->getScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->bitmapPortrait:Landroid/graphics/Bitmap;

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->isInitialized:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->backgroundImageUpdate()V

    :cond_0
    return-void
.end method

.method public setLightImage(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1    # Landroid/graphics/Bitmap;

    const-string v0, "BlindEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLightImage : "

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

    iput-object p1, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->light:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setUnlockDelayDuration(J)V
    .locals 1
    .param p1    # J

    long-to-int v0, p1

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->UNLOCK_ALPHA_ANIMATION_DURATION:I

    return-void
.end method

.method public show()V
    .locals 2

    const-string v0, "BlindEffect"

    const-string v1, "show (BlindEffect)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->clearEffect()V

    invoke-direct {p0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->destroyMask()V

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->initAnimationValue()V

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/blind/BlindEffect;->resetOrientation()V

    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 3
    .param p1    # J
    .param p3    # Landroid/graphics/Rect;

    const-string v0, "BlindEffect"

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

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->affordanceX:F

    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->affordanceY:F

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->affordanceRunnableDown:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->affordanceRunnableUp:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->affordanceRunnableDown:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startAffordanceRunnableUp(J)V
    .locals 1
    .param p1    # J

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/BlindEffect;->affordanceRunnableUp:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public unlockEffect()V
    .locals 2

    const-string v0, "BlindEffect"

    const-string v1, "unlockEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
