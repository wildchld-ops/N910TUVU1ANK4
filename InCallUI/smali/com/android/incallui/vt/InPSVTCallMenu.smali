.class public Lcom/android/incallui/vt/InPSVTCallMenu;
.super Lcom/android/incallui/vt/InVTCallMenu;
.source "InPSVTCallMenu.java"


# instance fields
.field public isShowingResizeScreen:Z

.field private mDisableOutGoingMenu:Z

.field private mMenuSelected:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/incallui/vt/InVTCallMenu;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/vt/InPSVTCallMenu;->mMenuSelected:I

    iput-boolean v1, p0, Lcom/android/incallui/vt/InPSVTCallMenu;->mDisableOutGoingMenu:Z

    iput-boolean v1, p0, Lcom/android/incallui/vt/InPSVTCallMenu;->isShowingResizeScreen:Z

    const-string v0, "InPSVTCallMenu constructor..."

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;)V

    return-void
.end method

.method private canMerge()Z
    .locals 8

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const-string v7, "common_volte_in"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    :goto_0
    return v6

    :cond_0
    if-eqz v0, :cond_1

    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v2

    const/16 v7, 0x80

    invoke-virtual {v0, v7}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    const/4 v5, 0x1

    :cond_1
    :goto_1
    const-string v6, "ims_rcs"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->isRcsServiceAvailable()Z

    move-result v4

    or-int/2addr v5, v4

    :cond_2
    move v6, v5

    goto :goto_0

    :cond_3
    move v5, v6

    goto :goto_1
.end method

.method private getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;
    .locals 1

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    return-object v0
.end method

