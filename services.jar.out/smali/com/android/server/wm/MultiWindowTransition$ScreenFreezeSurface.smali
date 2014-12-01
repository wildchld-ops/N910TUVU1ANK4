.class Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;
.super Ljava/lang/Object;
.source "MultiWindowTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiWindowTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenFreezeSurface"
.end annotation


# static fields
.field static final BACKGROUND_LAYER:I = 0x2af7

.field static final DEBUG:Z = false

.field static final FREEZE_LAYER:I = 0x1e8481

.field static final TAG:Ljava/lang/String; = "ScreenFreezeSurface"


# instance fields
.field mAlpha:F

.field mBGSurface:Landroid/view/SurfaceControl;

.field mRect:Landroid/graphics/Rect;

.field mRotation:I

.field mSurface:Landroid/view/SurfaceControl;

.field mTmpFloats:[F

.field mTmpMatrix:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>(Landroid/view/SurfaceSession;IIIIIIZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/SurfaceControl$OutOfResourcesException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    sub-int v4, p4, p2

    sub-int v5, p5, p3

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    move/from16 v0, p7

    iput v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRotation:I

    new-instance v1, Landroid/view/SurfaceControl;

    const-string v3, "ScreenFreezeSurface"

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz p8, :cond_0

    new-instance v1, Landroid/view/SurfaceControl;

    const-string v3, "ScreenFreezeBGSurface"

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_1

    new-instance v9, Landroid/view/Surface;

    invoke-direct {v9}, Landroid/view/Surface;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v9, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, v9}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V

    invoke-virtual {v9}, Landroid/view/Surface;->destroy()V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const v2, 0x1e8481

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    iget v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRotation:I

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_2

    new-instance v8, Landroid/view/Surface;

    invoke-direct {v8}, Landroid/view/Surface;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v8, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, v8}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V

    invoke-virtual {v8}, Landroid/view/Surface;->destroy()V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/16 v2, 0x2af7

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    iget v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRotation:I

    packed-switch v1, :pswitch_data_1

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/high16 v2, 0x3f800000

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000

    invoke-virtual {v1, v2, v3, v6, v7}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    int-to-float v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    const/high16 v3, -0x40800000

    const/high16 v6, 0x3f800000

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v3, v6, v7}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    int-to-float v2, v4

    int-to-float v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/high16 v2, -0x40800000

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x40800000

    invoke-virtual {v1, v2, v3, v6, v7}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    int-to-float v2, v5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000

    const/high16 v6, -0x40800000

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v3, v6, v7}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/high16 v2, 0x3f800000

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000

    invoke-virtual {v1, v2, v3, v6, v7}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    int-to-float v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    const/high16 v3, -0x40800000

    const/high16 v6, 0x3f800000

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v3, v6, v7}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_1

    :pswitch_6
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    int-to-float v2, v4

    int-to-float v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/high16 v2, -0x40800000

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x40800000

    invoke-virtual {v1, v2, v3, v6, v7}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto/16 :goto_1

    :pswitch_7
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    int-to-float v2, v5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000

    const/high16 v6, -0x40800000

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v3, v6, v7}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method hide()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    :cond_1
    return-void
.end method

.method kill()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    :cond_1
    return-void
.end method

.method setAnimationTransform(Landroid/view/animation/Transformation;)V
    .locals 10

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v1, v4

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v2, v4

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v3, v4

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v0, v4

    iget v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRotation:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v9, 0x4

    aget v8, v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl;->setAlpha(F)V

    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x43870000

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    sub-float v5, v3, v2

    invoke-virtual {v4, v1, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x43340000

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    sub-float v5, v3, v1

    sub-float v6, v0, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x42b40000

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    sub-float v5, v0, v1

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method show()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
