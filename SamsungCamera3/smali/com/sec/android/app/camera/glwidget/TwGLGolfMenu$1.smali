.class Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$1;
.super Landroid/os/Handler;
.source "TwGLGolfMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;

    const-string v0, "TwGLGolfMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage :: msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGolfShotStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    # operator-- for: Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mCount:I
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->access$110(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->showDetectText()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->GOLF_MAX_WAIT_SEC:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->access$200()I

    move-result v1

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->mCount:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;->access$102(Lcom/sec/android/app/camera/glwidget/TwGLGolfMenu;I)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
