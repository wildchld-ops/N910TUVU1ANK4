.class public Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;
.super Ljava/lang/Object;
.source "TwGLPanorama360Menu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultInfo"
.end annotation


# instance fields
.field public image:[B

.field public mAttachStatus:I

.field public mAttachTime:J

.field public mCount:J

.field public mFrameInterval:J

.field public mGyroCorrectionValue:[F

.field public mImageID:I

.field public mIsStootable:I

.field public mODFToOPF:J

.field public mPreviewID:I

.field public mRQRenderToOnDrawFrame:J

.field public mRenderTime:J

.field public mSetRenderInfoTime:J

.field public mStopThres:I

.field public save_path:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mIsStootable:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mAttachStatus:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;->mImageID:I

    return-void
.end method
