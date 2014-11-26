.class public Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;
.super Ljava/lang/Object;
.source "GLSurfaceViewRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected framecounter:I

.field protected heightForLand:I

.field protected heightForPort:I

.field protected isAffordanceOccur:Z

.field protected mContext:Landroid/content/Context;

.field protected mGlView:Landroid/opengl/GLSurfaceView;

.field protected mHeight:I

.field protected mIsNeedToReinit:Z

.field protected final mIsTargetBuild:Z

.field protected final mLibDir:Ljava/lang/String;

.field protected mLibName:Ljava/lang/String;

.field protected mPixelsForLand:[I

.field protected mPixelsForPort:[I

.field protected mWidth:I

.field protected timeStart:J

.field protected widthForLand:I

.field protected widthForPort:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mWidth:I

    iput v0, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mHeight:I

    iput-object v1, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mPixelsForPort:[I

    iput v0, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->widthForPort:I

    iput v0, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->heightForPort:I

    iput-object v1, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mPixelsForLand:[I

    iput v0, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->widthForLand:I

    iput v0, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->heightForLand:I

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mIsNeedToReinit:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mIsTargetBuild:Z

    const-string v0, "/system/lib/"

    iput-object v0, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mLibDir:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clearEffect()V
    .locals 2

    invoke-static {}, Lcom/sec/android/visualeffect/common/Native;->prehandleClearEffect()V

    iget-object v0, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mGlView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method public destroy()V
    .locals 0

    invoke-static {}, Lcom/sec/android/visualeffect/common/Native;->prehandleStop()V

    return-void
.end method

.method public handleTouchEvent(III)V
    .locals 2
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void

    :pswitch_1
    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Lcom/sec/android/visualeffect/common/Native;->prehandleTouch(III)V

    goto :goto_0

    :pswitch_2
    invoke-static {p2, p3, v1}, Lcom/sec/android/visualeffect/common/Native;->prehandleTouch(III)V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x2

    invoke-static {p2, p3, v0}, Lcom/sec/android/visualeffect/common/Native;->prehandleTouch(III)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public loadSpecialTexture([Ljava/lang/String;)V
    .locals 17
    .param p1    # [Ljava/lang/String;

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, v14, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const-string v15, "com.sec.android.visualeffect.res"

    const/4 v9, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v3, v15, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    :goto_1
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const/4 v12, 0x0

    :goto_2
    move-object/from16 v0, p1

    array-length v3, v0

    if-ge v12, v3, :cond_2

    :try_start_1
    aget-object v3, p1, v12

    const-string v5, "drawable"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v5, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, v16

    invoke-static {v0, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int v3, v4, v8

    new-array v2, v3, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const-string v3, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding texture Width\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding texture Height\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v3, p1, v12

    invoke-static {v3, v2, v4, v8}, Lcom/sec/android/visualeffect/common/Native;->loadTexture(Ljava/lang/String;[III)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :catch_0
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v10

    const-string v3, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "There is no image \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v12

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mGlView:Landroid/opengl/GLSurfaceView;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    goto/16 :goto_0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13
    .param p1    # Ljavax/microedition/khronos/opengles/GL10;

    const-wide/16 v11, 0x0

    const/4 v10, 0x0

    const/high16 v9, 0x447a0000

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->timeStart:J

    cmp-long v4, v6, v11

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->timeStart:J

    :cond_0
    iget-object v4, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mPixelsForPort:[I

    if-eqz v4, :cond_1

    const-string v4, "bg_p"

    iget-object v6, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mPixelsForPort:[I

    iget v7, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->widthForPort:I

    iget v8, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->heightForPort:I

    invoke-static {v4, v6, v7, v8}, Lcom/sec/android/visualeffect/common/Native;->loadTexture(Ljava/lang/String;[III)V

    iput-object v10, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mPixelsForPort:[I

    :cond_1
    iget-object v4, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mPixelsForLand:[I

    if-eqz v4, :cond_2

    const-string v4, "bg_l"

    iget-object v6, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mPixelsForLand:[I

    iget v7, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->widthForLand:I

    iget v8, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->heightForLand:I

    invoke-static {v4, v6, v7, v8}, Lcom/sec/android/visualeffect/common/Native;->loadTexture(Ljava/lang/String;[III)V

    iput-object v10, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mPixelsForLand:[I

    :cond_2
    iget-boolean v4, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mIsNeedToReinit:Z

    if-eqz v4, :cond_3

    iput-boolean v5, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mIsNeedToReinit:Z

    iget-object v4, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mLibName:Ljava/lang/String;

    iget v6, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mWidth:I

    iget v7, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mHeight:I

    invoke-static {v4, v6, v7}, Lcom/sec/android/visualeffect/common/Native;->prehandleStart(Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->loadSpecialTexture([Ljava/lang/String;)V

    iget v4, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mWidth:I

    iget v6, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mHeight:I

    if-ge v4, v6, :cond_7

    move v4, v5

    :goto_0
    invoke-static {v4}, Lcom/sec/android/visualeffect/common/Native;->prehandleSetOrientation(I)V

    invoke-static {}, Lcom/sec/android/visualeffect/common/Native;->prehandleInitEffect()V

    invoke-static {}, Lcom/sec/android/visualeffect/common/Native;->prehandleRecycleTextures()V

    :cond_3
    iget-boolean v4, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->isAffordanceOccur:Z

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/sec/android/visualeffect/common/Native;->prehandleAffordance()V

    iput-boolean v5, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->isAffordanceOccur:Z

    :cond_4
    invoke-static {}, Lcom/sec/android/visualeffect/common/Native;->prehandleDraw()I

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->TAG:Ljava/lang/String;

    const-string v6, "dirty mode"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v4, v5}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v6, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->timeStart:J

    sub-long v6, v1, v6

    long-to-float v3, v6

    cmpl-float v4, v3, v9

    if-ltz v4, :cond_6

    iget v4, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->framecounter:I

    int-to-float v4, v4

    mul-float/2addr v4, v9

    div-float v0, v4, v3

    iput v5, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->framecounter:I

    iput-wide v11, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->timeStart:J

    iget-object v4, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fps "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget v4, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->framecounter:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->framecounter:I

    return-void

    :cond_7
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3
    .param p1    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2    # I
    .param p3    # I

    const/4 v1, 0x1

    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceChanged problem width"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mWidth:I

    if-ne v0, p2, :cond_2

    iget v0, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mHeight:I

    if-eq v0, p3, :cond_3

    :cond_2
    iput-boolean v1, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mIsNeedToReinit:Z

    :cond_3
    iput p2, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mWidth:I

    iput p3, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mHeight:I

    iget-object v0, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .param p1    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2    # Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->TAG:Ljava/lang/String;

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mWidth:I

    iput v2, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mIsNeedToReinit:Z

    return-void
.end method

.method public setLandscapeBitmap([III)V
    .locals 2
    .param p1    # [I
    .param p2    # I
    .param p3    # I

    iget-object v0, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->TAG:Ljava/lang/String;

    const-string v1, "setLandscapeBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mPixelsForLand:[I

    iput p2, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->widthForLand:I

    iput p3, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->heightForLand:I

    iget-object v0, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mGlView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method public setPortraitBitmap([III)V
    .locals 2
    .param p1    # [I
    .param p2    # I
    .param p3    # I

    iget-object v0, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->TAG:Ljava/lang/String;

    const-string v1, "setPortraitBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mPixelsForPort:[I

    iput p2, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->widthForPort:I

    iput p3, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->heightForPort:I

    iget-object v0, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mGlView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method public showUnlock()V
    .locals 2

    invoke-static {}, Lcom/sec/android/visualeffect/common/Native;->prehandleUnlock()V

    iget-object v0, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mGlView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method public showUnlockAffordance()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->TAG:Ljava/lang/String;

    const-string v1, "showUnlockAffordance"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->isAffordanceOccur:Z

    iget-object v0, p0, Lcom/sec/android/visualeffect/common/GLSurfaceViewRenderer;->mGlView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method
