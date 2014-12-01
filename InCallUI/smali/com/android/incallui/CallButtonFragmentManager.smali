.class public Lcom/android/incallui/CallButtonFragmentManager;
.super Lcom/android/incallui/BaseFragmentManager;
.source "CallButtonFragmentManager.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$AccessoryEventListener;
.implements Lcom/android/incallui/InCallPresenter$ConfigurationChangeListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallPresenter$WindowStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallButtonFragmentManager$1;,
        Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragmentManager",
        "<",
        "Lcom/android/incallui/CallButtonFragment;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$WindowStatusChangeListener;",
        "Lcom/android/incallui/InCallPresenter$ConfigurationChangeListener;",
        "Lcom/android/incallui/InCallPresenter$AccessoryEventListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;"
    }
.end annotation


# instance fields
.field currentFragment:Lcom/android/incallui/CallButtonFragment;

.field private mIsCoverClosed:Z

.field private mIsMultiWindowMode:Z

.field private mShowDialpad:Z


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/incallui/BaseFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonFragmentManager;->mIsMultiWindowMode:Z

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonFragmentManager;->mIsCoverClosed:Z

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonFragmentManager;->mShowDialpad:Z

    const-string v0, "CallButtonFragmentManager"

    const-string v1, "CallButtonFragmentManager..."

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/BaseFragmentManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addWindowStatusListener(Lcom/android/incallui/InCallPresenter$WindowStatusChangeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addConfigurationChangeListener(Lcom/android/incallui/InCallPresenter$ConfigurationChangeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    return-void
.end method


# virtual methods
.method public checkAndHideFragment(Ljava/lang/Enum;)V
    .locals 2

    sget-object v0, Lcom/android/incallui/CallButtonFragmentManager$1;->$SwitchMap$com$android$incallui$CallButtonFragmentManager$CallButtonMode:[I

    check-cast p1, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const-string v0, "clear_cover_check_fragment"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    sget-object v1, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_COVER:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragmentManager;->hideCurrentFragment()V

    :cond_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    sget-object v1, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VIDEO:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    if-eq v0, v1, :cond_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    sget-object v1, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VIDEO:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    if-eq v0, v1, :cond_0

    const-string v0, "volte_jpn_orientation_feature"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    sget-object v1, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_QVGA_VIDEO:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    if-eq v0, v1, :cond_0

    :cond_2
    :pswitch_3
    iget-object v0, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    sget-object v1, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VIDEO_EASY:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    if-eq v0, v1, :cond_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    sget-object v1, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VIDEO_EASY:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    if-eq v0, v1, :cond_0

    :pswitch_5
    const-string v0, "clear_cover_check_fragment"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragmentManager;->hideCurrentFragment()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected bridge synthetic checkAndSet(Z)Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/CallButtonFragment;

    move-result-object v0

    return-object v0
.end method

.method protected checkAndSet(Z)Lcom/android/incallui/CallButtonFragment;
    .locals 17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v14}, Landroid/app/Activity;->isFinishing()Z

    move-result v14

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v14}, Landroid/app/Activity;->isDestroyed()Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_0
    const/4 v14, 0x0

    :goto_0
    return-object v14

    :cond_1
    if-nez p1, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v14

    sget-object v15, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v14, v15, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v14

    sget-object v15, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v14, v15, :cond_3

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/BaseFragmentManager;->removeCurrentFragment()V

    sget-object v14, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->INVALID:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    const/4 v14, 0x0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingMissedCall()Z

    move-result v14

    if-nez v14, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingRejectedCall()Z

    move-result v14

    if-eqz v14, :cond_5

    :cond_4
    const/4 v14, 0x0

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v5

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOnehandModeOn()Z

    move-result v7

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v11

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/incallui/CallButtonFragmentManager;->mShowDialpad:Z

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v14

    const/16 v15, 0x9

    if-eq v14, v15, :cond_14

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_6

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getDomain()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_11

    const/4 v8, 0x1

    :cond_6
    :goto_1
    const-string v14, "vzw_volte_ui"

    invoke-static {v14}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_7

    const-string v14, "att_volte_ui"

    invoke-static {v14}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_7

    const-string v14, "tmo_volte_ui"

    invoke-static {v14}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    :cond_7
    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getDomain()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_b

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v14

    const/4 v15, 0x2

    if-eq v14, v15, :cond_8

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_8

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v14

    const/4 v15, 0x4

    if-eq v14, v15, :cond_8

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v14

    const/4 v15, 0x5

    if-eq v14, v15, :cond_8

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_9

    :cond_8
    const/4 v10, 0x1

    :cond_9
    const-string v14, "att_volte_ui"

    invoke-static {v14}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    const-string v14, "tmo_volte_ui"

    invoke-static {v14}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    :cond_a
    if-nez v10, :cond_b

    sget-boolean v14, Lcom/android/incallui/InCallUtils;->isSessionModificationInitated:Z

    if-eqz v14, :cond_b

    const/4 v10, 0x1

    :cond_b
    :goto_2
    const-string v14, "CallButtonFragmentManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "checkCallUiMode: Easy mode is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", OneHand is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", DriveLink mode is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", High quality VT is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", QCIF VT is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", QVGA VT is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", Keypad status is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lcom/android/incallui/BaseFragmentManager;->log(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    const-string v14, "support_easy_mode"

    invoke-static {v14}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1f

    if-eqz v5, :cond_1f

    if-eqz v10, :cond_19

    sget-object v13, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VIDEO_EASY:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/incallui/CallButtonFragmentManager;->mIsCoverClosed:Z

    if-eqz v14, :cond_c

    sget-object v13, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_COVER:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    :cond_c
    const-string v14, "feature_skt_tphone"

    invoke-static {v14}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isTPhoneMode()Z

    move-result v14

    if-eqz v14, :cond_d

    if-eqz v4, :cond_d

    sget-object v13, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_EMPTY:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v14, v2}, Lcom/android/incallui/InCallActivity;->getProperOrientation(Landroid/content/res/Configuration;)I

    move-result v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/incallui/BaseFragmentManager;->mOrientation:I

    iget v15, v2, Landroid/content/res/Configuration;->orientation:I

    if-eq v14, v15, :cond_e

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/incallui/BaseFragmentManager;->mOrientation:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v15, v2}, Lcom/android/incallui/InCallActivity;->getProperOrientation(Landroid/content/res/Configuration;)I

    move-result v15

    if-eq v14, v15, :cond_e

    const-string v14, "CallButtonFragmentManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "forceUpdate : mOrientation - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/BaseFragmentManager;->mOrientation:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", config.orientation - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", getProperOrientation - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lcom/android/incallui/BaseFragmentManager;->log(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 p1, 0x1

    :cond_e
    const-string v14, "CallButtonFragmentManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mFragmentType : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " requestedMode : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", forceUpdate : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/incallui/BaseFragmentManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v14, v13, :cond_10

    :cond_f
    iget v14, v2, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/incallui/BaseFragmentManager;->mOrientation:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v13, v1}, Lcom/android/incallui/CallButtonFragmentManager;->setFragment(Ljava/lang/Enum;Z)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    const-string v14, "volte_jpn_ui"

    invoke-static {v14}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v14}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v14

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/CallButtonFragmentManager;->currentFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v14}, Lcom/android/incallui/CallButtonFragment;->displayDialpadDelayed()V

    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/CallButtonFragmentManager;->currentFragment:Lcom/android/incallui/CallButtonFragment;

    goto/16 :goto_0

    :cond_11
    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getVideoResolution()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_12

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_12
    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getVideoResolution()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_13

    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_13
    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_14
    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_16

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getDomain()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_16

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingRejectedCall()Z

    move-result v14

    if-nez v14, :cond_15

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingMissedCall()Z

    move-result v14

    if-eqz v14, :cond_16

    :cond_15
    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getVideoResolution()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_17

    const/4 v8, 0x1

    :cond_16
    :goto_4
    const/4 v4, 0x1

    goto/16 :goto_2

    :cond_17
    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getVideoResolution()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_18

    const/4 v9, 0x1

    goto :goto_4

    :cond_18
    const/4 v10, 0x1

    goto :goto_4

    :cond_19
    if-eqz v8, :cond_1a

    sget-object v13, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_QCIF_VIDEO_EASY:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    goto/16 :goto_3

    :cond_1a
    if-eqz v9, :cond_1b

    sget-object v13, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_QVGA_VIDEO_EASY:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    goto/16 :goto_3

    :cond_1b
    if-eqz v11, :cond_1d

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkNaviMode()Z

    move-result v14

    if-nez v14, :cond_1c

    sget-object v13, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_DRIVE_LINK:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    goto/16 :goto_3

    :cond_1c
    sget-object v13, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_DRIVE_LINK_MULTI:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    goto/16 :goto_3

    :cond_1d
    if-eqz v6, :cond_1e

    sget-object v13, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VOICE_EASY_KEYPAD:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    goto/16 :goto_3

    :cond_1e
    sget-object v13, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VOICE_EASY:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    goto/16 :goto_3

    :cond_1f
    const-string v14, "support_onehand_operation"

    invoke-static {v14}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_28

    if-eqz v7, :cond_28

    if-eqz v10, :cond_21

    const-string v14, "VGALAND"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_20

    sget-object v13, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VIDEO:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    goto/16 :goto_3

    :cond_20
    sget-object v13, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VIDEO_ONEHAND:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    goto/16 :goto_3

    :cond_21
    if-eqz v8, :cond_23

    iget v14, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_22

    sget-object v13, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_QCIF_VIDEO:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    goto/16 :goto_3

    :cond_22
    sget-object v13, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_QCIF_VIDEO_ONEHAND:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    goto/16 :goto_3

    :cond_23
    if-eqz v9, :cond_25

    const-string v14, "volte_jpn_orientation_feature"

    invoke-static {v14}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_24

    iget v14, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_24

    sget-object v13, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_QVGA_VIDEO:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    goto/16 :goto_3

    :cond_24
    sget-object v13, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_QVGA_VIDEO_ONEHAND:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    goto/16 :goto_3

    :cond_25
    if-eqz v11, :cond_27

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkNaviMode()Z

    move-result v14

    if-nez v14, :cond_26

    sget-object v13, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_DRIVE_LINK:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    goto/16 :goto_3

    :cond_26
    sget-object v13, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_DRIVE_LINK_MULTI:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    goto/16 :goto_3

    :cond_27
    sget-object v13, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VOICE_ONEHAND:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    goto/16 :goto_3

    :cond_28
    if-eqz v10, :cond_29

    sget-object v13, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VIDEO:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    goto/16 :goto_3

    :cond_29
    if-eqz v8, :cond_2a

    sget-object v13, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_QCIF_VIDEO:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    goto/16 :goto_3

    :cond_2a
    if-eqz v9, :cond_2b

    sget-object v13, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_QVGA_VIDEO:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    goto/16 :goto_3

    :cond_2b
    if-eqz v11, :cond_2d

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkNaviMode()Z

    move-result v14

    if-nez v14, :cond_2c

    sget-object v13, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_DRIVE_LINK:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    goto/16 :goto_3

    :cond_2c
    sget-object v13, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_DRIVE_LINK_MULTI:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    goto/16 :goto_3

    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/incallui/CallButtonFragmentManager;->mIsMultiWindowMode:Z

    if-nez v14, :cond_2f

    if-eqz v6, :cond_2e

    sget-object v13, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VOICE_COMMON_KEYPAD:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    goto/16 :goto_3

    :cond_2e
    sget-object v13, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VOICE_COMMON:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    goto/16 :goto_3

    :cond_2f
    sget-object v13, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VOICE_COMMON_MULTI:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    goto/16 :goto_3
