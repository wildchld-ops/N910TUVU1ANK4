.class final Landroid/webkitsec/WebViewInputDispatcher$WebKitHandler;
.super Landroid/os/Handler;
.source "WebViewInputDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewInputDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WebKitHandler"
.end annotation


# static fields
.field public static final MSG_DISPATCH_WEBKIT_EVENTS:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/webkitsec/WebViewInputDispatcher;


# direct methods
.method public constructor <init>(Landroid/webkitsec/WebViewInputDispatcher;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebViewInputDispatcher$WebKitHandler;->this$0:Landroid/webkitsec/WebViewInputDispatcher;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    sget-boolean v0, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WebViewInputDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage in Webkit Thread: event= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher$WebKitHandler;->this$0:Landroid/webkitsec/WebViewInputDispatcher;

    const/4 v1, 0x1

    # invokes: Landroid/webkitsec/WebViewInputDispatcher;->dispatchWebKitEvents(Z)V
    invoke-static {v0, v1}, Landroid/webkitsec/WebViewInputDispatcher;->access$900(Landroid/webkitsec/WebViewInputDispatcher;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
