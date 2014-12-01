.class Lcom/android/settings/ResetSettings$2;
.super Landroid/os/Handler;
.source "ResetSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ResetSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ResetSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ResetSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ResetSettings$2;->this$0:Lcom/android/settings/ResetSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v3, p0, Lcom/android/settings/ResetSettings$2;->this$0:Lcom/android/settings/ResetSettings;

    # getter for: Lcom/android/settings/ResetSettings;->databaseReset:Z
    invoke-static {v3}, Lcom/android/settings/ResetSettings;->access$000(Lcom/android/settings/ResetSettings;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/ResetSettings$2;->this$0:Lcom/android/settings/ResetSettings;

    iget-object v3, v3, Lcom/android/settings/ResetSettings;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/ResetSettings$2;->this$0:Lcom/android/settings/ResetSettings;

    iget-object v3, v3, Lcom/android/settings/ResetSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/ResetSettings$2;->this$0:Lcom/android/settings/ResetSettings;

    iget-object v3, v3, Lcom/android/settings/ResetSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v3, p0, Lcom/android/settings/ResetSettings$2;->this$0:Lcom/android/settings/ResetSettings;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/settings/ResetSettings;->progressDialog:Landroid/app/ProgressDialog;

    :cond_1
    iget-object v3, p0, Lcom/android/settings/ResetSettings$2;->this$0:Lcom/android/settings/ResetSettings;

    const/4 v4, 0x0

    # setter for: Lcom/android/settings/ResetSettings;->databaseReset:Z
    invoke-static {v3, v4}, Lcom/android/settings/ResetSettings;->access$002(Lcom/android/settings/ResetSettings;Z)Z

    iget-object v3, p0, Lcom/android/settings/ResetSettings$2;->this$0:Lcom/android/settings/ResetSettings;

    # getter for: Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/ResetSettings;->access$200(Lcom/android/settings/ResetSettings;)Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/android/settings/ResetSettings$2$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/ResetSettings$2$1;-><init>(Lcom/android/settings/ResetSettings$2;Landroid/content/Context;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_2
    return-void
.end method
