.class Lcom/android/mms/ui/MessagingPreferenceActivity$3;
.super Ljava/lang/Object;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Lcom/android/mms/rcs/GetPermanentDisableStateTask$IGetPermanentDisableStateCallback;


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

    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$3;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Integer;)V
    .locals 3
    .param p1    # Ljava/lang/Integer;

    const-string v0, "Mms/MessagingPreferenceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permanent disable value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$3;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRcsSetting:Lcom/android/mms/rcs/settings/RcsSetting;

    sget-object v0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsState:Lcom/android/mms/rcs/RcsState;

    invoke-virtual {v0}, Lcom/android/mms/rcs/RcsState;->setStateNotInitialized()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-string v0, "Mms/MessagingPreferenceActivity"

    const-string v1, "In progress for permanent disalbe of joyn service"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$3;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRcsSetting:Lcom/android/mms/rcs/settings/RcsSetting;

    sget-object v0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsState:Lcom/android/mms/rcs/RcsState;

    invoke-virtual {v0}, Lcom/android/mms/rcs/RcsState;->setStateInProgress()V

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$3;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRcsSetting:Lcom/android/mms/rcs/settings/RcsSetting;

    invoke-virtual {v0}, Lcom/android/mms/rcs/settings/RcsSetting;->updateUiComponents()V

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$3;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRcsSetting:Lcom/android/mms/rcs/settings/RcsSetting;

    invoke-virtual {v0}, Lcom/android/mms/rcs/settings/RcsSetting;->registerPermanentDisableStateObserver()V

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$3;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRcsSetting:Lcom/android/mms/rcs/settings/RcsSetting;

    invoke-virtual {v0}, Lcom/android/mms/rcs/settings/RcsSetting;->showPermanentDisableStateProgressDialog()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const-string v0, "Mms/MessagingPreferenceActivity"

    const-string v1, "Permanent disabled of joyn service on this device"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$3;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRcsSetting:Lcom/android/mms/rcs/settings/RcsSetting;

    sget-object v0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsState:Lcom/android/mms/rcs/RcsState;

    invoke-virtual {v0}, Lcom/android/mms/rcs/RcsState;->setStatePermanetDisabled()V

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$3;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRcsSetting:Lcom/android/mms/rcs/settings/RcsSetting;

    invoke-virtual {v0}, Lcom/android/mms/rcs/settings/RcsSetting;->updateUiComponents()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$3;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRcsSetting:Lcom/android/mms/rcs/settings/RcsSetting;

    invoke-virtual {v0}, Lcom/android/mms/rcs/settings/RcsSetting;->updateUiComponents()V

    goto :goto_0
.end method
