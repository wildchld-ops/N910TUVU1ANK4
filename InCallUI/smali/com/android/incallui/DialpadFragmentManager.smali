.class public Lcom/android/incallui/DialpadFragmentManager;
.super Lcom/android/incallui/BaseFragmentManager;
.source "DialpadFragmentManager.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$ConfigurationChangeListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/DialpadFragmentManager$1;,
        Lcom/android/incallui/DialpadFragmentManager$DialpadMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragmentManager",
        "<",
        "Lcom/android/incallui/DialpadFragment;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$ConfigurationChangeListener;"
    }
.end annotation


# static fields
.field public static isFragmentSetAfterBootUp:Z


# instance fields
.field currentFragment:Lcom/android/incallui/DialpadFragment;

.field private mIsDialpadOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/DialpadFragmentManager;->isFragmentSetAfterBootUp:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 2
    .param p1    # Lcom/android/incallui/InCallActivity;

    invoke-direct {p0, p1}, Lcom/android/incallui/BaseFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/DialpadFragmentManager;->mIsDialpadOpen:Z

    const-string v0, "DialpadFragmentManager"

    const-string v1, "DialpadFragmentManager..."

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
    .param p1    # Z

    invoke-virtual {p0, p1}, Lcom/android/incallui/DialpadFragmentManager;->checkAndSet(Z)Lcom/android/incallui/DialpadFragment;

    move-result-object v0

    return-object v0
.end method

.method protected checkAndSet(Z)Lcom/android/incallui/DialpadFragment;
    .locals 10
    .param p1    # Z

    const/4 v6, 0x0

    const/4 v9, 0x1

    iget-object v7, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v7}, Landroid/app/Activity;->isFinishing()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v7}, Landroid/app/Activity;->isDestroyed()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    iget-boolean v7, p0, Lcom/android/incallui/DialpadFragmentManager;->mIsDialpadOpen:Z

    if-eq v7, v9, :cond_2

    iget-object v7, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-nez v7, :cond_2

    if-eqz p1, :cond_0

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOnehandModeOn()Z

    move-result v3

    const-string v6, "volte_jpn_orientation_feature"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    const/4 v3, 0x0

    :cond_3
    const-string v6, "DialpadFragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkCallUiMode: Easy mode is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", OneHand is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7, v9}, Lcom/android/incallui/BaseFragmentManager;->log(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v6, "support_easy_mode"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz v2, :cond_7

    sget-object v5, Lcom/android/incallui/DialpadFragmentManager$DialpadMode;->DIALPAD_EASY:Lcom/android/incallui/DialpadFragmentManager$DialpadMode;

    :goto_1
    iget-object v6, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v6, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6, v0}, Lcom/android/incallui/InCallActivity;->getProperOrientation(Landroid/content/res/Configuration;)I

    move-result v4

    iget v6, p0, Lcom/android/incallui/BaseFragmentManager;->mOrientation:I

    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v6, v7, :cond_4

    iget v6, p0, Lcom/android/incallui/BaseFragmentManager;->mOrientation:I

    iget-object v7, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v7, v0}, Lcom/android/incallui/InCallActivity;->getProperOrientation(Landroid/content/res/Configuration;)I

    move-result v7

    if-eq v6, v7, :cond_4

    const-string v6, "DialpadFragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "forceUpdate : mOrientation - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/incallui/BaseFragmentManager;->mOrientation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", config.orientation - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", getProperOrientation - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7, v9}, Lcom/android/incallui/BaseFragmentManager;->log(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, 0x1

    :cond_4
    const-string v6, "DialpadFragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mFragmentType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " requestedMode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", forceUpdate : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/incallui/BaseFragmentManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_5

    iget-object v6, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v6, v5, :cond_6

    :cond_5
    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    iput v6, p0, Lcom/android/incallui/BaseFragmentManager;->mOrientation:I

    iget-object v6, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-nez v6, :cond_9

    sput-boolean v9, Lcom/android/incallui/DialpadFragmentManager;->isFragmentSetAfterBootUp:Z

    :goto_2
    invoke-virtual {p0, v5, p1}, Lcom/android/incallui/DialpadFragmentManager;->setFragment(Ljava/lang/Enum;Z)V

    iput-object v5, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    :cond_6
    iget-object v6, p0, Lcom/android/incallui/DialpadFragmentManager;->currentFragment:Lcom/android/incallui/DialpadFragment;

    goto/16 :goto_0

    :cond_7
    const-string v6, "support_onehand_operation"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v3, :cond_8

    sget-object v5, Lcom/android/incallui/DialpadFragmentManager$DialpadMode;->DIALPAD_ONEHAND:Lcom/android/incallui/DialpadFragmentManager$DialpadMode;

    goto/16 :goto_1

    :cond_8
    sget-object v5, Lcom/android/incallui/DialpadFragmentManager$DialpadMode;->DIALPAD_COMMON:Lcom/android/incallui/DialpadFragmentManager$DialpadMode;

    goto/16 :goto_1

    :cond_9
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/incallui/DialpadFragmentManager;->isFragmentSetAfterBootUp:Z

    goto :goto_2
.end method

.method protected bridge synthetic getFragment()Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragmentManager;->getFragment()Lcom/android/incallui/DialpadFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getFragment()Lcom/android/incallui/DialpadFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/DialpadFragmentManager;->currentFragment:Lcom/android/incallui/DialpadFragment;

    return-object v0
.end method

.method public isDialpadOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/DialpadFragmentManager;->mIsDialpadOpen:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;

    const/4 v1, 0x0

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/DialpadFragmentManager;->currentFragment:Lcom/android/incallui/DialpadFragment;

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/incallui/BaseFragmentManager;->mOrientation:I

    iget-object v0, p0, Lcom/android/incallui/DialpadFragmentManager;->currentFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v0, v1}, Lcom/android/incallui/DialpadFragment;->setVisible(Z)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/DialpadFragmentManager;->setDialpadOpen(Z)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/DialpadFragmentManager;->checkAndSet(Z)Lcom/android/incallui/DialpadFragment;

    goto :goto_0
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
    .param p1    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2    # Lcom/android/incallui/CallList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/DialpadFragmentManager;->checkAndSet(Z)Lcom/android/incallui/DialpadFragment;

    return-void
