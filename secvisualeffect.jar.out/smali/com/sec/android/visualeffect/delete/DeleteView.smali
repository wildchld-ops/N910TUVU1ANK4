.class public Lcom/sec/android/visualeffect/delete/DeleteView;
.super Landroid/view/TextureView;
.source "DeleteView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;,
        Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;
    }
.end annotation


# static fields
.field private static final ANI_END:I = 0x2

.field private static final CRUMPLE_END:I = 0x3

.field private static final MOVE_END:I = 0x4

.field private static TAG:Ljava/lang/String; = null

.field private static final THREAD_READY:I = 0x5

.field private static final THREAD_STOP:I = 0x6

.field private static final VIEW_PREV_READY:I = 0x7

.field private static final VIEW_READY:I = 0x1

.field private static isBitmapSetStart:Z

.field private static mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

.field static mListener:Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;

.field private static mMsgDelayedMillisec:J


# instance fields
.field private final MIN_MOVE_VALUE:F

.field private mCrumpleDuration:F

.field private mCrumpleRatio:F

.field private mDropDuration:F

.field private mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

.field private mSurface:Landroid/graphics/SurfaceTexture;

.field private mView:Lcom/sec/android/visualeffect/delete/DeleteView;

.field private mVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/visualeffect/delete/DeleteView;->mListener:Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;

    const-string v0, "DeleteView"

    sput-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/visualeffect/delete/DeleteView;->isBitmapSetStart:Z

    sput-object v1, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    const-wide/16 v0, 0x12c

    sput-wide v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mMsgDelayedMillisec:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mDropDuration:F

    const v0, 0x3e99999a

    iput v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCrumpleRatio:F

    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCrumpleDuration:F

    const/high16 v0, 0x43160000

    iput v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->MIN_MOVE_VALUE:F

    invoke-direct {p0}, Lcom/sec/android/visualeffect/delete/DeleteView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mDropDuration:F

    const v0, 0x3e99999a

    iput v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCrumpleRatio:F

    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCrumpleDuration:F

    const/high16 v0, 0x43160000

    iput v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->MIN_MOVE_VALUE:F

    invoke-direct {p0}, Lcom/sec/android/visualeffect/delete/DeleteView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mDropDuration:F

    const v0, 0x3e99999a

    iput v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCrumpleRatio:F

    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCrumpleDuration:F

    const/high16 v0, 0x43160000

    iput v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->MIN_MOVE_VALUE:F

    invoke-direct {p0}, Lcom/sec/android/visualeffect/delete/DeleteView;->init()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/visualeffect/delete/DeleteView;)Lcom/sec/android/visualeffect/delete/RenderThread;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/visualeffect/delete/DeleteView;)Lcom/sec/android/visualeffect/delete/DeleteView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mView:Lcom/sec/android/visualeffect/delete/DeleteView;

    return-object v0
.end method

.method public static callbackFromNative(I)V
    .locals 4

    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mListener:Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    const-string v1, "CrumplingEventListener not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    if-nez v0, :cond_2

    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    const-string v1, "callbackFromNative mCallBackHandler null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-boolean v0, Lcom/sec/android/visualeffect/delete/DeleteView;->isBitmapSetStart:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    sget-object v1, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    sget-object v1, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    sget-wide v2, Lcom/sec/android/visualeffect/delete/DeleteView;->mMsgDelayedMillisec:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/visualeffect/delete/DeleteView;->isBitmapSetStart:Z

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    sget-object v1, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    sget-wide v2, Lcom/sec/android/visualeffect/delete/DeleteView;->mMsgDelayedMillisec:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    sget-object v1, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    sget-wide v2, Lcom/sec/android/visualeffect/delete/DeleteView;->mMsgDelayedMillisec:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    sget-object v1, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    sget-wide v2, Lcom/sec/android/visualeffect/delete/DeleteView;->mMsgDelayedMillisec:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private deinit()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/delete/RenderThread;->finish()V

    iput-object v2, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    :cond_0
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sput-object v2, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    :cond_1
    invoke-static {}, Lcom/sec/android/visualeffect/jni/VEJNILib;->deleteDestroy()V

    return-void
.end method

.method private init()V
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    const-string v1, "init %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    const-string v1, "version 2014.1.08"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;-><init>(Lcom/sec/android/visualeffect/delete/DeleteView;)V

    sput-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    iput-object p0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mView:Lcom/sec/android/visualeffect/delete/DeleteView;

    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-static {}, Lcom/sec/android/visualeffect/jni/VEJNILib;->deleteNewLib()V

    invoke-virtual {p0, v4}, Landroid/view/TextureView;->setOpaque(Z)V

    goto :goto_0
