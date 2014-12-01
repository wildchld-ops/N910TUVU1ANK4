.class public Lcom/android/incallui/ConferenceManagerFragmentManager;
.super Lcom/android/incallui/BaseFragmentManager;
.source "ConferenceManagerFragmentManager.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$ConfigurationChangeListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ConferenceManagerFragmentManager$1;,
        Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragmentManager",
        "<",
        "Lcom/android/incallui/ConferenceManagerFragment;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$ConfigurationChangeListener;"
    }
.end annotation


# instance fields
.field currentFragment:Lcom/android/incallui/ConferenceManagerFragment;


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/incallui/BaseFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    const-string v0, "ConferenceManagerFragmentManager"

    const-string v1, "ConferenceManagerFragmentManager..."

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/BaseFragmentManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addConfigurationChangeListener(Lcom/android/incallui/InCallPresenter$ConfigurationChangeListener;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic checkAndSet(Z)Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/incallui/ConferenceManagerFragmentManager;->checkAndSet(Z)Lcom/android/incallui/ConferenceManagerFragment;

    move-result-object v0

    return-object v0
.end method

.method protected checkAndSet(Z)Lcom/android/incallui/ConferenceManagerFragment;
    .locals 9

    const/4 v5, 0x0

    const/4 v8, 0x1

    iget-object v6, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6}, Landroid/app/Activity;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->hasConferenceCall()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragmentManager;->removeCurrentFragment()V

    sget-object v6, Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;->INVALID:Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;

    iput-object v6, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOnehandModeOn()Z

    move-result v2

    const-string v5, "ConferenceManagerFragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkCallUiMode: Easy mode is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", OneHand is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6, v8}, Lcom/android/incallui/BaseFragmentManager;->log(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v4, Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;->CONFERENCE_MANAGER_COMMON:Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;

    iget-object v5, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v5, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v5, v0}, Lcom/android/incallui/InCallActivity;->getProperOrientation(Landroid/content/res/Configuration;)I

    move-result v3

    iget v5, p0, Lcom/android/incallui/BaseFragmentManager;->mOrientation:I

    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v5, v6, :cond_3

    iget v5, p0, Lcom/android/incallui/BaseFragmentManager;->mOrientation:I

    iget-object v6, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6, v0}, Lcom/android/incallui/InCallActivity;->getProperOrientation(Landroid/content/res/Configuration;)I

    move-result v6

    if-eq v5, v6, :cond_3

    const-string v5, "ConferenceManagerFragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "forceUpdate : mOrientation - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/incallui/BaseFragmentManager;->mOrientation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", config.orientation - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", getProperOrientation - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6, v8}, Lcom/android/incallui/BaseFragmentManager;->log(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, 0x1

    :cond_3
    const-string v5, "ConferenceManagerFragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mFragmentType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " requestedMode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", forceUpdate : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/incallui/BaseFragmentManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_4

    iget-object v5, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v5, v4, :cond_5

    :cond_4
    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/android/incallui/BaseFragmentManager;->mOrientation:I

    invoke-virtual {p0, v4, p1}, Lcom/android/incallui/ConferenceManagerFragmentManager;->setFragment(Ljava/lang/Enum;Z)V

    iput-object v4, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    :cond_5
    iget-object v5, p0, Lcom/android/incallui/ConferenceManagerFragmentManager;->currentFragment:Lcom/android/incallui/ConferenceManagerFragment;

    goto/16 :goto_0
.end method

.method protected bridge synthetic getFragment()Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/ConferenceManagerFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getFragment()Lcom/android/incallui/ConferenceManagerFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragmentManager;->currentFragment:Lcom/android/incallui/ConferenceManagerFragment;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/ConferenceManagerFragmentManager;->checkAndSet(Z)Lcom/android/incallui/ConferenceManagerFragment;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/BaseFragmentManager;->onDestroy()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeConfigurationChangeListener(Lcom/android/incallui/InCallPresenter$ConfigurationChangeListener;)V

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/ConferenceManagerFragmentManager;->checkAndSet(Z)Lcom/android/incallui/ConferenceManagerFragment;

    return-void
.end method

.method protected bridge synthetic setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/ConferenceManagerFragment;

    invoke-virtual {p0, p1}, Lcom/android/incallui/ConferenceManagerFragmentManager;->setCurrentFragment(Lcom/android/incallui/ConferenceManagerFragment;)V

    return-void
.end method

.method protected setCurrentFragment(Lcom/android/incallui/ConferenceManagerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/ConferenceManagerFragmentManager;->currentFragment:Lcom/android/incallui/ConferenceManagerFragment;

    return-void
.end method

.method protected setFragment(Ljava/lang/Enum;Z)V
    .locals 4

    const v0, 0x7f0e015e

    const/4 v1, 0x0

    sget-object v2, Lcom/android/incallui/ConferenceManagerFragmentManager$1;->$SwitchMap$com$android$incallui$ConferenceManagerFragmentManager$ConferenceManagerMode:[I

    check-cast p1, Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/incallui/BaseFragmentManager;->setFragmentInternal(ILandroid/app/Fragment;Z)V

    :cond_0
    return-void

    :pswitch_0
    new-instance v1, Lcom/android/incallui/ConferenceManagerVoiceFragment;

    invoke-direct {v1}, Lcom/android/incallui/ConferenceManagerVoiceFragment;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