.end method

.method protected bridge synthetic setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    .locals 0
    .param p1    # Lcom/android/incallui/BaseFragment;

    check-cast p1, Lcom/android/incallui/DialpadFragment;

    invoke-virtual {p0, p1}, Lcom/android/incallui/DialpadFragmentManager;->setCurrentFragment(Lcom/android/incallui/DialpadFragment;)V

    return-void
.end method

.method protected setCurrentFragment(Lcom/android/incallui/DialpadFragment;)V
    .locals 0
    .param p1    # Lcom/android/incallui/DialpadFragment;

    iput-object p1, p0, Lcom/android/incallui/DialpadFragmentManager;->currentFragment:Lcom/android/incallui/DialpadFragment;

    return-void
.end method

.method public setDialpadOpen(Z)V
    .locals 1
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/incallui/DialpadFragmentManager;->mIsDialpadOpen:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/DialpadFragmentManager;->checkAndSet(Z)Lcom/android/incallui/DialpadFragment;

    return-void
.end method

.method protected setFragment(Ljava/lang/Enum;Z)V
    .locals 4
    .param p1    # Ljava/lang/Enum;
    .param p2    # Z

    const v0, 0x7f0e0161

    const/4 v1, 0x0

    sget-object v2, Lcom/android/incallui/DialpadFragmentManager$1;->$SwitchMap$com$android$incallui$DialpadFragmentManager$DialpadMode:[I

    check-cast p1, Lcom/android/incallui/DialpadFragmentManager$DialpadMode;

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
    new-instance v1, Lcom/android/incallui/DialpadTwelveFragment;

    invoke-direct {v1}, Lcom/android/incallui/DialpadTwelveFragment;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/android/incallui/EasyDialpadTwelveFragment;

    invoke-direct {v1}, Lcom/android/incallui/EasyDialpadTwelveFragment;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/android/incallui/DialpadTwelveOneHandFragment;

    invoke-direct {v1}, Lcom/android/incallui/DialpadTwelveOneHandFragment;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
