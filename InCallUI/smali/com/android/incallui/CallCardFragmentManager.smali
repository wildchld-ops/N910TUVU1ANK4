.class public Lcom/android/incallui/CallCardFragmentManager;
.super Lcom/android/incallui/BaseFragmentManager;
.source "CallCardFragmentManager.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$AccessoryEventListener;
.implements Lcom/android/incallui/InCallPresenter$ConfigurationChangeListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallPresenter$ModifyCallListener;
.implements Lcom/android/incallui/InCallPresenter$WindowStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallCardFragmentManager$1;,
        Lcom/android/incallui/CallCardFragmentManager$CallCardMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragmentManager",
        "<",
        "Lcom/android/incallui/CallCardFragment;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$WindowStatusChangeListener;",
        "Lcom/android/incallui/InCallPresenter$ConfigurationChangeListener;",
        "Lcom/android/incallui/InCallPresenter$ModifyCallListener;",
        "Lcom/android/incallui/InCallPresenter$AccessoryEventListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;"
    }
.end annotation


# instance fields
.field currentFragment:Lcom/android/incallui/CallCardFragment;

.field private mIsCoverClosed:Z

.field private mIsMultiWindowMode:Z


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/incallui/BaseFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-boolean v0, p0, Lcom/android/incallui/CallCardFragmentManager;->mIsMultiWindowMode:Z

    iput-boolean v0, p0, Lcom/android/incallui/CallCardFragmentManager;->mIsCoverClosed:Z

    const-string v0, "CallCardFragmentManager"

    const-string v1, "CallCardFragmentManager..."

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

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addModifyCallListener(Lcom/android/incallui/InCallPresenter$ModifyCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    return-void
.end method


# virtual methods
.method public checkAndHideFragment(Ljava/lang/Enum;)V
    .locals 2

    sget-object v0, Lcom/android/incallui/CallCardFragmentManager$1;->$SwitchMap$com$android$incallui$CallCardFragmentManager$CallCardMode:[I

    check-cast p1, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

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

    sget-object v1, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->CALLCARD_COVER:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragmentManager;->hideCurrentFragment()V

    :cond_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    sget-object v1, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->VIDEO:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    if-eq v0, v1, :cond_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    sget-object v1, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->VIDEO:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    if-eq v0, v1, :cond_0

    const-string v0, "volte_jpn_orientation_feature"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    sget-object v1, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->QVGA_VIDEO:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    if-eq v0, v1, :cond_0

    :cond_2
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragmentManager;->hideCurrentFragment()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge synthetic checkAndSet(Z)Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardFragmentManager;->checkAndSet(Z)Lcom/android/incallui/CallCardFragment;

    move-result-object v0

    return-object v0
.end method

.method protected checkAndSet(Z)Lcom/android/incallui/CallCardFragment;
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->isFinishing()Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->isDestroyed()Z

    move-result v17

    if-eqz v17, :cond_1

    :cond_0
    const/16 v17, 0x0

    :goto_0
    return-object v17

    :cond_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v10

    const/4 v14, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v9

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v6

    const-string v17, "feature_chn_duos"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/4 v11, 0x1

    :cond_2
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v17

    const/16 v18, 0x9

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_12

    invoke-virtual {v6}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_12

    invoke-virtual {v6}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    invoke-virtual {v6}, Lcom/android/services/telephony/common/Call;->getDomain()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    const/4 v12, 0x1

    :cond_3
    :goto_1
    const-string v17, "vzw_volte_ui"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_4

    const-string v17, "att_volte_ui"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_4

    const-string v17, "tmo_volte_ui"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    :cond_4
    invoke-virtual {v6}, Lcom/android/services/telephony/common/Call;->getDomain()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v6}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    invoke-virtual {v6}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    invoke-virtual {v6}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    invoke-virtual {v6}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v17

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    invoke-virtual {v6}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    :cond_5
    const/4 v14, 0x1

    :cond_6
    const-string v17, "att_volte_ui"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_7

    const-string v17, "tmo_volte_ui"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    :cond_7
    if-nez v14, :cond_8

    sget-boolean v17, Lcom/android/incallui/InCallUtils;->isSessionModificationInitated:Z

    if-eqz v17, :cond_8

    const/4 v14, 0x1

    :cond_8
    :goto_2
    if-eqz v12, :cond_17

    sget-object v16, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->QCIF_VIDEO:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    :goto_3
    const-string v17, "automatic_answering_machine"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/InCallUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v7

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/incallui/CallCardFragmentManager;->mIsCoverClosed:Z

    const-string v17, "CallCardFragmentManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "isCoverClosed "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/BaseFragmentManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/CallCardFragmentManager;->mIsCoverClosed:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    sget-object v16, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->CALLCARD_COVER:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    :cond_a
    const-string v17, "feature_skt_tphone"

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isTPhoneMode()Z

    move-result v17

    if-eqz v17, :cond_b

    if-eqz v8, :cond_b

    sget-object v16, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->EMPTY:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/incallui/InCallActivity;->getProperOrientation(Landroid/content/res/Configuration;)I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/BaseFragmentManager;->mOrientation:I

    move/from16 v17, v0

    iget v0, v4, Landroid/content/res/Configuration;->orientation:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/BaseFragmentManager;->mOrientation:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/android/incallui/InCallActivity;->getProperOrientation(Landroid/content/res/Configuration;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_c

    const-string v17, "CallCardFragmentManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "forceUpdate : mOrientation - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/BaseFragmentManager;->mOrientation:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", config.orientation - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v4, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", getProperOrientation - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/incallui/BaseFragmentManager;->log(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 p1, 0x1

    :cond_c
    const-string v17, "CallCardFragmentManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mFragmentType : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " requestedMode : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", forceUpdate : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/BaseFragmentManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_e

    :cond_d
    iget v0, v4, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/BaseFragmentManager;->mOrientation:I

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/CallCardFragmentManager;->setFragment(Ljava/lang/Enum;Z)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallCardFragmentManager;->currentFragment:Lcom/android/incallui/CallCardFragment;

    move-object/from16 v17, v0

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v6}, Lcom/android/services/telephony/common/Call;->getVideoResolution()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    const/4 v12, 0x1

    goto/16 :goto_1

    :cond_10
    invoke-virtual {v6}, Lcom/android/services/telephony/common/Call;->getVideoResolution()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_11
    const/4 v14, 0x1

    goto/16 :goto_1

    :cond_12
    invoke-virtual {v6}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    invoke-virtual {v6}, Lcom/android/services/telephony/common/Call;->getDomain()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingRejectedCall()Z

    move-result v17

    if-nez v17, :cond_13

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingMissedCall()Z

    move-result v17

    if-eqz v17, :cond_14

    :cond_13
    invoke-virtual {v6}, Lcom/android/services/telephony/common/Call;->getVideoResolution()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    const/4 v12, 0x1

    :cond_14
    :goto_4
    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_15
    invoke-virtual {v6}, Lcom/android/services/telephony/common/Call;->getVideoResolution()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    const/4 v13, 0x1

    goto :goto_4

    :cond_16
    const/4 v14, 0x1

    goto :goto_4

    :cond_17
    if-eqz v13, :cond_18

    sget-object v16, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->QVGA_VIDEO:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    goto/16 :goto_3

    :cond_18
    if-eqz v14, :cond_19

    sget-object v16, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->VIDEO:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    goto/16 :goto_3

    :cond_19
    if-eqz v9, :cond_1b

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkNaviMode()Z

    move-result v17

    if-nez v17, :cond_1a

    sget-object v16, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->DRIVE_LINK:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    goto/16 :goto_3

    :cond_1a
    sget-object v16, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->DRIVE_LINK_MULTI:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    goto/16 :goto_3

    :cond_1b
    if-eqz v10, :cond_1c

    sget-object v16, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->EASY_COMMON:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    goto/16 :goto_3

    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/CallCardFragmentManager;->mIsMultiWindowMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1d

    sget-object v16, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->VOICE_COMMON_MULTI:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    goto/16 :goto_3

    :cond_1d
    if-eqz v11, :cond_1e

    sget-object v16, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->VOICE_MULTISIM:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    goto/16 :goto_3

    :cond_1e
    sget-object v16, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->VOICE_COMMON:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    goto/16 :goto_3
.end method

.method protected bridge synthetic getFragment()Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragmentManager;->getFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getFragment()Lcom/android/incallui/CallCardFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardFragmentManager;->currentFragment:Lcom/android/incallui/CallCardFragment;

    return-object v0
.end method

.method public hideCurrentFragment()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragmentManager;->getFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragmentManager;->getFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragmentManager;->getFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCardFragment;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallCardFragmentManager;->checkAndSet(Z)Lcom/android/incallui/CallCardFragment;

    return-void
.end method

.method public onCoverStatusChanged(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/incallui/CallCardFragmentManager;->mIsCoverClosed:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallCardFragmentManager;->checkAndSet(Z)Lcom/android/incallui/CallCardFragment;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/BaseFragmentManager;->onDestroy()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallCardFragmentManager;->mIsMultiWindowMode:Z

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

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeModifyCallListener(Lcom/android/incallui/InCallPresenter$ModifyCallListener;)V

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

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/CallCardFragmentManager;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onIncomingModifyCall(I)V
    .locals 0

    return-void
.end method

.method public onResultModifyCallRequest(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 3

    const-string v0, "CallCardFragmentManager"

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

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallCardFragmentManager;->checkAndSet(Z)Lcom/android/incallui/CallCardFragment;

    return-void
.end method

.method public onWindowStatusChanged(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/incallui/CallCardFragmentManager;->mIsMultiWindowMode:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallCardFragmentManager;->checkAndSet(Z)Lcom/android/incallui/CallCardFragment;

    return-void
.end method

.method protected bridge synthetic setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/CallCardFragment;

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardFragmentManager;->setCurrentFragment(Lcom/android/incallui/CallCardFragment;)V

    return-void
.end method

.method protected setCurrentFragment(Lcom/android/incallui/CallCardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallCardFragmentManager;->currentFragment:Lcom/android/incallui/CallCardFragment;

    return-void
.end method

.method protected setFragment(Ljava/lang/Enum;Z)V
    .locals 4

    const v0, 0x7f0e015d

    const/4 v1, 0x0

    sget-object v3, Lcom/android/incallui/CallCardFragmentManager$1;->$SwitchMap$com$android$incallui$CallCardFragmentManager$CallCardMode:[I

    move-object v2, p1

    check-cast v2, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardFragmentManager;->checkAndHideFragment(Ljava/lang/Enum;)V

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/incallui/BaseFragmentManager;->setFragmentInternal(ILandroid/app/Fragment;Z)V

    :cond_0
    return-void

    :pswitch_0
    new-instance v1, Lcom/android/incallui/CallCardVoiceFragment;

    invoke-direct {v1}, Lcom/android/incallui/CallCardVoiceFragment;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/android/incallui/CallCardMwVoiceFragment;

    invoke-direct {v1}, Lcom/android/incallui/CallCardMwVoiceFragment;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/android/incallui/CallCardMultiSimFragment;

    invoke-direct {v1}, Lcom/android/incallui/CallCardMultiSimFragment;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v1, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;

    invoke-direct {v1}, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v1, Lcom/android/incallui/drivelink/CallCardMWDriveLinkFragment;

    invoke-direct {v1}, Lcom/android/incallui/drivelink/CallCardMWDriveLinkFragment;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance v1, Lcom/android/incallui/CallCardQcifVideoFragment;

    invoke-direct {v1}, Lcom/android/incallui/CallCardQcifVideoFragment;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance v1, Lcom/android/incallui/CallCardQvgaVideoFragment;

    invoke-direct {v1}, Lcom/android/incallui/CallCardQvgaVideoFragment;-><init>()V

    goto :goto_0

    :pswitch_7
    new-instance v1, Lcom/android/incallui/CallCardVideoFragment;

    invoke-direct {v1}, Lcom/android/incallui/CallCardVideoFragment;-><init>()V

    goto :goto_0

    :pswitch_8
    new-instance v1, Lcom/android/incallui/CallCardCoverFragment;

    invoke-direct {v1}, Lcom/android/incallui/CallCardCoverFragment;-><init>()V

    goto :goto_0

    :pswitch_9
    new-instance v1, Lcom/android/incallui/CallCardEasyFragment;

    invoke-direct {v1}, Lcom/android/incallui/CallCardEasyFragment;-><init>()V

    goto :goto_0

    :pswitch_a
    new-instance v1, Lcom/android/incallui/CallCardEmptyFragment;

    invoke-direct {v1}, Lcom/android/incallui/CallCardEmptyFragment;-><init>()V

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
    .end packed-switch
.end method
