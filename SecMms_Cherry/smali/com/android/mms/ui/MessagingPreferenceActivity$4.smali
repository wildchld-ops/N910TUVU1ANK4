.class Lcom/android/mms/ui/MessagingPreferenceActivity$4;
.super Ljava/lang/Object;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Lcom/android/mms/rcs/GetRcsEnabledStateTask$IGetRcsEnabledStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$4;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Boolean;)V
    .locals 4

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$4;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRcsSetting:Lcom/android/mms/rcs/settings/RcsSetting;

    sget-object v0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsState:Lcom/android/mms/rcs/RcsState;

    invoke-virtual {v0}, Lcom/android/mms/rcs/RcsState;->setStateNotInitialized()V

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$4;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRcsSetting:Lcom/android/mms/rcs/settings/RcsSetting;

    invoke-virtual {v0}, Lcom/android/mms/rcs/settings/RcsSetting;->showProgressDialog()V

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$4;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRcsSetting:Lcom/android/mms/rcs/settings/RcsSetting;

    invoke-virtual {v0}, Lcom/android/mms/rcs/settings/RcsSetting;->registerObserver()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$4;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRcsSetting:Lcom/android/mms/rcs/settings/RcsSetting;

    sget-object v0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsState:Lcom/android/mms/rcs/RcsState;

    invoke-virtual {v0}, Lcom/android/mms/rcs/RcsState;->setStateActivated()V

    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$4;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFeatures:Lcom/android/mms/rcs/Features;

    invoke-virtual {v0}, Lcom/android/mms/rcs/Features;->isUsePermanentOption()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$4;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    # getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mTaskGetPermanentDisabledState:Landroid/os/AsyncTask;
    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$300(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$4;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    new-instance v1, Lcom/android/mms/rcs/GetPermanentDisableStateTask;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$4;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    new-instance v3, Lcom/android/mms/ui/MessagingPreferenceActivity$4$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$4$1;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity$4;)V

    invoke-direct {v1, v2, v3}, Lcom/android/mms/rcs/GetPermanentDisableStateTask;-><init>(Landroid/content/Context;Lcom/android/mms/rcs/GetPermanentDisableStateTask$IGetPermanentDisableStateCallback;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    # setter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mTaskGetPermanentDisabledState:Landroid/os/AsyncTask;
    invoke-static {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$302(Lcom/android/mms/ui/MessagingPreferenceActivity;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$4;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRcsSetting:Lcom/android/mms/rcs/settings/RcsSetting;

    invoke-virtual {v0}, Lcom/android/mms/rcs/settings/RcsSetting;->updateRcsPermanentDisableAvailabilityState()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$4;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRcsSetting:Lcom/android/mms/rcs/settings/RcsSetting;

    sget-object v0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsState:Lcom/android/mms/rcs/RcsState;

    invoke-virtual {v0}, Lcom/android/mms/rcs/RcsState;->setStateDeactivated()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$4;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRcsSetting:Lcom/android/mms/rcs/settings/RcsSetting;

    invoke-virtual {v0}, Lcom/android/mms/rcs/settings/RcsSetting;->updateUiComponents()V

    goto :goto_0
.end method
