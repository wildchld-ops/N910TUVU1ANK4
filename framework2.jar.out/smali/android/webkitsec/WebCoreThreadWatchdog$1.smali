.class Landroid/webkitsec/WebCoreThreadWatchdog$1;
.super Landroid/os/Handler;
.source "WebCoreThreadWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/WebCoreThreadWatchdog;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/WebCoreThreadWatchdog;


# direct methods
.method constructor <init>(Landroid/webkitsec/WebCoreThreadWatchdog;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebCoreThreadWatchdog$1;->this$0:Landroid/webkitsec/WebCoreThreadWatchdog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-class v4, Landroid/webkitsec/WebCoreThreadWatchdog;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Landroid/webkitsec/WebCoreThreadWatchdog$1;->this$0:Landroid/webkitsec/WebCoreThreadWatchdog;

    # getter for: Landroid/webkitsec/WebCoreThreadWatchdog;->mPaused:Z
    invoke-static {v3}, Landroid/webkitsec/WebCoreThreadWatchdog;->access$000(Landroid/webkitsec/WebCoreThreadWatchdog;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    const/16 v3, 0x65

    :try_start_1
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v3, 0x65

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v5, 0xea60

    invoke-virtual {p0, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v3, p0, Landroid/webkitsec/WebCoreThreadWatchdog$1;->this$0:Landroid/webkitsec/WebCoreThreadWatchdog;

    # getter for: Landroid/webkitsec/WebCoreThreadWatchdog;->mWebCoreThreadHandler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/webkitsec/WebCoreThreadWatchdog;->access$200(Landroid/webkitsec/WebCoreThreadWatchdog;)Landroid/os/Handler;

    move-result-object v3

    iget-object v5, p0, Landroid/webkitsec/WebCoreThreadWatchdog$1;->this$0:Landroid/webkitsec/WebCoreThreadWatchdog;

    # getter for: Landroid/webkitsec/WebCoreThreadWatchdog;->mWebCoreThreadHandler:Landroid/os/Handler;
    invoke-static {v5}, Landroid/webkitsec/WebCoreThreadWatchdog;->access$200(Landroid/webkitsec/WebCoreThreadWatchdog;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0xc5

    iget-object v7, p0, Landroid/webkitsec/WebCoreThreadWatchdog$1;->this$0:Landroid/webkitsec/WebCoreThreadWatchdog;

    # getter for: Landroid/webkitsec/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Landroid/webkitsec/WebCoreThreadWatchdog;->access$100(Landroid/webkitsec/WebCoreThreadWatchdog;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x0

    const-class v4, Landroid/webkitsec/WebCoreThreadWatchdog;

    monitor-enter v4

    :try_start_2
    iget-object v3, p0, Landroid/webkitsec/WebCoreThreadWatchdog$1;->this$0:Landroid/webkitsec/WebCoreThreadWatchdog;

    # getter for: Landroid/webkitsec/WebCoreThreadWatchdog;->mWebViews:Ljava/util/Set;
    invoke-static {v3}, Landroid/webkitsec/WebCoreThreadWatchdog;->access$300(Landroid/webkitsec/WebCoreThreadWatchdog;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v3, Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable;

    iget-object v5, p0, Landroid/webkitsec/WebCoreThreadWatchdog$1;->this$0:Landroid/webkitsec/WebCoreThreadWatchdog;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v5, v6, p0}, Landroid/webkitsec/WebCoreThreadWatchdog$PageNotRespondingRunnable;-><init>(Landroid/webkitsec/WebCoreThreadWatchdog;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    if-nez v2, :cond_3

    const/16 v3, 0x65

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v5, 0x3a98

    invoke-virtual {p0, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    monitor-exit v4

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
