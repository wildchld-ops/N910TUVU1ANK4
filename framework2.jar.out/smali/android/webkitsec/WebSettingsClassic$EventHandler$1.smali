.class Landroid/webkitsec/WebSettingsClassic$EventHandler$1;
.super Landroid/os/Handler;
.source "WebSettingsClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/WebSettingsClassic$EventHandler;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkitsec/WebSettingsClassic$EventHandler;


# direct methods
.method constructor <init>(Landroid/webkitsec/WebSettingsClassic$EventHandler;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebSettingsClassic$EventHandler$1;->this$1:Landroid/webkitsec/WebSettingsClassic$EventHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Landroid/webkitsec/WebSettingsClassic$EventHandler$1;->this$1:Landroid/webkitsec/WebSettingsClassic$EventHandler;

    iget-object v2, v1, Landroid/webkitsec/WebSettingsClassic$EventHandler;->this$0:Landroid/webkitsec/WebSettingsClassic;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/webkitsec/WebSettingsClassic$EventHandler$1;->this$1:Landroid/webkitsec/WebSettingsClassic$EventHandler;

    iget-object v1, v1, Landroid/webkitsec/WebSettingsClassic$EventHandler;->this$0:Landroid/webkitsec/WebSettingsClassic;

    # getter for: Landroid/webkitsec/WebSettingsClassic;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v1}, Landroid/webkitsec/WebSettingsClassic;->access$000(Landroid/webkitsec/WebSettingsClassic;)Landroid/webkitsec/BrowserFrame;

    move-result-object v1

    iget v1, v1, Landroid/webkitsec/BrowserFrame;->mNativeFrame:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebSettingsClassic$EventHandler$1;->this$1:Landroid/webkitsec/WebSettingsClassic$EventHandler;

    iget-object v1, v1, Landroid/webkitsec/WebSettingsClassic$EventHandler;->this$0:Landroid/webkitsec/WebSettingsClassic;

    iget-object v3, p0, Landroid/webkitsec/WebSettingsClassic$EventHandler$1;->this$1:Landroid/webkitsec/WebSettingsClassic$EventHandler;

    iget-object v3, v3, Landroid/webkitsec/WebSettingsClassic$EventHandler;->this$0:Landroid/webkitsec/WebSettingsClassic;

    # getter for: Landroid/webkitsec/WebSettingsClassic;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v3}, Landroid/webkitsec/WebSettingsClassic;->access$000(Landroid/webkitsec/WebSettingsClassic;)Landroid/webkitsec/BrowserFrame;

    move-result-object v3

    iget v3, v3, Landroid/webkitsec/BrowserFrame;->mNativeFrame:I

    # invokes: Landroid/webkitsec/WebSettingsClassic;->nativeSync(I)V
    invoke-static {v1, v3}, Landroid/webkitsec/WebSettingsClassic;->access$100(Landroid/webkitsec/WebSettingsClassic;I)V

    :cond_0
    iget-object v1, p0, Landroid/webkitsec/WebSettingsClassic$EventHandler$1;->this$1:Landroid/webkitsec/WebSettingsClassic$EventHandler;

    iget-object v1, v1, Landroid/webkitsec/WebSettingsClassic$EventHandler;->this$0:Landroid/webkitsec/WebSettingsClassic;

    const/4 v3, 0x0

    # setter for: Landroid/webkitsec/WebSettingsClassic;->mSyncPending:Z
    invoke-static {v1, v3}, Landroid/webkitsec/WebSettingsClassic;->access$202(Landroid/webkitsec/WebSettingsClassic;Z)Z

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_1
    iget-object v1, p0, Landroid/webkitsec/WebSettingsClassic$EventHandler$1;->this$1:Landroid/webkitsec/WebSettingsClassic$EventHandler;

    # invokes: Landroid/webkitsec/WebSettingsClassic$EventHandler;->setRenderPriority()V
    invoke-static {v1}, Landroid/webkitsec/WebSettingsClassic$EventHandler;->access$300(Landroid/webkitsec/WebSettingsClassic$EventHandler;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Landroid/webkitsec/WebSettingsClassic$EventHandler$1;->this$1:Landroid/webkitsec/WebSettingsClassic$EventHandler;

    iget-object v1, v1, Landroid/webkitsec/WebSettingsClassic$EventHandler;->this$0:Landroid/webkitsec/WebSettingsClassic;

    # getter for: Landroid/webkitsec/WebSettingsClassic;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/webkitsec/WebSettingsClassic;->access$400(Landroid/webkitsec/WebSettingsClassic;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "WebViewSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "double_tap_toast_count"

    # getter for: Landroid/webkitsec/WebSettingsClassic;->mDoubleTapToastCount:I
    invoke-static {}, Landroid/webkitsec/WebSettingsClassic;->access$500()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
