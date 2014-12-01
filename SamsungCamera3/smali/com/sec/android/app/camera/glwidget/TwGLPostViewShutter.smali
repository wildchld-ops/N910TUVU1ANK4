.class public Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;
.super Lcom/sec/android/glview/TwGLAniViewGroup;
.source "TwGLPostViewShutter.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "TwGLPostViewShutter"


# instance fields
.field private mAniShrinkVertex:Lcom/sec/android/glanimation/TwGLAniShrinkVertex;

.field private mAniShutterBTexture:Lcom/sec/android/glview/TwGLAniResourceTexture;

.field private mAniShutterBVertex:Lcom/sec/android/glanimation/TwGLAniShutterBVertex;

.field private mAniShutterTTexture:Lcom/sec/android/glview/TwGLAniResourceTexture;

.field private mAniShutterTVertex:Lcom/sec/android/glanimation/TwGLAniShutterTVertex;

.field private mDimRect:Lcom/sec/android/glview/TwGLRectangle;

.field private mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLAniBitmapTexture;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFFLandroid/graphics/Bitmap;Z)V
    .locals 20

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v1

    int-to-float v5, v1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v1

    int-to-float v6, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLAniViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v1

    int-to-float v0, v1

    move/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v1

    int-to-float v0, v1

    move/from16 v17, v0

    const/4 v7, 0x0

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/16 v18, 0x1

    :goto_0
    new-instance v1, Lcom/sec/android/glview/TwGLAniBitmapTexture;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLAniBitmapTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLAniBitmapTexture;

    const/4 v1, 0x1

    move/from16 v0, p7

    if-ne v0, v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLAniBitmapTexture;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLTexture;->setFlip(Z)V

    :cond_0
    :goto_1
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_3

    new-instance v1, Lcom/sec/android/glview/TwGLAniResourceTexture;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f02048a

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLAniResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterTTexture:Lcom/sec/android/glview/TwGLAniResourceTexture;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterTTexture:Lcom/sec/android/glview/TwGLAniResourceTexture;

    const v2, 0x3f7d70a4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    new-instance v1, Lcom/sec/android/glview/TwGLAniResourceTexture;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f02048b

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLAniResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterBTexture:Lcom/sec/android/glview/TwGLAniResourceTexture;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterBTexture:Lcom/sec/android/glview/TwGLAniResourceTexture;

    const v2, 0x3f7d70a4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    :goto_2
    new-instance v1, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glanimation/TwGLAniShrinkVertex;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShrinkVertex:Lcom/sec/android/glanimation/TwGLAniShrinkVertex;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShrinkVertex:Lcom/sec/android/glanimation/TwGLAniShrinkVertex;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLAniBitmapTexture;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShrinkVertex:Lcom/sec/android/glanimation/TwGLAniShrinkVertex;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLAniVertex;->setPicureMode(Z)V

    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_4

    new-instance v8, Lcom/sec/android/glanimation/TwGLAniShutterTVertex;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v9

    const/high16 v1, 0x40a00000

    sub-float v10, p2, v1

    const/high16 v11, -0x3f600000

    const/high16 v1, 0x40000000

    div-float v1, p4, v1

    const/high16 v2, 0x40a00000

    add-float v12, v1, v2

    const/high16 v1, 0x41200000

    add-float v13, v17, v1

    const/4 v14, 0x1

    invoke-direct/range {v8 .. v14}, Lcom/sec/android/glanimation/TwGLAniShutterTVertex;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZ)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterTVertex:Lcom/sec/android/glanimation/TwGLAniShutterTVertex;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterTVertex:Lcom/sec/android/glanimation/TwGLAniShutterTVertex;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterTTexture:Lcom/sec/android/glview/TwGLAniResourceTexture;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v8, Lcom/sec/android/glanimation/TwGLAniShutterBVertex;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v9

    const/high16 v1, 0x40000000

    div-float v1, p4, v1

    add-float v10, p2, v1

    const/high16 v11, -0x3f600000

    const/high16 v1, 0x40000000

    div-float v1, p4, v1

    const/high16 v2, 0x40a00000

    add-float v12, v1, v2

    const/high16 v1, 0x41200000

    add-float v13, v17, v1

    const/4 v14, 0x1

    invoke-direct/range {v8 .. v14}, Lcom/sec/android/glanimation/TwGLAniShutterBVertex;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZ)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterBVertex:Lcom/sec/android/glanimation/TwGLAniShutterBVertex;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterBVertex:Lcom/sec/android/glanimation/TwGLAniShutterBVertex;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterBTexture:Lcom/sec/android/glview/TwGLAniResourceTexture;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    :goto_3
    new-instance v8, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v1, 0x7f090008

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v14

    const/high16 v15, 0x3f800000

    const/16 v16, 0x3

    move/from16 v12, v19

    move/from16 v13, v17

    invoke-direct/range {v8 .. v16}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIFI)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mDimRect:Lcom/sec/android/glview/TwGLRectangle;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mDimRect:Lcom/sec/android/glview/TwGLRectangle;

    const v2, 0x3f4ccccd

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mDimRect:Lcom/sec/android/glview/TwGLRectangle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShrinkVertex:Lcom/sec/android/glanimation/TwGLAniShrinkVertex;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    return-void

    :cond_1
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mPreviewBitmapTexture:Lcom/sec/android/glview/TwGLAniBitmapTexture;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLTexture;->setFlip(Z)V

    goto/16 :goto_1

    :cond_3
    new-instance v1, Lcom/sec/android/glview/TwGLAniResourceTexture;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f02048c

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLAniResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterTTexture:Lcom/sec/android/glview/TwGLAniResourceTexture;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterTTexture:Lcom/sec/android/glview/TwGLAniResourceTexture;

    const v2, 0x3f7d70a4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    new-instance v1, Lcom/sec/android/glview/TwGLAniResourceTexture;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f020489

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLAniResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterBTexture:Lcom/sec/android/glview/TwGLAniResourceTexture;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterBTexture:Lcom/sec/android/glview/TwGLAniResourceTexture;

    const v2, 0x3f7d70a4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    goto/16 :goto_2

    :cond_4
    new-instance v8, Lcom/sec/android/glanimation/TwGLAniShutterTVertex;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v9

    const/high16 v1, 0x40a00000

    sub-float v10, p2, v1

    const/high16 v11, -0x3f600000

    const/high16 v1, 0x41200000

    add-float v12, p4, v1

    const/high16 v1, 0x40000000

    div-float v1, v17, v1

    const/high16 v2, 0x40a00000

    add-float v13, v1, v2

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v14}, Lcom/sec/android/glanimation/TwGLAniShutterTVertex;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZ)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterTVertex:Lcom/sec/android/glanimation/TwGLAniShutterTVertex;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterTVertex:Lcom/sec/android/glanimation/TwGLAniShutterTVertex;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterTTexture:Lcom/sec/android/glview/TwGLAniResourceTexture;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v8, Lcom/sec/android/glanimation/TwGLAniShutterBVertex;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v9

    const/high16 v1, 0x40a00000

    sub-float v10, p2, v1

    const/high16 v1, 0x40000000

    div-float v11, v17, v1

    const/high16 v1, 0x41200000

    add-float v12, p4, v1

    const/high16 v1, 0x40000000

    div-float v1, v17, v1

    const/high16 v2, 0x40a00000

    add-float v13, v1, v2

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v14}, Lcom/sec/android/glanimation/TwGLAniShutterBVertex;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZ)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterBVertex:Lcom/sec/android/glanimation/TwGLAniShutterBVertex;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterBVertex:Lcom/sec/android/glanimation/TwGLAniShutterBVertex;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterBTexture:Lcom/sec/android/glview/TwGLAniResourceTexture;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto/16 :goto_3
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLAniViewGroup;->playAnimation(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;)Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;)Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLAniViewGroup;->playAnimation(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLAniViewGroup;->playAnimation(I)V

    return-void
.end method


# virtual methods
.method protected setAnimationStep(I)V
    .locals 5

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterTVertex:Lcom/sec/android/glanimation/TwGLAniShutterTVertex;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterTVertex:Lcom/sec/android/glanimation/TwGLAniShutterTVertex;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLAniVertex;->stopAniCustomAnimation()V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterBVertex:Lcom/sec/android/glanimation/TwGLAniShutterBVertex;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterBVertex:Lcom/sec/android/glanimation/TwGLAniShutterBVertex;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLAniVertex;->stopAniCustomAnimation()V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShrinkVertex:Lcom/sec/android/glanimation/TwGLAniShrinkVertex;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShrinkVertex:Lcom/sec/android/glanimation/TwGLAniShrinkVertex;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLAniVertex;->stopAniCustomAnimation()V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterTVertex:Lcom/sec/android/glanimation/TwGLAniShutterTVertex;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterTVertex:Lcom/sec/android/glanimation/TwGLAniShutterTVertex;

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterTVertex:Lcom/sec/android/glanimation/TwGLAniShutterTVertex;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLAniVertex;->startAniCustomAnimation()V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterBVertex:Lcom/sec/android/glanimation/TwGLAniShutterBVertex;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterBVertex:Lcom/sec/android/glanimation/TwGLAniShutterBVertex;

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterBVertex:Lcom/sec/android/glanimation/TwGLAniShutterBVertex;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLAniVertex;->setOnAniProgressListener(Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShutterBVertex:Lcom/sec/android/glanimation/TwGLAniShutterBVertex;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLAniVertex;->startAniCustomAnimation()V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShrinkVertex:Lcom/sec/android/glanimation/TwGLAniShrinkVertex;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShrinkVertex:Lcom/sec/android/glanimation/TwGLAniShrinkVertex;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLAniVertex;->setOnAniProgressListener(Lcom/sec/android/glview/TwGLAniVertex$OnAniProgressListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mAniShrinkVertex:Lcom/sec/android/glanimation/TwGLAniShrinkVertex;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLAniVertex;->startAniCustomAnimation()V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mDimRect:Lcom/sec/android/glview/TwGLRectangle;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3f333333

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter$3;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mDimRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;->mDimRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
