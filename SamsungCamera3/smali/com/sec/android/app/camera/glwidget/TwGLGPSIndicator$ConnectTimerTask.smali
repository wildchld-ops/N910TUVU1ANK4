.class Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator$ConnectTimerTask;
.super Ljava/util/TimerTask;
.source "TwGLGPSIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectTimerTask"
.end annotation


# instance fields
.field mCnt:I

.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator$ConnectTimerTask;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator$ConnectTimerTask;->mCnt:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator$ConnectTimerTask;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator$ConnectTimerTask;->mCnt:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator$ConnectTimerTask;->mCnt:I

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator$ConnectTimerTask;->mCnt:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator$ConnectTimerTask;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->mGps:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator$ConnectTimerTask;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->mGps:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    goto :goto_0
.end method
