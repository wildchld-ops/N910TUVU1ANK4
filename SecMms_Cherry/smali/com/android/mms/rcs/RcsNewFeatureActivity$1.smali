.class Lcom/android/mms/rcs/RcsNewFeatureActivity$1;
.super Ljava/lang/Object;
.source "RcsNewFeatureActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/RcsNewFeatureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/RcsNewFeatureActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/RcsNewFeatureActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity$1;->this$0:Lcom/android/mms/rcs/RcsNewFeatureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity$1;->this$0:Lcom/android/mms/rcs/RcsNewFeatureActivity;

    # getter for: Lcom/android/mms/rcs/RcsNewFeatureActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/rcs/RcsNewFeatureActivity;->access$000(Lcom/android/mms/rcs/RcsNewFeatureActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/rcs/RcsNewFeatureActivity;->findDuplicatedClient(Landroid/content/Context;)Lcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;

    move-result-object v0

    iget-object v3, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity$1;->this$0:Lcom/android/mms/rcs/RcsNewFeatureActivity;

    # setter for: Lcom/android/mms/rcs/RcsNewFeatureActivity;->mClient:Lcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;
    invoke-static {v3, v0}, Lcom/android/mms/rcs/RcsNewFeatureActivity;->access$102(Lcom/android/mms/rcs/RcsNewFeatureActivity;Lcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;)Lcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;

    iget-object v3, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity$1;->this$0:Lcom/android/mms/rcs/RcsNewFeatureActivity;

    iget-object v3, v3, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "pref_key_new_feature_current"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v3, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity$1;->this$0:Lcom/android/mms/rcs/RcsNewFeatureActivity;

    # getter for: Lcom/android/mms/rcs/RcsNewFeatureActivity;->mClient:Lcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;
    invoke-static {v3}, Lcom/android/mms/rcs/RcsNewFeatureActivity;->access$100(Lcom/android/mms/rcs/RcsNewFeatureActivity;)Lcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity$1;->this$0:Lcom/android/mms/rcs/RcsNewFeatureActivity;

    iget-object v4, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity$1;->this$0:Lcom/android/mms/rcs/RcsNewFeatureActivity;

    # getter for: Lcom/android/mms/rcs/RcsNewFeatureActivity;->mClient:Lcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;
    invoke-static {v4}, Lcom/android/mms/rcs/RcsNewFeatureActivity;->access$100(Lcom/android/mms/rcs/RcsNewFeatureActivity;)Lcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;

    move-result-object v4

    invoke-virtual {v3, v6, v6, v4}, Lcom/android/mms/rcs/RcsNewFeatureActivity;->createLaunchDialog(ZZLcom/android/mms/rcs/settings/RcsSettingUtils$DuplicatedClient;)V

    :goto_0
    return-void

    :cond_0
    new-instance v3, Lcom/android/mms/rcs/RcsState;

    invoke-direct {v3}, Lcom/android/mms/rcs/RcsState;-><init>()V

    sput-object v3, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mRcsState:Lcom/android/mms/rcs/RcsState;

    sget-object v3, Lcom/android/mms/rcs/RcsNewFeatureActivity;->mRcsState:Lcom/android/mms/rcs/RcsState;

    invoke-virtual {v3}, Lcom/android/mms/rcs/RcsState;->setStateNotInitialized()V

    new-instance v2, Lcom/android/mms/rcs/SetRcsEnabledStateTask;

    iget-object v3, p0, Lcom/android/mms/rcs/RcsNewFeatureActivity$1;->this$0:Lcom/android/mms/rcs/RcsNewFeatureActivity;

    new-instance v4, Lcom/android/mms/rcs/RcsNewFeatureActivity$1$1;

    invoke-direct {v4, p0}, Lcom/android/mms/rcs/RcsNewFeatureActivity$1$1;-><init>(Lcom/android/mms/rcs/RcsNewFeatureActivity$1;)V

    invoke-direct {v2, v3, v4}, Lcom/android/mms/rcs/SetRcsEnabledStateTask;-><init>(Landroid/content/Context;Lcom/android/mms/rcs/SetRcsEnabledStateTask$ISetRcsEnabledStateCallback;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v7, [Ljava/lang/Boolean;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
