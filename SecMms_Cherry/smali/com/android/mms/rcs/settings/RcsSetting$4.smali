.class Lcom/android/mms/rcs/settings/RcsSetting$4;
.super Landroid/database/ContentObserver;
.source "RcsSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/settings/RcsSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/settings/RcsSetting;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/settings/RcsSetting;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/mms/rcs/settings/RcsSetting$4;->this$0:Lcom/android/mms/rcs/settings/RcsSetting;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1    # Z
    .param p2    # Landroid/net/Uri;

    const-string v0, "Mms/RcsSetting"

    const-string v1, "rcsPermanentDisableObserver: received notification about changing"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting$4;->this$0:Lcom/android/mms/rcs/settings/RcsSetting;

    # getter for: Lcom/android/mms/rcs/settings/RcsSetting;->mTaskGetPermanentDisabledState:Landroid/os/AsyncTask;
    invoke-static {v0}, Lcom/android/mms/rcs/settings/RcsSetting;->access$100(Lcom/android/mms/rcs/settings/RcsSetting;)Landroid/os/AsyncTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting$4;->this$0:Lcom/android/mms/rcs/settings/RcsSetting;

    # getter for: Lcom/android/mms/rcs/settings/RcsSetting;->mTaskGetPermanentDisabledState:Landroid/os/AsyncTask;
    invoke-static {v0}, Lcom/android/mms/rcs/settings/RcsSetting;->access$100(Lcom/android/mms/rcs/settings/RcsSetting;)Landroid/os/AsyncTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    iget-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting$4;->this$0:Lcom/android/mms/rcs/settings/RcsSetting;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/rcs/settings/RcsSetting;->mTaskGetPermanentDisabledState:Landroid/os/AsyncTask;
    invoke-static {v0, v1}, Lcom/android/mms/rcs/settings/RcsSetting;->access$102(Lcom/android/mms/rcs/settings/RcsSetting;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting$4;->this$0:Lcom/android/mms/rcs/settings/RcsSetting;

    new-instance v1, Lcom/android/mms/rcs/GetPermanentDisableStateTask;

    iget-object v2, p0, Lcom/android/mms/rcs/settings/RcsSetting$4;->this$0:Lcom/android/mms/rcs/settings/RcsSetting;

    iget-object v2, v2, Lcom/android/mms/rcs/settings/RcsSetting;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/mms/rcs/settings/RcsSetting$4$1;

    invoke-direct {v3, p0}, Lcom/android/mms/rcs/settings/RcsSetting$4$1;-><init>(Lcom/android/mms/rcs/settings/RcsSetting$4;)V

    invoke-direct {v1, v2, v3}, Lcom/android/mms/rcs/GetPermanentDisableStateTask;-><init>(Landroid/content/Context;Lcom/android/mms/rcs/GetPermanentDisableStateTask$IGetPermanentDisableStateCallback;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    # setter for: Lcom/android/mms/rcs/settings/RcsSetting;->mTaskGetPermanentDisabledState:Landroid/os/AsyncTask;
    invoke-static {v0, v1}, Lcom/android/mms/rcs/settings/RcsSetting;->access$102(Lcom/android/mms/rcs/settings/RcsSetting;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void
.end method