.end method

.method protected bridge synthetic getFragment()Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/CallButtonFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getFragment()Lcom/android/incallui/CallButtonFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragmentManager;->currentFragment:Lcom/android/incallui/CallButtonFragment;

    return-object v0
.end method

.method public hideCurrentFragment()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/CallButtonFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/CallButtonFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/CallButtonFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallButtonFragment;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/CallButtonFragment;

    return-void
.end method

.method public onCoverStatusChanged(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/incallui/CallButtonFragmentManager;->mIsCoverClosed:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/CallButtonFragment;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/android/incallui/BaseFragmentManager;->onDestroy()V

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonFragmentManager;->mIsMultiWindowMode:Z

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonFragmentManager;->mShowDialpad:Z

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeWindowStatusListener(Lcom/android/incallui/InCallPresenter$WindowStatusChangeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeConfigurationChangeListener(Lcom/android/incallui/InCallPresenter$ConfigurationChangeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeAccessoryEventListener(Lcom/android/incallui/InCallPresenter$AccessoryEventListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/services/telephony/common/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/CallButtonFragmentManager;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/CallButtonFragment;

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateChange() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/CallButtonFragment;

    return-void
.end method

.method public onWindowStatusChanged(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/incallui/CallButtonFragmentManager;->mIsMultiWindowMode:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/CallButtonFragment;

    return-void
.end method

.method protected bridge synthetic setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallButtonFragmentManager;->setCurrentFragment(Lcom/android/incallui/CallButtonFragment;)V

    return-void
.end method

.method protected setCurrentFragment(Lcom/android/incallui/CallButtonFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallButtonFragmentManager;->currentFragment:Lcom/android/incallui/CallButtonFragment;

    return-void
.end method

.method protected setFragment(Ljava/lang/Enum;Z)V
    .locals 4

    const v0, 0x7f0e015f

    const/4 v1, 0x0

    sget-object v3, Lcom/android/incallui/CallButtonFragmentManager$1;->$SwitchMap$com$android$incallui$CallButtonFragmentManager$CallButtonMode:[I

    move-object v2, p1

    check-cast v2, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallButtonFragmentManager;->checkAndHideFragment(Ljava/lang/Enum;)V

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/incallui/BaseFragmentManager;->setFragmentInternal(ILandroid/app/Fragment;Z)V

    :cond_0
    return-void

    :pswitch_0
    new-instance v1, Lcom/android/incallui/InCallButtonVoiceFragment;

    invoke-direct {v1}, Lcom/android/incallui/InCallButtonVoiceFragment;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/android/incallui/InCallButtonEasyFragment;

    invoke-direct {v1}, Lcom/android/incallui/InCallButtonEasyFragment;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/android/incallui/InCallButtonOnehandFragment;

    invoke-direct {v1}, Lcom/android/incallui/InCallButtonOnehandFragment;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v1, Lcom/android/incallui/InCallButtonDrivingFragment;

    invoke-direct {v1}, Lcom/android/incallui/InCallButtonDrivingFragment;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v1, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;

    invoke-direct {v1}, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance v1, Lcom/android/incallui/drivelink/InCallButtonMWDriveLinkFragment;

    invoke-direct {v1}, Lcom/android/incallui/drivelink/InCallButtonMWDriveLinkFragment;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance v1, Lcom/android/incallui/InCallButtonVideoFragment;

    invoke-direct {v1}, Lcom/android/incallui/InCallButtonVideoFragment;-><init>()V

    goto :goto_0

    :pswitch_7
    new-instance v1, Lcom/android/incallui/InCallButtonVideoEasyFragment;

    invoke-direct {v1}, Lcom/android/incallui/InCallButtonVideoEasyFragment;-><init>()V

    goto :goto_0

    :pswitch_8
    new-instance v1, Lcom/android/incallui/InCallButtonVideoOnehandFragment;

    invoke-direct {v1}, Lcom/android/incallui/InCallButtonVideoOnehandFragment;-><init>()V

    goto :goto_0

    :pswitch_9
    new-instance v1, Lcom/android/incallui/InCallButtonQcifVideoFragment;

    invoke-direct {v1}, Lcom/android/incallui/InCallButtonQcifVideoFragment;-><init>()V

    goto :goto_0

    :pswitch_a
    new-instance v1, Lcom/android/incallui/InCallButtonQcifVideoEasyFragment;

    invoke-direct {v1}, Lcom/android/incallui/InCallButtonQcifVideoEasyFragment;-><init>()V

    goto :goto_0

    :pswitch_b
    new-instance v1, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;

    invoke-direct {v1}, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;-><init>()V

    goto :goto_0

    :pswitch_c
    new-instance v1, Lcom/android/incallui/InCallButtonQvgaVideoFragment;

    invoke-direct {v1}, Lcom/android/incallui/InCallButtonQvgaVideoFragment;-><init>()V

    goto :goto_0

    :pswitch_d
    new-instance v1, Lcom/android/incallui/InCallButtonQvgaVideoEasyFragment;

    invoke-direct {v1}, Lcom/android/incallui/InCallButtonQvgaVideoEasyFragment;-><init>()V

    goto :goto_0

    :pswitch_e
    new-instance v1, Lcom/android/incallui/InCallButtonQvgaVideoOnehandFragment;

    invoke-direct {v1}, Lcom/android/incallui/InCallButtonQvgaVideoOnehandFragment;-><init>()V

    goto :goto_0

    :pswitch_f
    new-instance v1, Lcom/android/incallui/InCallButtonMwVoiceFragment;

    invoke-direct {v1}, Lcom/android/incallui/InCallButtonMwVoiceFragment;-><init>()V

    goto :goto_0

    :pswitch_10
    new-instance v1, Lcom/android/incallui/InCallButtonVoiceDialpadFragment;

    invoke-direct {v1}, Lcom/android/incallui/InCallButtonVoiceDialpadFragment;-><init>()V

    goto :goto_0

    :pswitch_11
    new-instance v1, Lcom/android/incallui/InCallButtonEasyDialpadFragment;

    invoke-direct {v1}, Lcom/android/incallui/InCallButtonEasyDialpadFragment;-><init>()V

    goto :goto_0

    :pswitch_12
    new-instance v1, Lcom/android/incallui/InCallButtonCoverFragment;

    invoke-direct {v1}, Lcom/android/incallui/InCallButtonCoverFragment;-><init>()V

    goto :goto_0

    :pswitch_13
    new-instance v1, Lcom/android/incallui/InCallButtonEmptyFragment;

    invoke-direct {v1}, Lcom/android/incallui/InCallButtonEmptyFragment;-><init>()V

    goto :goto_0

    nop

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
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public updateCallButtonFragment(Z)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v0

    const-string v1, "CallButtonFragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCallButtonFragment showDialpad "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