.end method


# virtual methods
.method public initModel(IIFFLandroid/graphics/Bitmap;IIFFZI)V
    .locals 18

    if-eqz p5, :cond_0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    const-string v6, "front recycled"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    if-nez v1, :cond_2

    sget-object v1, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    const-string v6, "initModel thread null"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v0, v1

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v0, v1

    move/from16 v16, v0

    move/from16 v0, p1

    int-to-float v1, v0

    div-float v2, v1, v17

    move/from16 v0, p2

    int-to-float v1, v0

    div-float v3, v1, v16

    div-float v4, p3, v17

    div-float v5, p4, v16

    sub-int v1, p1, p6

    int-to-float v1, v1

    div-float v9, v1, p8

    sub-int v1, p2, p7

    int-to-float v1, v1

    div-float v10, v1, p9

    div-float v11, p3, p8

    div-float v12, p4, p9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    move-object/from16 v6, p5

    move/from16 v13, p10

    move/from16 v15, p11

    invoke-virtual/range {v1 .. v15}, Lcom/sec/android/visualeffect/delete/RenderThread;->initModel(FFFFLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;FFFFFZII)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/visualeffect/delete/DeleteView;->isBitmapSetStart:Z

    goto :goto_0
.end method

.method public initView(FFFLandroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    const-string v1, "shadow recycled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    if-nez v0, :cond_2

    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    const-string v1, "initView thread null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    const-string v1, "initView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/delete/RenderThread;->pauseNResume(Z)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/visualeffect/delete/RenderThread;->initView(FFFLandroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public initView(Landroid/graphics/Bitmap;)V
    .locals 2

    const v1, 0x3eb4b4b5

    const v0, 0x3eb2b2b3

    invoke-virtual {p0, v1, v0, v1, p1}, Lcom/sec/android/visualeffect/delete/DeleteView;->initView(FFFLandroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureAvailable "

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

    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    const-string v1, "onSurfaceTextureAvailable init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/delete/DeleteView;->init()V

    :cond_0
    iput-object p1, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mSurface:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/visualeffect/delete/RenderThread;

    iget-object v1, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mSurface:Landroid/graphics/SurfaceTexture;

    sget-object v2, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/visualeffect/delete/RenderThread;-><init>(Landroid/graphics/SurfaceTexture;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    :goto_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    invoke-virtual {v0, p0}, Lcom/sec/android/visualeffect/delete/RenderThread;->setTextureView(Landroid/view/TextureView;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mListener:Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;

    invoke-interface {v0}, Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;->onViewCreated()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    iget-object v1, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mSurface:Landroid/graphics/SurfaceTexture;

    sget-object v2, Lcom/sec/android/visualeffect/delete/DeleteView;->mCallBackHandler:Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/visualeffect/delete/RenderThread;->setSurface(Landroid/graphics/SurfaceTexture;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureDestroyed start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/delete/DeleteView;->deinit()V

    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureSizeChanged "

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

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/visualeffect/delete/DeleteView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    invoke-virtual {v0, p2, p3}, Lcom/sec/android/visualeffect/delete/RenderThread;->onSurfaceChanged(II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public setCrumplingEventListener(Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;)V
    .locals 0

    sput-object p1, Lcom/sec/android/visualeffect/delete/DeleteView;->mListener:Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;

    return-void
.end method

.method public setStartState()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/delete/DeleteView;->onResume()V

    return-void
.end method

.method public setStopState()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/delete/DeleteView;->onPause()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    iput p1, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mVisibility:I

    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "view visibility : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mVisibility:I

    if-nez v0, :cond_2

    const/high16 v0, 0x3f800000

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/delete/RenderThread;->pauseNResume(Z)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/delete/RenderThread;->pauseNResume(Z)V

    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    const-string v1, "view pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startCrumplingAnimation(Z)V
    .locals 9

    const/high16 v2, 0x3f800000

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;

    const-string v1, "startCrumplingAnimation thread null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;

    iget v1, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mCrumpleDuration:F

    iget v3, p0, Lcom/sec/android/visualeffect/delete/DeleteView;->mDropDuration:F

    move v5, v4

    move v6, v4

    move v7, v4

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/visualeffect/delete/RenderThread;->startAnimation(FFFFFFFF)V

    goto :goto_0
.end method
