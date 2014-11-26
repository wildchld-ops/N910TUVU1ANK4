.class public Lcom/android/launcher2/NewFolderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "NewFolderDrawable.java"


# static fields
.field public static final OPEN_FACTOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/launcher2/NewFolderDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCALE_FACTOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/launcher2/NewFolderDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBack:Landroid/graphics/drawable/Drawable;

.field private mBounds:Landroid/graphics/Rect;

.field private mCamera:Landroid/graphics/Camera;

.field private mFront:Landroid/graphics/drawable/Drawable;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mOpenAnimator:Landroid/animation/Animator;

.field private mOpenFactor:F

.field private mOriginalBounds:Landroid/graphics/Rect;

.field private mScaleAnimator:Landroid/animation/Animator;

.field private mScaleFactor:F

.field private mSelected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/launcher2/NewFolderDrawable$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "openFactor"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/NewFolderDrawable$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/NewFolderDrawable;->OPEN_FACTOR:Landroid/util/Property;

    new-instance v0, Lcom/android/launcher2/NewFolderDrawable$2;

    const-class v1, Ljava/lang/Float;

    const-string v2, "scaleFactor"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/NewFolderDrawable$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/NewFolderDrawable;->SCALE_FACTOR:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mCamera:Landroid/graphics/Camera;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mSelected:Z

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleFactor:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenFactor:F

    iput-object p2, p0, Lcom/android/launcher2/NewFolderDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020121

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method private drawPiece(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
    .param p2    # Landroid/graphics/drawable/Drawable;
    .param p3    # F
    .param p4    # F

    const/high16 v4, 0x40000000

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v3, v4

    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v2, v3, v4

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f451eb8

    mul-float/2addr v3, v4

    sub-float v0, v3, v2

    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mCamera:Landroid/graphics/Camera;

    iget v4, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenFactor:F

    mul-float/2addr v4, p4

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->rotateY(F)V

    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mCamera:Landroid/graphics/Camera;

    neg-float v4, v0

    invoke-virtual {v3, v5, v4, v5}, Landroid/graphics/Camera;->translate(FFF)V

    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mCamera:Landroid/graphics/Camera;

    iget v4, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenFactor:F

    mul-float/2addr v4, p3

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->rotateX(F)V

    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3, v5, v0, v5}, Landroid/graphics/Camera;->translate(FFF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mCamera:Landroid/graphics/Camera;

    iget-object v4, p0, Lcom/android/launcher2/NewFolderDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mMatrix:Landroid/graphics/Matrix;

    neg-float v4, v1

    neg-float v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mSelected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/launcher2/NewFolderDrawable;->drawPiece(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    const/high16 v1, -0x3e380000

    const/high16 v2, -0x3e900000

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/launcher2/NewFolderDrawable;->drawPiece(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getOpenFactor()F
    .locals 1

    iget v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenFactor:F

    return v0
.end method

.method public getScaleFactor()F
    .locals 1

    iget v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleFactor:F

    return v0
.end method

.method public isStateful()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2
    .param p1    # Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher2/NewFolderDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 13
    .param p1    # [I

    const/high16 v12, 0x3f800000

    const-wide/16 v10, 0x0

    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v6, p1

    if-ge v1, v6, :cond_2

    aget v6, p1, v1

    const v7, 0x10100a1

    if-ne v6, v7, :cond_0

    const/4 v3, 0x1

    :cond_0
    aget v6, p1, v1

    const v7, 0x101009e

    if-ne v6, v7, :cond_1

    const/4 v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    move v3, v4

    :goto_1
    iget-boolean v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mSelected:Z

    if-ne v3, v6, :cond_4

    :goto_2
    return v4

    :cond_3
    move v3, v5

    goto :goto_1

    :cond_4
    iput-boolean v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mSelected:Z

    iget-object v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenAnimator:Landroid/animation/Animator;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenAnimator:Landroid/animation/Animator;

    invoke-virtual {v6}, Landroid/animation/Animator;->cancel()V

    :cond_5
    iget-object v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleAnimator:Landroid/animation/Animator;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleAnimator:Landroid/animation/Animator;

    invoke-virtual {v6}, Landroid/animation/Animator;->cancel()V

    :cond_6
    if-eqz v3, :cond_7

    sget-object v6, Lcom/android/launcher2/NewFolderDrawable;->SCALE_FACTOR:Landroid/util/Property;

    new-array v7, v9, [F

    iget v8, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleFactor:F

    aput v8, v7, v5

    const v8, 0x3f933333

    aput v8, v7, v4

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleAnimator:Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleAnimator:Landroid/animation/Animator;

    invoke-virtual {v6, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleAnimator:Landroid/animation/Animator;

    const-wide/16 v7, 0x64

    invoke-virtual {v6, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    sget-object v6, Lcom/android/launcher2/NewFolderDrawable;->OPEN_FACTOR:Landroid/util/Property;

    new-array v7, v9, [F

    iget v8, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenFactor:F

    aput v8, v7, v5

    aput v12, v7, v4

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenAnimator:Landroid/animation/Animator;

    iget-object v5, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenAnimator:Landroid/animation/Animator;

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object v5, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenAnimator:Landroid/animation/Animator;

    const-wide/16 v6, 0xfa

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    :goto_3
    iget-object v5, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleAnimator:Landroid/animation/Animator;

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleAnimator:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->start()V

    iget-object v5, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenAnimator:Landroid/animation/Animator;

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenAnimator:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->start()V

    goto :goto_2

    :cond_7
    const/16 v2, 0xa7

    sget-object v6, Lcom/android/launcher2/NewFolderDrawable;->OPEN_FACTOR:Landroid/util/Property;

    new-array v7, v9, [F

    iget v8, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenFactor:F

    aput v8, v7, v5

    const/4 v8, 0x0

    aput v8, v7, v4

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenAnimator:Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenAnimator:Landroid/animation/Animator;

    invoke-virtual {v6, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenAnimator:Landroid/animation/Animator;

    const-wide/16 v7, 0xa7

    invoke-virtual {v6, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    sget-object v6, Lcom/android/launcher2/NewFolderDrawable;->SCALE_FACTOR:Landroid/util/Property;

    new-array v7, v9, [F

    iget v8, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleFactor:F

    aput v8, v7, v5

    aput v12, v7, v4

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleAnimator:Landroid/animation/Animator;

    iget-object v5, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleAnimator:Landroid/animation/Animator;

    invoke-virtual {v5, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object v5, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleAnimator:Landroid/animation/Animator;

    const-wide/16 v6, 0xa7

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    goto :goto_3
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setOpenFactor(F)V
    .locals 0
    .param p1    # F

    iput p1, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenFactor:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setScaleFactor(F)V
    .locals 6
    .param p1    # F

    const/high16 v5, 0x40000000

    const/high16 v4, 0x3f800000

    iget-object v2, p0, Lcom/android/launcher2/NewFolderDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleFactor:F

    iget-object v2, p0, Lcom/android/launcher2/NewFolderDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float v3, p1, v4

    mul-float/2addr v2, v3

    div-float/2addr v2, v5

    float-to-int v1, v2

    iget-object v2, p0, Lcom/android/launcher2/NewFolderDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v3, p1, v4

    mul-float/2addr v2, v3

    div-float/2addr v2, v5

    float-to-int v0, v2

    iget-object v2, p0, Lcom/android/launcher2/NewFolderDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/launcher2/NewFolderDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/launcher2/NewFolderDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/launcher2/NewFolderDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/launcher2/NewFolderDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0
.end method