.method private manageHoldMenu(Landroid/view/MenuItem;)V
    .locals 14

    const v13, 0x7f090093

    const/4 v12, 0x7

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v4

    const/4 v0, 0x0

    if-eqz v5, :cond_0

    move-object v0, v5

    :goto_0
    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_0
    if-eqz v4, :cond_1

    move-object v0, v4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v10}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v2

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v3

    invoke-virtual {v0, v11}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(canHold)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(canSwap)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "supportHold)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;)V

    const-string v7, "feature_ctc"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v7

    if-ne v7, v11, :cond_3

    invoke-interface {p1, v9}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    :cond_3
    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v7

    if-ne v7, v12, :cond_4

    const v7, 0x7f09033f

    invoke-interface {p1, v7}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_2
    invoke-interface {p1, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_4
    invoke-interface {p1, v13}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2

    :cond_5
    if-eqz v3, :cond_6

    invoke-interface {p1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_6
    if-eqz v6, :cond_8

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v7

    if-ne v7, v12, :cond_7

    const v7, 0x7f09033f

    invoke-interface {p1, v7}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_3
    invoke-interface {p1, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_7
    invoke-interface {p1, v13}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_3

    :cond_8
    invoke-interface {p1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1
.end method

.method private manageSwapMenu(Landroid/view/MenuItem;)V
    .locals 6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v4, :cond_0

    move-object v0, v4

    :goto_0
    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_0
    if-eqz v3, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v2

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method private prepareOptionMenuForEasyMode(Landroid/view/Menu;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v6, "prepareOptionMenuForEasyMode..."

    invoke-virtual {p0, v6}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_1
    const v6, 0x7f0e032e

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v6, 0x7f0e032f

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/vt/InVTCallMenu;->isShowMe()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->mdmGetAllowCamera()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0, v7}, Lcom/android/incallui/vt/InPSVTCallMenu;->mdmIsCameraEnabled(Z)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_1
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_3
    return v8

    :pswitch_data_0
    .packed-switch 0x7f0e032e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showAddCall()Z
    .locals 9

    const/16 v8, 0x10

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v3, :cond_4

    invoke-virtual {v3, v8}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v2

    invoke-direct {p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->canMerge()Z

    move-result v8

    if-nez v8, :cond_3

    if-eqz v2, :cond_3

    move v5, v6

    :cond_0
    :goto_0
    const-string v7, "ims_rcs"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->isRcsServiceAvailable()Z

    move-result v4

    or-int/2addr v5, v4

    :cond_1
    const-string v7, "ims_rcs"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallMenu;->isCallDead(Lcom/android/services/telephony/common/Call;)Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallMenu;->isCallDead(Lcom/android/services/telephony/common/Call;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getDomain()I

    move-result v7

    if-ne v7, v6, :cond_2

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getDomain()I

    move-result v7

    if-ne v7, v6, :cond_2

    const/4 v5, 0x0

    :cond_2
    return v5

    :cond_3
    move v5, v7

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_0

    invoke-virtual {v0, v8}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v2

    invoke-direct {p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->canMerge()Z

    move-result v8

    if-nez v8, :cond_5

    if-eqz v2, :cond_5

    move v5, v6

    :goto_1
    goto :goto_0

    :cond_5
    move v5, v7

    goto :goto_1
.end method

.method private showMessageMenu()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "menu_message"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "in_call_menu_message_enable"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method mdmGetAllowCamera()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->getAllowCamera()Z

    move-result v0

    :cond_0
    return v0
.end method

.method mdmIsCameraEnabled(Z)Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->isCameraEnabled()Z

    move-result v0

    :cond_0
    return v0
.end method

.method protected optionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10

    const/16 v8, 0x191

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- optionsItemSelected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  title: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "optionsItemSelected("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), but null CallButtonPresenter.getInstance()!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v6}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;Z)V

    :goto_0
    return v7

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "optionsItemSelected:  unexpected View ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (MenuItem = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/vt/InVTCallMenu;->optionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v7

    goto :goto_0

    :sswitch_0
    const-string v4, "ims_video_camera_effect"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/vt/InVTCallMenu;->getPreviewEffectState()Lcom/android/incallui/vt/PreviewEffectState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/vt/PreviewEffectState;->isShowingEffect()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    :goto_1
    move v7, v6

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v4, v6}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showCameraEffectPanel(Z)V

    goto :goto_1

    :sswitch_1
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallButtonPresenter;->sendStillImage()V

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallButtonPresenter;->updateVTCallButtons()V

    goto :goto_1

    :sswitch_2
    const-string v4, "add_vt_hold_in_menu"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallButtonPresenter;->toggleHold()V

    goto :goto_1

    :sswitch_3
    const-string v4, "add_vt_swap_in_menu"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->swapClicked()V

    goto :goto_1

    :sswitch_4
    invoke-direct {p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/vt/VideoCallManager;->isCameraRestricted()Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f090149

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->showToastShort(I)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallButtonPresenter;->sendLiveVideo()V

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallButtonPresenter;->updateVTCallButtons()V

    goto :goto_1

    :sswitch_5
    const-string v4, "prohibit_candid_shot"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/incallui/vt/InPSVTCallMenu$1;

    invoke-direct {v5, p0}, Lcom/android/incallui/vt/InPSVTCallMenu$1;-><init>(Lcom/android/incallui/vt/InPSVTCallMenu;)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/incallui/CallButtonPresenter;->captureSurfaceImage(Z)V

    goto/16 :goto_1

    :sswitch_6
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/incallui/CallButtonPresenter;->dialpadClicked(Z)V

    if-eqz v1, :cond_1

    const-string v4, "QCIF"

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->getFrameSize(Lcom/android/services/telephony/common/Call;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v5}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->isDialpadVisible()Z

    move-result v5

    if-nez v5, :cond_5

    move v5, v6

    :goto_2
    invoke-interface {v4, v5}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setVisibleCameraPreview(Z)V

    goto/16 :goto_1

    :cond_5
    move v5, v7

    goto :goto_2

    :sswitch_7
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallButtonPresenter;->showAddUserForConferenceCall()V

    goto/16 :goto_1

    :sswitch_8
    const-string v4, "ims_resize_screen"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/incallui/CallCardPresenter;->setResizeChecked(Z)V

    const-string v4, "isShowingResizeScreen changed true"

    invoke-virtual {p0, v4}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;)V

    invoke-interface {v0, v8, v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->changeVideoLocation(IZ)V

    goto/16 :goto_1

    :sswitch_9
    const-string v4, "ims_resize_screen"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/incallui/CallCardPresenter;->setResizeChecked(Z)V

    const-string v4, "isShowingResizeScreen changed false"

    invoke-virtual {p0, v4}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;)V

    invoke-interface {v0, v8, v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->changeVideoLocation(IZ)V

    goto/16 :goto_1

    :sswitch_a
    const-string v4, "support_onehand_operation"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOnehandModeOn()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v7}, Lcom/android/incallui/InCallUtils;->putOneHandEnabled(I)V

    :cond_6
    :goto_3
    :sswitch_b
    const-string v4, "ims_video_call_mediashare"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->startMediaShare()V

    goto/16 :goto_1

    :cond_7
    invoke-static {v6}, Lcom/android/incallui/InCallUtils;->putOneHandEnabled(I)V

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x7f0e003f -> :sswitch_3
        0x7f0e032e -> :sswitch_1
        0x7f0e032f -> :sswitch_4
        0x7f0e0338 -> :sswitch_6
        0x7f0e0345 -> :sswitch_2
        0x7f0e0347 -> :sswitch_0
        0x7f0e0348 -> :sswitch_5
        0x7f0e0349 -> :sswitch_8
        0x7f0e034a -> :sswitch_9
        0x7f0e0354 -> :sswitch_a
        0x7f0e0355 -> :sswitch_a
        0x7f0e0356 -> :sswitch_7
        0x7f0e0357 -> :sswitch_b
    .end sparse-switch
.end method

.method protected prepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 39

    const-string v36, "prepareOptionsMenu()..."

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v27

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v14

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v36

    if-eqz v36, :cond_1

    if-eqz v3, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/vt/InPSVTCallMenu;->prepareOptionMenuForEasyMode(Landroid/view/Menu;)Z

    move-result v36

    :goto_0
    return v36

    :cond_0
    const/16 v36, 0x0

    goto :goto_0

    :cond_1
    const-string v36, "ims_ui_for_kor"

    invoke-static/range {v36 .. v36}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_4

    if-eqz v3, :cond_2

    invoke-super/range {p0 .. p1}, Lcom/android/incallui/vt/InVTCallMenu;->prepareOptionsMenu(Landroid/view/Menu;)Z

    :cond_2
    :goto_1
    const/4 v13, 0x0

    :goto_2
    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->size()I

    move-result v36

    move/from16 v0, v36

    if-ge v13, v0, :cond_45

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Landroid/view/MenuItem;->getItemId()I

    move-result v21

    sparse-switch v21, :sswitch_data_0

    :cond_3
    :goto_3
    :sswitch_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_4
    invoke-super/range {p0 .. p1}, Lcom/android/incallui/vt/InVTCallMenu;->prepareOptionsMenu(Landroid/view/Menu;)Z

    goto :goto_1

    :sswitch_1
    const v36, 0x7f0e0347

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const-string v36, "ims_video_camera_effect"

    invoke-static/range {v36 .. v36}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_8

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v36

    if-eqz v36, :cond_6

    :cond_5
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/vt/InVTCallMenu;->isShowMe()Z

    move-result v36

    if-eqz v36, :cond_7

    const/16 v36, 0x1

    move/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_3

    :cond_6
    const/16 v36, 0x1

    move/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    :cond_7
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_3

    :cond_8
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    :sswitch_2
    const v36, 0x7f0e0344

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const v36, 0x7f020507

    move/from16 v0, v36

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const-string v36, "att_volte_ui"

    invoke-static/range {v36 .. v36}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_9

    const-string v36, "common_volte_in"

    invoke-static/range {v36 .. v36}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_b

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->showAddCall()Z

    move-result v36

    if-eqz v36, :cond_a

    const/16 v36, 0x1

    move/from16 v0, v36

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    :cond_a
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_b
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_3
    const v36, 0x7f0e0345

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const-string v36, "add_vt_hold_in_menu"

    invoke-static/range {v36 .. v36}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_c

    const-string v36, "vzw_volte_ui"

    invoke-static/range {v36 .. v36}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_c

    const v36, 0x7f0203bf

    move/from16 v0, v36

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v36, 0x7f090093

    move/from16 v0, v36

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/incallui/vt/InPSVTCallMenu;->manageHoldMenu(Landroid/view/MenuItem;)V

    goto/16 :goto_3

    :cond_c
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_4
    const v36, 0x7f0e003f

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v35

    const-string v36, "add_vt_swap_in_menu"

    invoke-static/range {v36 .. v36}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_d

    const v36, 0x7f0203df

    invoke-interface/range {v35 .. v36}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v36, 0x7f09009e

    invoke-interface/range {v35 .. v36}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/incallui/vt/InPSVTCallMenu;->manageSwapMenu(Landroid/view/MenuItem;)V

    goto/16 :goto_3

    :cond_d
    const/16 v36, 0x0

    invoke-interface/range {v35 .. v36}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_5
    const v36, 0x7f0e032e

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const v36, 0x7f0e032f

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v29

    if-eqz v3, :cond_3

    const-string v36, "vzw_volte_ui"

    invoke-static/range {v36 .. v36}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_e

    const-string v36, "att_volte_ui"

    invoke-static/range {v36 .. v36}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_e

    const-string v36, "tmo_volte_ui"

    invoke-static/range {v36 .. v36}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_f

    :cond_e
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v36, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/vt/InVTCallMenu;->isShowMe()Z

    move-result v36

    if-eqz v36, :cond_13

    const/16 v36, 0x1

    move/from16 v0, v36

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v36, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->mdmGetAllowCamera()Z

    move-result v36

    if-eqz v36, :cond_10

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/incallui/vt/InPSVTCallMenu;->mdmIsCameraEnabled(Z)Z

    move-result v36

    if-nez v36, :cond_11

    :cond_10
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_11
    const-string v36, "volte_jpn_ui"

    invoke-static/range {v36 .. v36}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_3

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/android/incallui/CallCardPresenter;->isCameraFailed()Z

    move-result v36

    if-eqz v36, :cond_12

    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_12
    const/16 v36, 0x1

    move/from16 v0, v36

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_13
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v36, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const-string v36, "volte_jpn_ui"

    invoke-static/range {v36 .. v36}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_3

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/android/incallui/CallCardPresenter;->isCameraFailed()Z

    move-result v36

    if-eqz v36, :cond_14

    const/16 v36, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_14
    const/16 v36, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_6
    const/16 v30, 0x0

    const-string v36, "ims_video_outgoing_image_picture"

    invoke-static/range {v36 .. v36}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_18

    if-nez v3, :cond_15

    if-nez v14, :cond_15

    if-eqz v27, :cond_17

    :cond_15
    const/16 v30, 0x1

    :goto_5
    if-eqz v30, :cond_3

    const v36, 0x7f0e0332

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v26

    const-string v36, "vzw_volte_ui"

    invoke-static/range {v36 .. v36}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_16

    const-string v36, "att_volte_ui"

    invoke-static/range {v36 .. v36}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_16

    const-string v36, "tmo_volte_ui"

    invoke-static/range {v36 .. v36}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_1a

    :cond_16
    const/16 v36, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_17
    const/16 v30, 0x0

    goto :goto_5

    :cond_18
    if-eqz v3, :cond_19

    const/16 v30, 0x1

    :goto_6
    goto :goto_5

    :cond_19
    const/16 v30, 0x0

    goto :goto_6

    :cond_1a
    const-string v36, "ims_ui_for_kor"

    invoke-static/range {v36 .. v36}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_1b

    const v36, 0x7f090154

    move-object/from16 v0, v26

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_1b
    const/16 v36, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/vt/InVTCallMenu;->isShowMe()Z

    move-result v36

    if-eqz v36, :cond_1d

    const/16 v36, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_7
    const-string v36, "volte_jpn_ui"

    invoke-static/range {v36 .. v36}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_3

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/android/incallui/CallCardPresenter;->isCameraFailed()Z

    move-result v36

    if-nez v36, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/vt/InVTCallMenu;->isShowMe()Z

    move-result v36

    if-nez v36, :cond_1e

    :cond_1c
    const/16 v36, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_1d
    const/16 v36, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_7

    :cond_1e
    const/16 v36, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_7
    if-eqz v3, :cond_3

    const v36, 0x7f0e0348

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_1f

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v36

    if-nez v36, :cond_1f

    const-string v36, "vzw_volte_ui"

    invoke-static/range {v36 .. v36}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_1f

    const-string v36, "att_volte_ui"

    invoke-static/range {v36 .. v36}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_1f

    const-string v36, "tmo_volte_ui"

    invoke-static/range {v36 .. v36}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_20

    :cond_1f
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_8
    const-string v36, "volte_jpn_ui"

    invoke-static/range {v36 .. v36}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_3

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/android/incallui/CallCardPresenter;->isCameraFailed()Z

    move-result v36

    if-eqz v36, :cond_22

    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_20
    const/16 v36, 0x1

    move/from16 v0, v36

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/android/incallui/vt/VideoCallManager;->isFarFrameReady()Z

    move-result v36

    if-eqz v36, :cond_21

    const/16 v36, 0x1

    move/from16 v0, v36

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_8

    :cond_21
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_8

    :cond_22
    const/16 v36, 0x1

    move/from16 v0, v36

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_8
    if-eqz v3, :cond_3

    const v36, 0x7f0e0337

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v24

    const-string v36, "use_snote_string"

    invoke-static/range {v36 .. v36}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_24

    const v36, 0x7f09010a

    move-object/from16 v0, v24

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_23
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v36

    if-eqz v36, :cond_26

    const/16 v36, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_24
    const-string v36, "use_action_memo_string"

    invoke-static/range {v36 .. v36}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_25

    const-string v36, "use_action_memo_duringcall"

    invoke-static/range {v36 .. v36}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_23

    const-string v36, "com.samsung.android.snote"

    invoke-static/range {v36 .. v36}, Lcom/android/incallui/InCallUtils;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_23

    :cond_25
    const v36, 0x7f09010e

    move-object/from16 v0, v24

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_9

    :cond_26
    const-string v36, "in_call_menu_memo_enable"

    invoke-static/range {v36 .. v36}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v36

    move-object/from16 v0, v24

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_9
    if-eqz v3, :cond_3

    const v36, 0x7f0e0082

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v25

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->showMessageMenu()Z

    move-result v36

    if-eqz v36, :cond_27

    const/16 v36, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_27
    const/16 v36, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_a
    if-eqz v3, :cond_3

    const v36, 0x7f0e0338

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v36

    if-eqz v36, :cond_28

    const/16 v36, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_28
    const/16 v36, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/vt/InVTCallMenu;->isDialerOpened()Z

    move-result v36

    if-eqz v36, :cond_29

    const v36, 0x7f02057b

    move-object/from16 v0, v22

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v36, 0x7f09015d

    move-object/from16 v0, v22

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_29
    const v36, 0x7f02057d

    move-object/from16 v0, v22

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v36, 0x7f090176

    move-object/from16 v0, v22

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_b
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/android/incallui/CallButtonPresenter;->isIncomingVTSperkerMode()Z

    move-result v36

    if-nez v36, :cond_2b

    const/16 v19, 0x1

    :goto_a
    const v36, 0x7f0e0339

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    const v36, 0x7f0e033a

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v33

    const-string v36, "no_receiver_in_call"

    invoke-static/range {v36 .. v36}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_2a

    const-string v36, "vzw_volte_ui"

    invoke-static/range {v36 .. v36}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_2c

    :cond_2a
    const/16 v36, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v36, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_2b
    const/16 v19, 0x0

    goto :goto_a

    :cond_2c
    if-eqz v19, :cond_2e

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v36

    sget v37, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_2d

    const/16 v36, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v36, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v36, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_2d
    const/16 v36, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v36, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v36, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_2e
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v36

    sget v37, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-virtual/range {v36 .. v37}, Lcom/android/incallui/CallButtonPresenter;->isSupported(I)Z

    move-result v36

    if-nez v36, :cond_2f

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v36

    sget v37, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    invoke-virtual/range {v36 .. v37}, Lcom/android/incallui/CallButtonPresenter;->isSupported(I)Z

    move-result v36

    if-eqz v36, :cond_30

    :cond_2f
    const/4 v8, 0x1

    :goto_b
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/android/incallui/CallButtonPresenter;->getIncomingVTSpeakerState()Z

    move-result v36

    if-eqz v36, :cond_31

    const/16 v36, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v36, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v36, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_c
    if-eqz v8, :cond_3

    const/16 v36, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/16 v36, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_30
    const/4 v8, 0x0

    goto :goto_b

    :cond_31
    const/16 v36, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v36, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v36, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_c

    :sswitch_c
    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v36

    sget v37, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-virtual/range {v36 .. v37}, Lcom/android/incallui/CallButtonPresenter;->isAudio(I)Z

    move-result v36

    if-eqz v36, :cond_32

    const v36, 0x7f0e033b

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v36

    const/16 v37, 0x0

    invoke-interface/range {v36 .. v37}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v36, 0x7f0e033c

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v36

    const/16 v37, 0x1

    invoke-interface/range {v36 .. v37}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_32
    const v36, 0x7f0e033b

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v36

    const/16 v37, 0x1

    invoke-interface/range {v36 .. v37}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v36, 0x7f0e033c

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v36

    const/16 v37, 0x0

    invoke-interface/range {v36 .. v37}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_d
    const v36, 0x7f0e0356

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const-string v36, "ims_conference_call"

    invoke-static/range {v36 .. v36}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_36

    const-string v36, "feature_lgt"

    invoke-static/range {v36 .. v36}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_35

    if-eqz v3, :cond_33

    const/16 v36, 0x200

    move/from16 v0, v36

    invoke-virtual {v3, v0}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v36

    if-eqz v36, :cond_33

    const/4 v15, 0x1

    :goto_d
    if-eqz v15, :cond_34

    const/16 v36, 0x1

    move/from16 v0, v36

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v36, 0x1

    move/from16 v0, v36

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_33
    const/4 v15, 0x0

    goto :goto_d

    :cond_34
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_35
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_36
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_e
    const/16 v17, 0x0

    const/16 v28, 0x0

    const/4 v10, 0x0

    const-string v36, "ims_resize_screen"

    invoke-static/range {v36 .. v36}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_3a

    if-eqz v3, :cond_3a

    const-string v36, "QCIF"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_37

    const-string v36, "VGA"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_3a

    :cond_37
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v36

    if-nez v36, :cond_3a

    const/16 v17, 0x1

    :goto_e
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/android/incallui/vt/VideoCallManager;->isFarFrameReady()Z

    move-result v36

    if-eqz v36, :cond_38

    const/4 v10, 0x1

    :cond_38
    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/android/incallui/CallCardPresenter;->getResizeChecked()Z

    move-result v36

    if-eqz v36, :cond_39

    const/16 v28, 0x1

    :cond_39
    const v36, 0x7f0e034a

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v31

    const v36, 0x7f0e0349

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v32

    if-eqz v17, :cond_3b

    if-eqz v28, :cond_3b

    const/16 v36, 0x1

    :goto_f
    move-object/from16 v0, v31

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-eqz v17, :cond_3c

    if-eqz v28, :cond_3c

    if-eqz v10, :cond_3c

    const/16 v36, 0x1

    :goto_10
    move-object/from16 v0, v31

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    if-eqz v17, :cond_3d

    if-nez v28, :cond_3d

    const/16 v36, 0x1

    :goto_11
    move-object/from16 v0, v32

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-eqz v17, :cond_3e

    if-nez v28, :cond_3e

    if-eqz v10, :cond_3e

    const/16 v36, 0x1

    :goto_12
    move-object/from16 v0, v32

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_3a
    const/16 v17, 0x0

    goto :goto_e

    :cond_3b
    const/16 v36, 0x0

    goto :goto_f

    :cond_3c
    const/16 v36, 0x0

    goto :goto_10

    :cond_3d
    const/16 v36, 0x0

    goto :goto_11

    :cond_3e
    const/16 v36, 0x0

    goto :goto_12

    :sswitch_f
    const/16 v18, 0x0

    const-string v36, "support_onehand_operation"

    invoke-static/range {v36 .. v36}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string v37, "any_screen_running"

    const/16 v38, 0x0

    invoke-static/range {v36 .. v38}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_41

    const-string v36, "SeparateSetting"

    const-string v37, "UnifiedSetting"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_41

    if-eqz v3, :cond_41

    const-string v36, "QCIF"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_3f

    const-string v36, "VGA"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_41

    :cond_3f
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v36

    if-nez v36, :cond_41

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isHDVideoQvgaLandCall()Z

    move-result v36

    if-nez v36, :cond_41

    const/16 v18, 0x1

    :cond_40
    :goto_13
    if-eqz v18, :cond_43

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOnehandModeOn()Z

    move-result v16

    if-eqz v16, :cond_42

    const v36, 0x7f0e0354

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v36

    const/16 v37, 0x0

    invoke-interface/range {v36 .. v37}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v36, 0x7f0e0355

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v36

    const/16 v37, 0x1

    invoke-interface/range {v36 .. v37}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_14
    const v36, 0x7f0e0354

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v36

    const/16 v37, 0x1

    invoke-interface/range {v36 .. v37}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v36, 0x7f0e0355

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v36

    const/16 v37, 0x1

    invoke-interface/range {v36 .. v37}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_41
    const/16 v18, 0x0

    goto :goto_13

    :cond_42
    const v36, 0x7f0e0354

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v36

    const/16 v37, 0x1

    invoke-interface/range {v36 .. v37}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v36, 0x7f0e0355

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v36

    const/16 v37, 0x0

    invoke-interface/range {v36 .. v37}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_14

    :cond_43
    const v36, 0x7f0e0354

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v36

    const/16 v37, 0x0

    invoke-interface/range {v36 .. v37}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v36, 0x7f0e0355

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v36

    const/16 v37, 0x0

    invoke-interface/range {v36 .. v37}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_10
    const-string v36, "ims_video_call_mediashare"

    invoke-static/range {v36 .. v36}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMediaSharePossible()Z

    move-result v36

    if-eqz v36, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isActiveHDVideoCall()Z

    move-result v36

    if-eqz v36, :cond_3

    const v36, 0x7f0e0357

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v23

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMediaShareEnabled()Z

    move-result v36

    if-eqz v36, :cond_44

    const/16 v36, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/16 v36, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_44
    const/16 v36, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/16 v36, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_45
    const/16 v36, 0x1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e003f -> :sswitch_4
        0x7f0e0082 -> :sswitch_9
        0x7f0e032e -> :sswitch_0
        0x7f0e032f -> :sswitch_5
        0x7f0e0332 -> :sswitch_6
        0x7f0e0337 -> :sswitch_8
        0x7f0e0338 -> :sswitch_a
        0x7f0e0339 -> :sswitch_0
        0x7f0e033a -> :sswitch_b
        0x7f0e033b -> :sswitch_0
        0x7f0e033c -> :sswitch_c
        0x7f0e0344 -> :sswitch_2
        0x7f0e0345 -> :sswitch_3
        0x7f0e0347 -> :sswitch_1
        0x7f0e0348 -> :sswitch_7
        0x7f0e0349 -> :sswitch_e
        0x7f0e034a -> :sswitch_0
        0x7f0e0354 -> :sswitch_f
        0x7f0e0355 -> :sswitch_f
        0x7f0e0356 -> :sswitch_d
        0x7f0e0357 -> :sswitch_10
    .end sparse-switch
.end method

.method public swapClicked()V
    .locals 2

    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getSimIdToDisplay()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCommandClient;->swapMultiSim(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->swap()V

    goto :goto_0
.end method
