.class Lcom/android/mms/rcs/settings/RcsSetting$7$2;
.super Ljava/lang/Object;
.source "RcsSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/rcs/settings/RcsSetting$7;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/rcs/settings/RcsSetting$7;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/settings/RcsSetting$7;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/settings/RcsSetting$7$2;->this$1:Lcom/android/mms/rcs/settings/RcsSetting$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "Mms/RcsSetting"

    const-string v1, "enabling service on disabled device"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/mms/rcs/SetRcsEnabledStateTask;

    iget-object v1, p0, Lcom/android/mms/rcs/settings/RcsSetting$7$2;->this$1:Lcom/android/mms/rcs/settings/RcsSetting$7;

    iget-object v1, v1, Lcom/android/mms/rcs/settings/RcsSetting$7;->this$0:Lcom/android/mms/rcs/settings/RcsSetting;

    iget-object v1, v1, Lcom/android/mms/rcs/settings/RcsSetting;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/android/mms/rcs/settings/RcsSetting$7$2$1;

    invoke-direct {v2, p0}, Lcom/android/mms/rcs/settings/RcsSetting$7$2$1;-><init>(Lcom/android/mms/rcs/settings/RcsSetting$7$2;)V

    invoke-direct {v0, v1, v2}, Lcom/android/mms/rcs/SetRcsEnabledStateTask;-><init>(Landroid/content/Context;Lcom/android/mms/rcs/SetRcsEnabledStateTask$ISetRcsEnabledStateCallback;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Boolean;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
