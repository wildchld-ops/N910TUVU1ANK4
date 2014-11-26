.class Lcom/android/mms/rcs/settings/RcsSetting$7;
.super Ljava/lang/Object;
.source "RcsSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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
.method constructor <init>(Lcom/android/mms/rcs/settings/RcsSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/settings/RcsSetting$7;->this$0:Lcom/android/mms/rcs/settings/RcsSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1    # Landroid/preference/Preference;
    .param p2    # Ljava/lang/Object;

    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v4, "Mms/RcsSetting"

    const-string v5, "onPreferenceChange : key is null!!!!!"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v8

    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v4, p0, Lcom/android/mms/rcs/settings/RcsSetting$7;->this$0:Lcom/android/mms/rcs/settings/RcsSetting;

    iget-object v4, v4, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_0

    if-eqz v0, :cond_2

    new-instance v3, Lcom/android/mms/rcs/SetRcsEnabledStateTask;

    iget-object v4, p0, Lcom/android/mms/rcs/settings/RcsSetting$7;->this$0:Lcom/android/mms/rcs/settings/RcsSetting;

    iget-object v4, v4, Lcom/android/mms/rcs/settings/RcsSetting;->mActivity:Landroid/app/Activity;

    new-instance v5, Lcom/android/mms/rcs/settings/RcsSetting$7$1;

    invoke-direct {v5, p0}, Lcom/android/mms/rcs/settings/RcsSetting$7$1;-><init>(Lcom/android/mms/rcs/settings/RcsSetting$7;)V

    invoke-direct {v3, v4, v5}, Lcom/android/mms/rcs/SetRcsEnabledStateTask;-><init>(Landroid/content/Context;Lcom/android/mms/rcs/SetRcsEnabledStateTask$ISetRcsEnabledStateCallback;)V

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v8, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/mms/rcs/settings/RcsSetting$7;->this$0:Lcom/android/mms/rcs/settings/RcsSetting;

    iget-object v4, v4, Lcom/android/mms/rcs/settings/RcsSetting;->mActivity:Landroid/app/Activity;

    new-instance v5, Lcom/android/mms/rcs/settings/RcsSetting$7$2;

    invoke-direct {v5, p0}, Lcom/android/mms/rcs/settings/RcsSetting$7$2;-><init>(Lcom/android/mms/rcs/settings/RcsSetting$7;)V

    new-instance v6, Lcom/android/mms/rcs/settings/RcsSetting$7$3;

    invoke-direct {v6, p0}, Lcom/android/mms/rcs/settings/RcsSetting$7$3;-><init>(Lcom/android/mms/rcs/settings/RcsSetting$7;)V

    invoke-static {v4, v5, v6}, Lcom/android/mms/rcs/settings/RcsSettingUtils;->createDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
