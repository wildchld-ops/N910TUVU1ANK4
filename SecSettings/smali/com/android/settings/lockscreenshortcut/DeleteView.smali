.class public Lcom/android/settings/lockscreenshortcut/DeleteView;
.super Landroid/widget/ImageView;
.source "DeleteView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# static fields
.field private static TEXT_SIZE:I


# instance fields
.field final kLidUpHeight:I

.field private mAngleDirection:F

.field mCurrentAnimator:Landroid/animation/Animator;

.field private mIsAnimating:Z

.field private mIsLandscape:Z

.field private mIsNormalTrashIcon:Z

.field private mIsOnDeleting:Z

.field private mIsTablet:Z

.field private mIsTrashCanShakeMode:Z

.field private mLidAngle:F

.field private mLidOffsetY:I

.field private mNormalTrash:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mPreviousLidShakeValue:F

.field private mTrashBinOnly:Landroid/graphics/Bitmap;

.field private mTrashCan:Landroid/graphics/Bitmap;

.field private mTrashCanAlpha:F

.field private mTrashCanFill:Landroid/graphics/Bitmap;

.field private mTrashCanFillAlpha:F

.field private mTrashIcon:Landroid/graphics/drawable/Drawable;

.field private mTrashLidOnly:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    sput v0, Lcom/android/settings/lockscreenshortcut/DeleteView;->TEXT_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTablet:Z

    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z

    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsLandscape:Z

    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsNormalTrashIcon:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mPaint:Landroid/graphics/Paint;

    iput v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidOffsetY:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidAngle:F

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->kLidUpHeight:I

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTablet:Z

    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z

    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsLandscape:Z

    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsNormalTrashIcon:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mPaint:Landroid/graphics/Paint;

    iput v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidOffsetY:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidAngle:F

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->kLidUpHeight:I

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTablet:Z

    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z

    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsLandscape:Z

    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsNormalTrashIcon:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mPaint:Landroid/graphics/Paint;

    iput v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidOffsetY:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidAngle:F

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->kLidUpHeight:I

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->init()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/lockscreenshortcut/DeleteView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/lockscreenshortcut/DeleteView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->isTrashCanShakeMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/lockscreenshortcut/DeleteView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTrashCanShakeMode:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/settings/lockscreenshortcut/DeleteView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z

    return p1
.end method

.method private draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v0, v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v1, v2, v3

    iget-boolean v2, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTablet:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getTextWidth()I

    move-result v2

    sub-int/2addr v0, v2

    :goto_0
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000

    mul-float/2addr v3, p4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v2, p3, Landroid/graphics/Rect;->left:I

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p3, Landroid/graphics/Rect;->top:I

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    sget v2, Lcom/android/settings/lockscreenshortcut/DeleteView;->TEXT_SIZE:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method private getTextPaint()Landroid/graphics/Paint;
    .locals 5

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x40400000

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    sget v1, Lcom/android/settings/lockscreenshortcut/DeleteView;->TEXT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-object v0
.end method

.method private getTrashCanLidAngle()F
    .locals 1

    iget v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidAngle:F

    return v0
.end method

