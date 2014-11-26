.class Lcom/android/settings/wifi/mobileap/WpsApDialog$3$1;
.super Ljava/lang/Object;
.source "WpsApDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WpsApDialog$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/mobileap/WpsApDialog$3;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WpsApDialog$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WpsApDialog$3$1;->this$1:Lcom/android/settings/wifi/mobileap/WpsApDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WpsApDialog$3$1;->this$1:Lcom/android/settings/wifi/mobileap/WpsApDialog$3;

    iget-object v4, v4, Lcom/android/settings/wifi/mobileap/WpsApDialog$3;->this$0:Lcom/android/settings/wifi/mobileap/WpsApDialog;

    # getter for: Lcom/android/settings/wifi/mobileap/WpsApDialog;->mTimeoutBar:Landroid/widget/ProgressBar;
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WpsApDialog;->access$200(Lcom/android/settings/wifi/mobileap/WpsApDialog;)Landroid/widget/ProgressBar;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WpsApDialog$3$1;->this$1:Lcom/android/settings/wifi/mobileap/WpsApDialog$3;

    iget-object v4, v4, Lcom/android/settings/wifi/mobileap/WpsApDialog$3;->this$0:Lcom/android/settings/wifi/mobileap/WpsApDialog;

    # operator++ for: Lcom/android/settings/wifi/mobileap/WpsApDialog;->WpsCount:I
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WpsApDialog;->access$308(Lcom/android/settings/wifi/mobileap/WpsApDialog;)I

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WpsApDialog$3$1;->this$1:Lcom/android/settings/wifi/mobileap/WpsApDialog$3;

    iget-object v4, v4, Lcom/android/settings/wifi/mobileap/WpsApDialog$3;->this$0:Lcom/android/settings/wifi/mobileap/WpsApDialog;

    # getter for: Lcom/android/settings/wifi/mobileap/WpsApDialog;->WpsCount:I
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WpsApDialog;->access$300(Lcom/android/settings/wifi/mobileap/WpsApDialog;)I

    move-result v4

    const/16 v5, 0x78

    if-le v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WpsApDialog$3$1;->this$1:Lcom/android/settings/wifi/mobileap/WpsApDialog$3;

    iget-object v4, v4, Lcom/android/settings/wifi/mobileap/WpsApDialog$3;->this$0:Lcom/android/settings/wifi/mobileap/WpsApDialog;

    # getter for: Lcom/android/settings/wifi/mobileap/WpsApDialog;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WpsApDialog;->access$400(Lcom/android/settings/wifi/mobileap/WpsApDialog;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0903d1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WpsApDialog$3$1;->this$1:Lcom/android/settings/wifi/mobileap/WpsApDialog$3;

    iget-object v4, v4, Lcom/android/settings/wifi/mobileap/WpsApDialog$3;->this$0:Lcom/android/settings/wifi/mobileap/WpsApDialog;

    sget-object v5, Lcom/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_FAILED:Lcom/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    # invokes: Lcom/android/settings/wifi/mobileap/WpsApDialog;->updateDialog(Lcom/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V
    invoke-static {v4, v5, v3}, Lcom/android/settings/wifi/mobileap/WpsApDialog;->access$500(Lcom/android/settings/wifi/mobileap/WpsApDialog;Lcom/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WpsApDialog$3$1;->this$1:Lcom/android/settings/wifi/mobileap/WpsApDialog$3;

    iget-object v4, v4, Lcom/android/settings/wifi/mobileap/WpsApDialog$3;->this$0:Lcom/android/settings/wifi/mobileap/WpsApDialog;

    const/4 v5, 0x0

    # setter for: Lcom/android/settings/wifi/mobileap/WpsApDialog;->WpsCount:I
    invoke-static {v4, v5}, Lcom/android/settings/wifi/mobileap/WpsApDialog;->access$302(Lcom/android/settings/wifi/mobileap/WpsApDialog;I)I

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WpsApDialog$3$1;->this$1:Lcom/android/settings/wifi/mobileap/WpsApDialog$3;

    iget-object v4, v4, Lcom/android/settings/wifi/mobileap/WpsApDialog$3;->this$0:Lcom/android/settings/wifi/mobileap/WpsApDialog;

    # getter for: Lcom/android/settings/wifi/mobileap/WpsApDialog;->mTimer:Ljava/util/Timer;
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WpsApDialog;->access$100(Lcom/android/settings/wifi/mobileap/WpsApDialog;)Ljava/util/Timer;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WpsApDialog$3$1;->this$1:Lcom/android/settings/wifi/mobileap/WpsApDialog$3;

    iget-object v4, v4, Lcom/android/settings/wifi/mobileap/WpsApDialog$3;->this$0:Lcom/android/settings/wifi/mobileap/WpsApDialog;

    # getter for: Lcom/android/settings/wifi/mobileap/WpsApDialog;->mTimer:Ljava/util/Timer;
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WpsApDialog;->access$100(Lcom/android/settings/wifi/mobileap/WpsApDialog;)Ljava/util/Timer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Timer;->cancel()V

    :cond_0
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WpsApDialog$3$1;->this$1:Lcom/android/settings/wifi/mobileap/WpsApDialog$3;

    iget-object v4, v4, Lcom/android/settings/wifi/mobileap/WpsApDialog$3;->this$0:Lcom/android/settings/wifi/mobileap/WpsApDialog;

    iget-object v4, v4, Lcom/android/settings/wifi/mobileap/WpsApDialog;->mDialogState:Lcom/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    sget-object v5, Lcom/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_COMPLETE:Lcom/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    if-eq v4, v5, :cond_1

    :try_start_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v4, 0xca

    iput v4, v1, Landroid/os/Message;->what:I

    const-string v4, "cmd_type"

    const-string v5, "wps_cancel_int"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WpsApDialog$3$1;->this$1:Lcom/android/settings/wifi/mobileap/WpsApDialog$3;

    iget-object v4, v4, Lcom/android/settings/wifi/mobileap/WpsApDialog$3;->this$0:Lcom/android/settings/wifi/mobileap/WpsApDialog;

    # getter for: Lcom/android/settings/wifi/mobileap/WpsApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WpsApDialog;->access$600(Lcom/android/settings/wifi/mobileap/WpsApDialog;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiManager;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
