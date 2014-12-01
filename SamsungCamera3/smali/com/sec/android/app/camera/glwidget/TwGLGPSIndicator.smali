.class public Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLGPSIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator$1;,
        Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator$ConnectTimerTask;
    }
.end annotation


# static fields
.field public static final GPS_CONNECTED:I = 0x0

.field public static final GPS_CONNECTING:I = 0x1

.field public static final GPS_DISCONNECTED:I = 0x2

.field protected static final TAG:Ljava/lang/String; = "TwGLGPSIndicator"


# instance fields
.field private mGps:Lcom/sec/android/glview/TwGLImage;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->mTimer:Ljava/util/Timer;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->mGps:Lcom/sec/android/glview/TwGLImage;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f0200ed

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->mGps:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->mGps:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    return-void
.end method

.method private StartGPSAnimation()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->StopGPSAnimation()V

    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->mTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator$ConnectTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator$ConnectTimerTask;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator$1;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x384

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private StopGPSAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->mTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;)Lcom/sec/android/glview/TwGLImage;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->mGps:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->StopGPSAnimation()V

    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    return-void
.end method

.method public setGPS(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->StopGPSAnimation()V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "TwGLGPSIndicator"

    const-string v1, "setGPS = GPS_CONNECT"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->mGps:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->mGps:Lcom/sec/android/glview/TwGLImage;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_1
    const-string v0, "TwGLGPSIndicator"

    const-string v1, "setGPS = GPS_DISCONNECT"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->mGps:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    const-string v0, "TwGLGPSIndicator"

    const-string v1, "setGPS = GPS_CONNECTING"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->StartGPSAnimation()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
