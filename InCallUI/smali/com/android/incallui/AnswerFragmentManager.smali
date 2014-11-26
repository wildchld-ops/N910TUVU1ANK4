.class public Lcom/android/incallui/AnswerFragmentManager;
.super Lcom/android/incallui/BaseFragmentManager;
.source "AnswerFragmentManager.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$AccessoryEventListener;
.implements Lcom/android/incallui/InCallPresenter$ConfigurationChangeListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/AnswerFragmentManager$1;,
        Lcom/android/incallui/AnswerFragmentManager$AnswerMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragmentManager",
        "<",
        "Lcom/android/incallui/AnswerFragment;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$ConfigurationChangeListener;",
        "Lcom/android/incallui/InCallPresenter$AccessoryEventListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;"
    }
.end annotation


# instance fields
.field currentFragment:Lcom/android/incallui/AnswerFragment;

.field private mIsCoverClosed:Z


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 2
    .param p1    # Lcom/android/incallui/InCallActivity;

    invoke-direct {p0, p1}, Lcom/android/incallui/BaseFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/AnswerFragmentManager;->mIsCoverClosed:Z

    const-string v0, "AnswerFragmentManager"

    const-string v1, "AnswerFragmentManager..."

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/BaseFragmentManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addConfigurationChangeListener(Lcom/android/incallui/InCallPresenter$ConfigurationChangeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    return-void
.end method


# virtual methods
.method protected checkAndSet(Z)Lcom/android/incallui/AnswerFragment;
    .locals 13
    .param p1    # Z

    const/4 v9, 0x0

    const/4 v12, 0x1

    iget-object v10, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v10}, Landroid/app/Activity;->isFinishing()Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v10}, Landroid/app/Activity;->isDestroyed()Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    :goto_0
    return-object v9

    :cond_1
    if-nez p1, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v10

    sget-object v11, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v10, v11, :cond_0

    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_3

    const/4 v4, 0x1

    :cond_3
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v2

    const-string v9, "vt_cmcc_accept_by_voicecall"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    if-eqz v4, :cond_4

    invoke-virtual {v8}, Lcom/android/services/telephony/common/Call;->getDomain()I

    move-result v9

    if-ne v9, v12, :cond_4

    const/4 v1, 0x1

    :cond_4
    const-string v9, "AnswerFragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkAndSet: Easy mode is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/android/incallui/BaseFragmentManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_a

    if-nez v2, :cond_a

    sget-object v7, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->VOICE_EASY:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    :goto_1
    iget-boolean v9, p0, Lcom/android/incallui/AnswerFragmentManager;->mIsCoverClosed:Z

    if-eqz v9, :cond_5

    sget-object v7, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->ANSWER_COVER:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    :cond_5
    iget-object v9, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v9}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v9, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v9, v0}, Lcom/android/incallui/InCallActivity;->getProperOrientation(Landroid/content/res/Configuration;)I

    move-result v6

    iget v9, p0, Lcom/android/incallui/BaseFragmentManager;->mOrientation:I

    iget v10, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v9, v10, :cond_7

    iget v9, p0, Lcom/android/incallui/BaseFragmentManager;->mOrientation:I

    iget-object v10, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v10, v0}, Lcom/android/incallui/InCallActivity;->getProperOrientation(Landroid/content/res/Configuration;)I

    move-result v10

    if-ne v9, v10, :cond_6

    if-eqz v4, :cond_7

    :cond_6
    const-string v9, "AnswerFragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "forceUpdate : mOrientation - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/incallui/BaseFragmentManager;->mOrientation:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", config.orientation - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", getProperOrientation - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10, v12}, Lcom/android/incallui/BaseFragmentManager;->log(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, 0x1

    :cond_7
    const-string v9, "AnswerFragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mFragmentType : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " requestedMode : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", forceUpdate : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/android/incallui/BaseFragmentManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_8

    iget-object v9, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v9, v7, :cond_9

    :cond_8
    iget v9, v0, Landroid/content/res/Configuration;->orientation:I

    iput v9, p0, Lcom/android/incallui/BaseFragmentManager;->mOrientation:I

    invoke-virtual {p0, v7, p1}, Lcom/android/incallui/AnswerFragmentManager;->setFragment(Ljava/lang/Enum;Z)V

    iput-object v7, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    :cond_9
    iget-object v9, p0, Lcom/android/incallui/AnswerFragmentManager;->currentFragment:Lcom/android/incallui/AnswerFragment;

    goto/16 :goto_0

    :cond_a
    if-eqz v2, :cond_c

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkNaviMode()Z

    move-result v9

    if-nez v9, :cond_b

    sget-object v7, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->DRIVE_LINK:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    goto/16 :goto_1

    :cond_b
    sget-object v7, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->DRIVE_LINK_MW:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    goto/16 :goto_1

    :cond_c
    sget-boolean v9, Lcom/android/incallui/InCallUtils;->isVoLTEShowMeHideScreenState:Z

    if-eqz v9, :cond_d

    sget-object v7, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->VOLTE_SHOW_HIDE:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    goto/16 :goto_1

    :cond_d
    if-eqz v5, :cond_e

    sget-object v7, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->VT_THREE_BUTTON:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    goto/16 :goto_1

    :cond_e
    if-eqz v1, :cond_f

    sget-object v7, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->VT_CMCC_BUTTON:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    goto/16 :goto_1

    :cond_f
    if-eqz v4, :cond_10

    sget-object v7, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->VIDEO_COMMON:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    goto/16 :goto_1

    :cond_10
    sget-object v7, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;->VOICE_COMMON:Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    goto/16 :goto_1
.end method

.method protected bridge synthetic checkAndSet(Z)Lcom/android/incallui/BaseFragment;
    .locals 1
    .param p1    # Z

    invoke-virtual {p0, p1}, Lcom/android/incallui/AnswerFragmentManager;->checkAndSet(Z)Lcom/android/incallui/AnswerFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getFragment()Lcom/android/incallui/AnswerFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/AnswerFragmentManager;->currentFragment:Lcom/android/incallui/AnswerFragment;

    return-object v0
.end method

.method protected bridge synthetic getFragment()Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragmentManager;->getFragment()Lcom/android/incallui/AnswerFragment;

    move-result-object v0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/AnswerFragmentManager;->checkAndSet(Z)Lcom/android/incallui/AnswerFragment;

    return-void
.end method

.method public onCoverStatusChanged(Z)V
    .locals 1
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/incallui/AnswerFragmentManager;->mIsCoverClosed:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/AnswerFragmentManager;->checkAndSet(Z)Lcom/android/incallui/AnswerFragment;

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

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeAccessoryEventListener(Lcom/android/incallui/InCallPresenter$AccessoryEventListener;)V

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/services/telephony/common/Call;)V
    .locals 1
    .param p1    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2    # Lcom/android/services/telephony/common/Call;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/AnswerFragmentManager;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 3
    .param p1    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2    # Lcom/android/incallui/CallList;

    const-string v0, "AnswerFragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChange() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/incallui/BaseFragmentManager;->log(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/AnswerFragmentManager;->checkAndSet(Z)Lcom/android/incallui/AnswerFragment;

    return-void