.method private init()V
    .locals 13

    const v12, 0x7f02065b

    const/4 v11, 0x0

    const-wide v9, 0x3ff3333333333333L

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f007c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sput v6, Lcom/android/settings/lockscreenshortcut/DeleteView;->TEXT_SIZE:I

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v6, 0x1

    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const v6, 0x7f02065d

    invoke-static {v5, v6, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v9

    double-to-int v6, v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-double v7, v7

    mul-double/2addr v7, v9

    double-to-int v7, v7

    invoke-static {v2, v6, v7, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCan:Landroid/graphics/Bitmap;

    const v6, 0x7f02065c

    invoke-static {v5, v6, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v9

    double-to-int v6, v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-double v7, v7

    mul-double/2addr v7, v9

    double-to-int v7, v7

    invoke-static {v3, v6, v7, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCanFill:Landroid/graphics/Bitmap;

    const v6, 0x7f02065e

    invoke-static {v5, v6, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v9

    double-to-int v6, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-double v7, v7

    mul-double/2addr v7, v9

    double-to-int v7, v7

    invoke-static {v1, v6, v7, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashBinOnly:Landroid/graphics/Bitmap;

    const v6, 0x7f02065f

    invoke-static {v5, v6, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v9

    double-to-int v6, v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-double v7, v7

    mul-double/2addr v7, v9

    double-to-int v7, v7

    invoke-static {v4, v6, v7, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashLidOnly:Landroid/graphics/Bitmap;

    invoke-static {v5, v12, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mNormalTrash:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    iget-object v8, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual {v6, v11, v11, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTablet:Z

    return-void
.end method

.method private isTrashCanShakeMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTrashCanShakeMode:Z

    return v0
.end method

.method private setTrashCanFillAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCanFillAlpha:F

    return-void
.end method

.method private setTrashCanLidAngle(F)V
    .locals 0

    iput p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidAngle:F

    return-void
.end method

.method private setTrashCanLidOffset(II)V
    .locals 0

    iput p2, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidOffsetY:I

    return-void
.end method

.method private setTrashCanShakeMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTrashCanShakeMode:Z

    return-void
.end method

.method private startAnimator(IJ)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, p3}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mCurrentAnimator:Landroid/animation/Animator;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsNormalTrashIcon:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mNormalTrash:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v5, v3, v8}, Lcom/android/settings/lockscreenshortcut/DeleteView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->isAnimating()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTrashCanShakeMode:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashBinOnly:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v5, v3, v8}, Lcom/android/settings/lockscreenshortcut/DeleteView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidOffsetY:I

    sub-int/2addr v5, v6

    iput v5, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v1, v5, 0x2

    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashLidOnly:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v2, v5, 0x2

    iget-boolean v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTablet:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getTextWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashLidOnly:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    div-int/lit8 v2, v5, 0x5

    :cond_1
    iget-boolean v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsLandscape:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidAngle:F

    const/high16 v6, 0x40a00000

    div-float/2addr v5, v6

    iget v6, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v1

    int-to-float v6, v6

    iget v7, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v2

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    :goto_0
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashLidOnly:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v5, v3, v8}, Lcom/android/settings/lockscreenshortcut/DeleteView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-boolean v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTablet:Z

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v6, v4, 0x2

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getTextWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v0, 0x6

    add-int/2addr v6, v7

    invoke-virtual {p0, p1, v5, v6}, Lcom/android/settings/lockscreenshortcut/DeleteView;->drawText(Landroid/graphics/Canvas;II)V

    :goto_2
    return-void

    :cond_3
    iget v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidAngle:F

    iget v6, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v1

    int-to-float v6, v6

    iget v7, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v2

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_0

    :cond_4
    iget v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCanAlpha:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCan:Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCanAlpha:F

    invoke-direct {p0, p1, v5, v3, v6}, Lcom/android/settings/lockscreenshortcut/DeleteView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V

    :cond_5
    iget v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCanFillAlpha:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCanFill:Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCanFillAlpha:F

    invoke-direct {p0, p1, v5, v3, v6}, Lcom/android/settings/lockscreenshortcut/DeleteView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getTextWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v0, 0x2

    add-int/2addr v6, v7

    sget v7, Lcom/android/settings/lockscreenshortcut/DeleteView;->TEXT_SIZE:I

    mul-int/lit8 v7, v7, 0x2

    div-int/lit8 v7, v7, 0x6

    add-int/2addr v6, v7

    invoke-virtual {p0, p1, v5, v6}, Lcom/android/settings/lockscreenshortcut/DeleteView;->drawText(Landroid/graphics/Canvas;II)V

    goto :goto_2
.end method

.method public drawText(Landroid/graphics/Canvas;II)V
    .locals 8

    const v2, 0x7f090b6d

    if-gez p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getTextWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x2

    sub-int p2, v0, v2

    const/4 v2, 0x0

    div-int/lit8 v3, v7, 0x2

    int-to-float v4, p2

    int-to-float v5, p3

    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    div-int/lit8 v2, v7, 0x2

    int-to-float v4, p2

    sget v0, Lcom/android/settings/lockscreenshortcut/DeleteView;->TEXT_SIZE:I

    add-int/2addr v0, p3

    int-to-float v5, v0

    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v6

    move-object v0, p1

    move v3, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getTextWidth()I
    .locals 4

    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090b6d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTrashCanShakeMode:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    return-void
.end method

.method protected setAnimating(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    return-void
.end method

.method public setFadeOutTrashCan(F)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTablet:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanAlpha(F)V

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setNormalTrashIcon()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsNormalTrashIcon:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOrienationMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsLandscape:Z

    return-void
.end method

.method protected setTrashCanAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCanAlpha:F

    return-void
.end method

.method public setTrashCanFill(F)V
    .locals 1

    const/high16 v0, 0x3f800000

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanAlpha(F)V

    invoke-direct {p0, p1}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanFillAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTrashCanLidDown(F)V
    .locals 4

    const/high16 v3, 0x3f800000

    const/4 v0, 0x0

    const/high16 v1, 0x40800000

    sub-float v2, v3, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanLidOffset(II)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanLidAngle(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    cmpl-float v0, p1, v3

    if-ltz v0, :cond_0

    :cond_0
    return-void
.end method

.method public setTrashCanLidShake(F)V
    .locals 9

    const/high16 v8, 0x41000000

    const/high16 v7, -0x3ec00000

    const/high16 v6, -0x40800000

    const/high16 v5, 0x41400000

    const/high16 v2, 0x41000000

    mul-float/2addr p1, v8

    const/high16 v3, 0x41400000

    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getTrashCanLidAngle()F

    move-result v0

    iget v4, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mPreviousLidShakeValue:F

    sub-float v1, p1, v4

    iput p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mPreviousLidShakeValue:F

    iget v4, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    mul-float/2addr v4, v1

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    cmpl-float v4, v0, v5

    if-lez v4, :cond_2

    sub-float v4, v0, v5

    sub-float v0, v5, v4

    iget v4, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    mul-float/2addr v4, v6

    iput v4, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanLidAngle(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    cmpl-float v4, p1, v8

    if-ltz v4, :cond_1

    :cond_1
    return-void

    :cond_2
    cmpg-float v4, v0, v7

    if-gez v4, :cond_0

    add-float v4, v0, v5

    sub-float v0, v7, v4

    iget v4, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    mul-float/2addr v4, v6

    iput v4, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    goto :goto_0
.end method

.method public setTrashCanLidUp(F)V
    .locals 3

    const/high16 v2, 0x3f800000

    const/4 v0, 0x0

    const/high16 v1, 0x40800000

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanLidOffset(II)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    cmpl-float v0, p1, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mPreviousLidShakeValue:F

    iput v2, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    :cond_0
    return-void
.end method

.method public setTrashCanUnfill(F)V
    .locals 2

    const/high16 v1, 0x3f800000

    invoke-virtual {p0, p1}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanAlpha(F)V

    sub-float v0, v1, p1

    invoke-direct {p0, v0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanFillAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public startTrashCanFillUnfillAnimation()V
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsNormalTrashIcon:Z

    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060001

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060005

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x7f060000

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    new-instance v3, Lcom/android/settings/lockscreenshortcut/DeleteView$2;

    invoke-direct {v3, p0}, Lcom/android/settings/lockscreenshortcut/DeleteView$2;-><init>(Lcom/android/settings/lockscreenshortcut/DeleteView;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startTrashCanShakeAnimation()V
    .locals 7

    const-wide/16 v5, 0x3c

    const/4 v4, 0x0

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsNormalTrashIcon:Z

    const/high16 v3, 0x3f800000

    invoke-virtual {p0, v3}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanAlpha(F)V

    invoke-direct {p0, v4}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanFillAlpha(F)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanShakeMode(Z)V

    invoke-direct {p0, v4}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanLidAngle(F)V

    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060004

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060003

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060002

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    new-instance v3, Lcom/android/settings/lockscreenshortcut/DeleteView$1;

    invoke-direct {v3, p0}, Lcom/android/settings/lockscreenshortcut/DeleteView$1;-><init>(Lcom/android/settings/lockscreenshortcut/DeleteView;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    iput-object v2, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mCurrentAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public stopTrashCanShakeAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTrashCanShakeMode:Z

    return-void
.end method
