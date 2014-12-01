.class Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;
.super Lcom/sec/android/glview/TwGLView;
.source "TwGLPanorama360Menu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Panorama360View"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;
    }
.end annotation


# static fields
.field public static final MSG_FINISH_RENDER_PREVIEW:I = 0x0

.field public static final MSG_REQUEST_REREGISTER_TEXTURE:I = 0x2

.field public static final MSG_REQUEST_SET_POSTVIEW_DATA:I = 0x1

.field public static final PANORAMA_POSTVIEW:I = 0x1

.field public static final PANORAMA_PREVIEW:I


# instance fields
.field private isDefault:Z

.field private isFileSelect:Z

.field private isRegistered:Z

.field private mActivity:Landroid/app/Activity;

.field private mAnimationEnable:Z

.field private mAnimationProgress:I

.field private mAnimationType:I

.field private mAttachStatus:[I

.field private mDispType:I

.field private mDrawBgBlankMode:I

.field private mGyroscopeType:I

.field private mHandler:Landroid/os/Handler;

.field private mIsShootable:[I

.field private mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360ViewEventListener;

.field private mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

.field private mOrientation:I

.field private mPrevTimestamp:J

.field private mPreviewMode:I

.field private mRenderEnable:Z

.field private mRenderInfo:[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

.field private mRenderInfoID:[I

.field private mResetCalled:Z

.field private mResetCount:I

.field private mRotateAngleX:D

.field private mRotateAngleY:D

.field private mRotateRatioX:D

.field private mRotateRatioY:D

.field private mRotation:I

.field private mScale:D

.field private mStartAnimationTime:J

.field private mSyncObj:Ljava/lang/Object;

.field private mTouchSyncObj:Ljava/lang/Object;

.field private mViewHeight:I

.field private mViewWidth:I

.field private render_count:J

.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Lcom/sec/android/glview/TwGLContext;FFLandroid/app/Activity;Landroid/os/Handler;Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;I)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->isDefault:Z

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAttachStatus:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mIsShootable:[I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mSyncObj:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mTouchSyncObj:Ljava/lang/Object;

    const-wide/high16 v0, 0x3ff0000000000000L

    iput-wide v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mScale:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->render_count:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mPrevTimestamp:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mDispType:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationEnable:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationProgress:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mStartAnimationTime:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mOrientation:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderEnable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->isRegistered:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCalled:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCount:I

    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pv Panorama360View "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x43fa0000

    const/high16 v1, 0x43fa0000

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->setSize(FF)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mPreviewMode:I

    iput-object p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    iput-object p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfo:[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfo:[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

    invoke-direct {v2, p0, p8}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;I)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfo:[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

    invoke-direct {v2, p0, p8}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;I)V

    aput-object v2, v0, v1

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfoID:[I

    iput-object p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$1102(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCalled:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCount:I

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCount:I

    return p1
.end method

.method static synthetic access$1402(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationEnable:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;)[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfo:[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;)[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAttachStatus:[I

    return-object v0
.end method

.method private pvGetDeviceRotate()I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mOrientation:I

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mOrientation:I

    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mOrientation:I

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private pvRenderEmptyPreview()V
    .locals 7

    const/4 v1, 0x0

    const/16 v0, 0x9

    new-array v6, v0, [D

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    invoke-virtual {v0, v6, v1, v1, v1}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->getSensorMatrix([D[D[D[I)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    const/4 v2, 0x2

    invoke-virtual {v0, v6, v2}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->setAngleMatrix([DI)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mDispType:I

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotation:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvGetDeviceRotate()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->renderPreview([BIIII)I

    return-void
.end method

.method private pvRenderPreview(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;J)V
    .locals 21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->mLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    :try_start_0
    new-instance v16, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)V

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->is_set:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    move-object/from16 v0, p1

    iput-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->is_set:Z

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->render_count:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->render_count:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mPrevTimestamp:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mPrevTimestamp:J

    sub-long v1, v14, v1

    move-object/from16 v0, v16

    iput-wide v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mFrameInterval:J

    :cond_0
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mPrevTimestamp:J

    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->mSetRenderInfoEndTime:J

    sub-long v1, v14, v1

    move-object/from16 v0, v16

    iput-wide v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mRQRenderToOnDrawFrame:J

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->render_count:J

    move-object/from16 v0, v16

    iput-wide v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mCount:J

    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->mSetRenderInfoTime:J

    move-object/from16 v0, v16

    iput-wide v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mSetRenderInfoTime:J

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->use_gr_mat:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->gr_mat:[D

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mGyroscopeType:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->setAngleMatrix([DI)I

    :cond_1
    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->use_rv_mat:Z

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->rv_mat:[D

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->setAngleMatrix([DI)I

    :cond_2
    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->use_ac_mat:Z

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->ac_mat:[D

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->setAngleMatrix([DI)I

    :cond_3
    const/4 v1, 0x1

    new-array v11, v1, [I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->image:[B

    move-object/from16 v0, p1

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->use_image:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAttachStatus:[I

    invoke-virtual {v1, v2, v3, v11, v4}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->attach([BI[I[I)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v1, 0x0

    aget v1, v11, v1

    move-object/from16 v0, v16

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mImageID:I

    sub-long v1, v9, v17

    move-object/from16 v0, v16

    iput-wide v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mAttachTime:J

    move-object/from16 v0, v16

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mImageID:I

    if-lez v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # operator++ for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mShootingNum:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$3508(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)I

    const-string v1, "TwGLPanorama360Menu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pvRenderPreview mShootingNum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mShootingNum:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$3500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mIsShootable:[I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->getIsShootable([I)I

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAttachStatus:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object/from16 v0, v16

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mAttachStatus:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mIsShootable:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object/from16 v0, v16

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mIsStootable:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mStopUpdate:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$3600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    move-object/from16 v0, v16

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mIsStootable:I

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationEnable:Z

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationProgress:I

    if-gez v1, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b

    const/16 v19, 0xc8

    :goto_0
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mStartAnimationTime:J

    sub-long v1, v12, v1

    const-wide/32 v3, 0x8000

    mul-long/2addr v1, v3

    move/from16 v0, v19

    int-to-long v3, v0

    div-long/2addr v1, v3

    long-to-int v7, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    add-int/lit16 v7, v7, 0x2aaa

    :cond_7
    const v1, 0x8000

    if-lt v7, v1, :cond_8

    const v7, 0x8000

    move-object/from16 v0, p0

    iput v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationProgress:I

    :cond_8
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->image:[B

    move-object/from16 v0, v16

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mImageID:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mDispType:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotation:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationType:I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvGetDeviceRotate()I

    move-result v8

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->renderPreviewWithAnimation([BIIIIII)I

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v1, v9, v17

    move-object/from16 v0, v16

    iput-wide v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mRenderTime:J

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->render_count:J

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-lez v1, :cond_9

    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->mSetRenderInfoStartTime:J

    sub-long v1, v1, p2

    move-object/from16 v0, v16

    iput-wide v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mODFToOPF:J

    :cond_9
    move-object/from16 v0, p1

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->preview_id:I

    move-object/from16 v0, v16

    iput v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mPreviewID:I

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->image:[B

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->image:[B

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->save_path:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->save_path:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360ViewEventListener;

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360ViewEventListener;

    move-object/from16 v0, v16

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360ViewEventListener;->onRenderPreview(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;)V

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p1

    iput-wide v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->mOnDrawEndTime:J

    monitor-exit v20

    return-void

    :cond_b
    const/16 v19, 0x12c

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationProgress:I

    goto :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->image:[B

    move-object/from16 v0, v16

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mImageID:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mDispType:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotation:I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvGetDeviceRotate()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->renderPreview([BIIII)I

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public initSize()V
    .locals 2

    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pv initSize "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDraw()V
    .locals 22

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLView;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mStartingPanorama360Time:J
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)J

    move-result-wide v18

    const-wide/16 v20, 0x7530

    add-long v18, v18, v20

    cmp-long v3, v16, v18

    if-gez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->stopContinuousAF()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->setFocusModeAuto()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideFocusIndicator()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideFocusRect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCount:I

    if-lez v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCount:I

    :goto_1
    return-void

    :catch_0
    move-exception v11

    const-string v3, "TwGLPanorama360Menu"

    const-string v10, "ignore error"

    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCalled:Z

    if-eqz v3, :cond_5

    const-string v3, "TwGLPanorama360Menu"

    const-string v10, "onDraw() mResetCalled"

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mInFinishShootingAsync:Z
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v16, 0xbea

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
    invoke-static {v10, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$2402(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;)Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    move-result-object v3

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v3

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v3, "TwGLPanorama360Menu"

    const-string v10, "mActivityContext is NULL!"

    invoke-static {v3, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    move-result-object v3

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v3

    const/16 v10, 0x3e8

    invoke-virtual {v3, v10}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->setPostCaptureProgressMax(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    move-result-object v3

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    invoke-static {v10}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    move-result-object v10

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mFinishShootingAsync:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;
    invoke-static {v10}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$3200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;

    move-result-object v10

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->mProgress:I
    invoke-static {v10}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->access$3300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;)I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->setPostCaptureProgress(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    move-result-object v3

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->showPostCaptureLayout()V

    :cond_3
    const-string v3, "TwGLPanorama360Menu"

    const-string v10, "onDraw() resetGL(0)"

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->resetGL(I)I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCalled:Z

    const/16 v3, 0xbe2

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnable(I)V

    const/4 v3, 0x1

    const/16 v10, 0x303

    invoke-static {v3, v10}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    move-result-object v10

    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    move-object/from16 v16, v0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v4

    const/16 v5, 0xbea

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    move-object/from16 v16, v0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    move-object/from16 v16, v0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    move-object/from16 v16, v0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$3000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v16

    const v17, 0x7f0c000f

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Ljava/lang/String;)V

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
    invoke-static {v10, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$2402(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;)Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$3100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v10, 0xbea

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    move-object/from16 v16, v0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    move-result-object v16

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$2400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v10

    :try_start_1
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mScale:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioX:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    const-wide v18, 0x3ee4f8b588e368f1L

    cmpl-double v3, v16, v18

    if-lez v3, :cond_6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioY:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    const-wide v18, 0x3ee4f8b588e368f1L

    cmpl-double v3, v16, v18

    if-lez v3, :cond_6

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioX:D

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioY:D

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioX:D

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioY:D

    :goto_3
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mSyncObj:Ljava/lang/Object;

    monitor-enter v10

    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderEnable:Z

    if-nez v3, :cond_7

    const/16 v3, 0xbe2

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnable(I)V

    const/4 v3, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v3, v0, v1, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/4 v3, 0x1

    const/16 v16, 0x303

    move/from16 v0, v16

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    monitor-exit v10

    goto/16 :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_6
    const/4 v15, 0x1

    :try_start_3
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateAngleX:D

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateAngleY:D

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateAngleX:D

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateAngleY:D

    goto :goto_3

    :catchall_1
    move-exception v3

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    :cond_7
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mEmptyPreviewSyncObj:Ljava/lang/Object;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$3400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mSyncObj:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mDrawBgBlankMode:I

    if-eqz v3, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvRenderEmptyPreview()V

    const/16 v3, 0xbe2

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnable(I)V

    const/4 v3, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v3, v0, v1, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/4 v3, 0x1

    const/16 v17, 0x303

    move/from16 v0, v17

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    monitor-exit v10

    goto/16 :goto_1

    :catchall_2
    move-exception v3

    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v3

    :cond_8
    :try_start_8
    monitor-exit v16
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mSyncObj:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mPreviewMode:I

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfoID:[I

    monitor-enter v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfoID:[I

    const/16 v17, 0x0

    aget v3, v3, v17

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v3, v0, :cond_a

    const/4 v12, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfo:[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

    aget-object v14, v3, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfo:[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfoID:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    aget-object v13, v3, v17

    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :try_start_c
    iget-wide v0, v13, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->mOnDrawEndTime:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v14, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvRenderPreview(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;J)V

    const/16 v3, 0xbe2

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnable(I)V

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v3, v10, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    :cond_9
    :goto_5
    const/4 v3, 0x1

    const/16 v10, 0x303

    invoke-static {v3, v10}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/16 v3, 0xbe2

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnable(I)V

    monitor-exit v16

    goto/16 :goto_1

    :catchall_3
    move-exception v3

    monitor-exit v16
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v3

    :catchall_4
    move-exception v3

    :try_start_d
    monitor-exit v16
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :cond_a
    const/4 v12, 0x1

    goto :goto_4

    :catchall_5
    move-exception v3

    :try_start_f
    monitor-exit v10
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :try_start_10
    throw v3

    :cond_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mPreviewMode:I

    const/4 v10, 0x1

    if-ne v3, v10, :cond_9

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->isDefault:Z

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mDispType:I

    invoke-virtual {v3, v10}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->renderPostviewDefault(I)I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->isDefault:Z

    goto :goto_5

    :cond_c
    if-eqz v15, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mDispType:I

    invoke-virtual/range {v3 .. v10}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->renderPostviewAngle(DDDI)I

    goto :goto_5

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mDispType:I

    invoke-virtual/range {v3 .. v10}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->renderPostview(DDDI)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_5
.end method

.method protected onLoad()Z
    .locals 2

    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pv onLoad "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method protected onOrientationChanged(I)V
    .locals 3

    const-string v0, "TwGLPanorama360Menu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pv onOrientationChanged orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->onOrientationChanged(I)V

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mOrientation:I

    return-void
.end method

.method protected onReset()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pv onReset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mNeedToRestart:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$1902(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Z)Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCalled:Z

    const/16 v0, 0x1388

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCount:I

    return-void
.end method

.method public pvGetOrientation()I
    .locals 2

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mOrientation:I

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mOrientation:I

    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mOrientation:I

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x5a

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xb4

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x10e

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public pvGetRenderEnable()Z
    .locals 2

    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pv pvGetRenderEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderEnable:Z

    return v0
.end method

.method public pvSetAnimationEnable(Z)V
    .locals 2

    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pv pvSetAnimationEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationEnable:Z

    return-void
.end method

.method public pvSetAnimationInfo(II)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationType:I

    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationProgress:I

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationProgress:I

    if-gez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mStartAnimationTime:J

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pvSetDefault()V
    .locals 4

    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pv pvSetDefault"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v1

    const-wide/16 v2, 0x0

    :try_start_0
    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioX:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioY:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateAngleX:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateAngleY:D

    const-wide/high16 v2, 0x3ff0000000000000L

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mScale:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->isDefault:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pvSetDefaultScale(D)V
    .locals 2

    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pv pvSetDefaultScale"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-wide p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mScale:D

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pvSetDispType(I)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mDispType:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pvSetDrawBgBlankMode(I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mDrawBgBlankMode:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mDrawBgBlankMode:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->setDrawBgBlankMode(I)I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pvSetInputGyroscopeType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mGyroscopeType:I

    return-void
.end method

.method public pvSetPanorama360ViewEventListener(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360ViewEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360ViewEventListener;

    return-void
.end method

.method public pvSetPreviewRotation(I)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    :try_start_0
    monitor-exit v1

    return-void

    :sswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotation:I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :sswitch_1
    const/4 v0, 0x2

    :try_start_1
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotation:I

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotation:I

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotation:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public pvSetRenderEnable(Z)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderEnable:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pvSetRenderInfo([BLjava/util/ArrayList;[D[D[DIILjava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList",
            "<[F>;[D[D[DII",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfoID:[I

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfo:[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfoID:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    aget-object v3, v6, v8

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfoID:[I

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfoID:[I

    const/4 v10, 0x0

    aget v6, v6, v10

    const/4 v10, 0x1

    if-ne v6, v10, :cond_2

    const/4 v6, 0x0

    :goto_0
    aput v6, v8, v9

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v7, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p8

    iput-object v0, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->save_path:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v6, 0x0

    iget-object v8, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->image:[B

    const/4 v9, 0x0

    iget-object v10, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->image:[B

    array-length v10, v10

    invoke-static {p1, v6, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    iput-object v6, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->gr_value_list:Ljava/util/ArrayList;

    :cond_1
    if-eqz p3, :cond_3

    const/4 v6, 0x0

    iget-object v8, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->gr_mat:[D

    const/4 v9, 0x0

    array-length v10, p3

    invoke-static {p3, v6, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->use_gr_mat:Z

    :goto_1
    if-eqz p4, :cond_4

    const/4 v6, 0x0

    iget-object v8, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->rv_mat:[D

    const/4 v9, 0x0

    array-length v10, p4

    invoke-static {p4, v6, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->use_rv_mat:Z

    :goto_2
    if-eqz p5, :cond_5

    const/4 v6, 0x0

    iget-object v8, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->ac_mat:[D

    const/4 v9, 0x0

    move-object/from16 v0, p5

    array-length v10, v0

    move-object/from16 v0, p5

    invoke-static {v0, v6, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->use_ac_mat:Z

    :goto_3
    move/from16 v0, p6

    iput v0, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->use_image:I

    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->is_set:Z

    move/from16 v0, p7

    iput v0, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->preview_id:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v8, v1, v4

    iput-wide v8, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->mSetRenderInfoTime:J

    iput-wide v4, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->mSetRenderInfoStartTime:J

    iput-wide v1, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->mSetRenderInfoEndTime:J

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_2
    const/4 v6, 0x1

    goto :goto_0

    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    :cond_3
    const/4 v6, 0x0

    :try_start_3
    iput-boolean v6, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->use_gr_mat:Z

    goto :goto_1

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    :cond_4
    const/4 v6, 0x0

    :try_start_4
    iput-boolean v6, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->use_rv_mat:Z

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;->use_ac_mat:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3
.end method

.method public pvSetScale(F)V
    .locals 10

    const-wide/high16 v8, 0x4008000000000000L

    const-wide v6, 0x3fe999999999999aL

    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pv pvSetScale"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mScale:D

    float-to-double v4, p1

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mScale:D

    iget-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mScale:D

    cmpl-double v0, v2, v8

    if-lez v0, :cond_1

    const-wide/high16 v2, 0x4008000000000000L

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mScale:D

    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioX:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioY:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateAngleX:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateAngleY:D

    monitor-exit v1

    return-void

    :cond_1
    iget-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mScale:D

    cmpg-double v0, v2, v6

    if-gez v0, :cond_0

    const-wide v2, 0x3fe999999999999aL

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mScale:D

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pvSetSwipeAngle(FF)V
    .locals 6

    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pv pvSetSwipeAngle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateAngleX:D

    float-to-double v4, p1

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateAngleX:D

    iget-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateAngleY:D

    float-to-double v4, p2

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateAngleY:D

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pvSetSwipeDistance(FF)V
    .locals 6

    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pv pvSetSwipeDistance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioX:D

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mViewWidth:I

    int-to-float v0, v0

    div-float v0, p1, v0

    float-to-double v4, v0

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioX:D

    iget-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioY:D

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mViewHeight:I

    int-to-float v0, v0

    div-float v0, p2, v0

    float-to-double v4, v0

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRotateRatioY:D

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