.end method

.method protected setCurrentFragment(Lcom/android/incallui/AnswerFragment;)V
    .locals 0
    .param p1    # Lcom/android/incallui/AnswerFragment;

    iput-object p1, p0, Lcom/android/incallui/AnswerFragmentManager;->currentFragment:Lcom/android/incallui/AnswerFragment;

    return-void
.end method

.method protected bridge synthetic setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    .locals 0
    .param p1    # Lcom/android/incallui/BaseFragment;

    check-cast p1, Lcom/android/incallui/AnswerFragment;

    invoke-virtual {p0, p1}, Lcom/android/incallui/AnswerFragmentManager;->setCurrentFragment(Lcom/android/incallui/AnswerFragment;)V

    return-void
.end method

.method protected setFragment(Ljava/lang/Enum;Z)V
    .locals 4
    .param p1    # Ljava/lang/Enum;
    .param p2    # Z

    const v0, 0x7f0e0163

    const/4 v1, 0x0

    sget-object v2, Lcom/android/incallui/AnswerFragmentManager$1;->$SwitchMap$com$android$incallui$AnswerFragmentManager$AnswerMode:[I

    check-cast p1, Lcom/android/incallui/AnswerFragmentManager$AnswerMode;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v1, Lcom/android/incallui/AnswerGrowpadFragment;

    invoke-direct {v1}, Lcom/android/incallui/AnswerGrowpadFragment;-><init>()V

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/incallui/BaseFragmentManager;->setFragmentInternal(ILandroid/app/Fragment;Z)V

    :cond_0
    return-void

    :pswitch_0
    new-instance v1, Lcom/android/incallui/AnswerImageFragmentVoiceCall;

    invoke-direct {v1}, Lcom/android/incallui/AnswerImageFragmentVoiceCall;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/android/incallui/AnswerImageFragmentVideoCall;

    invoke-direct {v1}, Lcom/android/incallui/AnswerImageFragmentVideoCall;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/android/incallui/AnswerEasyFragment;

    invoke-direct {v1}, Lcom/android/incallui/AnswerEasyFragment;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v1, Lcom/android/incallui/drivelink/AnswerButtonDriveLinkFragment;

    invoke-direct {v1}, Lcom/android/incallui/drivelink/AnswerButtonDriveLinkFragment;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v1, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;

    invoke-direct {v1}, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance v1, Lcom/android/incallui/AnswerVtThreeButtonFragment;

    invoke-direct {v1}, Lcom/android/incallui/AnswerVtThreeButtonFragment;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance v1, Lcom/android/incallui/AnswerVtCMCCButtonFragment;

    invoke-direct {v1}, Lcom/android/incallui/AnswerVtCMCCButtonFragment;-><init>()V

    goto :goto_0

    :pswitch_7
    new-instance v1, Lcom/android/incallui/AnswerCoverFragment;

    invoke-direct {v1}, Lcom/android/incallui/AnswerCoverFragment;-><init>()V

    goto :goto_0

    :pswitch_8
    new-instance v1, Lcom/android/incallui/VoLTEshowMehideMeFragment;

    invoke-direct {v1}, Lcom/android/incallui/VoLTEshowMehideMeFragment;-><init>()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
