.class Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$MyHandler;
.super Landroid/os/Handler;
.source "TwGLBurstMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;Landroid/os/Looper;)V
    .locals 0
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$MyHandler;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "TwGLBurstMenu"

    const-string v1, "Inactivity timer is expired. finish."

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$MyHandler;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;->onBurstCaptureCancelled()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$MyHandler;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->reset()V

    goto :goto_0

    :pswitch_1
    const-string v0, "TwGLBurstMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStoreCount is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$MyHandler;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mStoreCount:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCaptureCount is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$MyHandler;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$MyHandler;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$MyHandler;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$MyHandler;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mStoreCount:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)I

    move-result v1

    const/16 v2, 0xe10

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$MyHandler;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)I

    move-result v3

    div-int/2addr v2, v3

    add-int/2addr v1, v2

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mStoreCount:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->access$102(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;I)I

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$MyHandler;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstMsgHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$MyHandler;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstMsgHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
