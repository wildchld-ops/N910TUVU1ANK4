.class public Lcom/android/incallui/InCallMenu;
.super Ljava/lang/Object;
.source "InCallMenu.java"


# static fields
.field private static ONE_HAND_ENABLED:Ljava/lang/String;


# instance fields
.field private mChatOnID:Ljava/lang/String;

.field private mContactIdForChatOn:I

.field protected mContext:Landroid/content/Context;

.field private mIsMenuOpen:Z

.field private mParticipantUri:Ljava/lang/String;

.field private menu:Landroid/view/Menu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "onehand_dialer_enabled"

    sput-object v0, Lcom/android/incallui/InCallMenu;->ONE_HAND_ENABLED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/incallui/InCallMenu;->mChatOnID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/InCallMenu;->mParticipantUri:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/InCallMenu;->mContactIdForChatOn:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallMenu;->mIsMenuOpen:Z

    const-string v0, "InCallMenu constructor..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    return-void
.end method

.method private IsActiveRcsFT()Z
    .locals 10

    const/4 v8, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v7

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v6

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/android/incallui/rcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-static {v9, v0}, Lcom/android/incallui/rcs/RcsShareUI;->generateTelUri(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallMenu;->mParticipantUri:Ljava/lang/String;

    sget-object v0, Lcom/android/services/telephony/common/RcsTransferConstants;->SIP_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallMenu;->mParticipantUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/services/telephony/common/RcsTransferConstants;->INCALL_SERVICE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    :cond_0
    if-eqz v3, :cond_1

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez v7, :cond_4

    move-object v0, v6

    :goto_0
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v3}, Lcom/android/incallui/rcs/RcsShareUI;->isRcsFTAvailable(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    const-string v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-static {v0, v1}, Lcom/android/incallui/rcs/RcsShareUI;->IsOwnCapable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    move v8, v0

    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    return v8

    :cond_3
    move v0, v8

    goto :goto_1

    :cond_4
    move-object v0, v7

    goto :goto_0
.end method

.method private canCallTransfer()Z
    .locals 7

    const/16 v6, 0x1000

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const-string v4, "support_call_transfer"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallMenu;->isCallDead(Lcom/android/services/telephony/common/Call;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallMenu;->isCallDead(Lcom/android/services/telephony/common/Call;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "feature_kor"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "common_volte_hk"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getDomain()I

    move-result v4

    if-ne v4, v5, :cond_2

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getDomain()I

    move-result v4

    if-ne v4, v5, :cond_2

    invoke-virtual {v2, v6}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v3

    :cond_1
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v6}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v3

    goto :goto_0
.end method

.method private canManagerConference()Z
    .locals 6

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v2

    const/16 v5, 0x80

    invoke-virtual {v0, v5}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v3

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v3, :cond_1

    const/4 v4, 0x1

    :cond_0
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private canMerge()Z
    .locals 7

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v2

    const/16 v6, 0x80

    invoke-virtual {v0, v6}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_2

    const/4 v5, 0x1

    :cond_0
    :goto_0
    const-string v6, "ims_rcs"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->isRcsServiceAvailable()Z

    move-result v4

    or-int/2addr v5, v4

    :cond_1
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private getCallSettingsIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private handleMenuSettings()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->openTelephonySetting()V

    return-void
.end method

.method private handleOneHandMode()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "support_onehand_operation"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/incallui/InCallMenu;->ONE_HAND_ENABLED:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/incallui/InCallMenu;->ONE_HAND_ENABLED:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getIncallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->updateFragmentforModificationInitiated()V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/InCallMenu;->ONE_HAND_ENABLED:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private isManageConferencePanelVisible()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->isManageConferencePanelVisible()Z

    move-result v0

    return v0
.end method

.method private launchChatON()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/incallui/InCallMenu;->mChatOnID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "launchChatON() : mChatOnID is null"

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "launchChatON "

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private launchMemo(Landroid/content/Context;)V
    .locals 3

    const-string v0, "use_action_memo_duringcall"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.samsung.android.snote"

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->launchMemoClicked()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "com.samsung.android.app.memo"

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->launchDuringCallMemoCliked()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSamsungAppsPackageInstalled()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f090109

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/incallui/InCallUtils;->showDownloadAppDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getIncallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f090202

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private launchRcsFileTransfer()V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs"

    const-string v2, "com.samsung.rcs.filetransfer.TransferContentActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.filetransfer.action.FILE_TRANSFER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/incallui/InCallMenu;->mParticipantUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getIncallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, 0x7f0901bc

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FT Failed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "InCallMenu"

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "InCallMenu"

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private makeRequestRemoteControl()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "samsung.intent.action.scsservice"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "master"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private manageHoldMenu(Landroid/view/MenuItem;)V
    .locals 10

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v5

    const/4 v0, 0x0

    if-eqz v6, :cond_1

    move-object v0, v6

    :goto_0
    if-nez v0, :cond_3

    :cond_0
    :goto_1
    return-void

    :cond_1
    if-eqz v5, :cond_2

    move-object v0, v5

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v2

    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v3

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v7

    iget-object v8, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/incallui/ContactInfoCache;->getInfo(I)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v4

    const-string v8, "feature_chn_cdma_call"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    const/4 v8, 0x0

    invoke-interface {p1, v8}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    :cond_4
    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v8

    const/4 v9, 0x7

    if-ne v8, v9, :cond_6

    const v8, 0x7f09033f

    invoke-interface {p1, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_2
    const/4 v8, 0x1

    invoke-interface {p1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const-string v8, "dcm_disable_call_hold_in_emergency"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-boolean v8, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    if-eqz v8, :cond_7

    const/4 v8, 0x0

    invoke-interface {p1, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_3
    const-string v8, "att_volte_ui"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "feature_tmo"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_5
    iget-boolean v8, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    invoke-interface {p1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_6
    const v8, 0x7f090093

    invoke-interface {p1, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2

    :cond_7
    const-string v8, "feature_dcm"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallButtonPresenter;->isSwitchingCall()Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x0

    invoke-interface {p1, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_3

    :cond_8
    const/4 v8, 0x1

    invoke-interface {p1, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_3

    :cond_9
    if-eqz v3, :cond_a

    const/4 v8, 0x0

    invoke-interface {p1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_a
    if-eqz v7, :cond_c

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v8

    const/4 v9, 0x7

    if-ne v8, v9, :cond_b

    const v8, 0x7f09033f

    invoke-interface {p1, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_4
    const/4 v8, 0x1

    invoke-interface {p1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v8, 0x0

    invoke-interface {p1, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_b
    const v8, 0x7f090093

    invoke-interface {p1, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_4

    :cond_c
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1
.end method

.method private openTelephonySetting()V
    .locals 2

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->getCallSettingsIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private prepareOptionMenuForEasyMode(Landroid/view/Menu;)Z
    .locals 14

    const v13, 0x7f020501

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v9

    if-ge v5, v9, :cond_5

    invoke-interface {p1, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :pswitch_0
    const v9, 0x7f0e0366

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f0e0365

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    const v9, 0x7f020514

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v9, 0x7f020515

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const-string v9, "mute_menu_in_easy_mode"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v3

    if-nez v3, :cond_0

    move v9, v10

    :goto_2
    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v7, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_0
    move v9, v11

    goto :goto_2

    :cond_1
    invoke-interface {v8, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v7, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :pswitch_1
    const v9, 0x7f0e0363

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v9, 0x7f0e0364

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v1, v13}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-interface {v0, v13}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const-string v9, "bt_menu_in_easy_mode"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v9

    sget v12, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-virtual {v9, v12}, Lcom/android/incallui/CallButtonPresenter;->isSupported(I)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v9

    sget v12, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-virtual {v9, v12}, Lcom/android/incallui/CallButtonPresenter;->isAudio(I)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-nez v2, :cond_2

    move v9, v10

    :goto_3
    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    move v9, v11

    goto :goto_3

    :cond_3
    invoke-interface {v1, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_4
    invoke-interface {v1, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_5
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0363
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showAddCall()Z
    .locals 9

    const/16 v8, 0x10

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v3, :cond_4

    invoke-virtual {v3, v8}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v2

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->canMerge()Z

    move-result v8

    if-nez v8, :cond_3

    if-eqz v2, :cond_3

    move v5, v6

    :cond_0
    :goto_0
    const-string v7, "voice_call_recording"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "voice_call_recording_menu"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    :goto_1
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

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->canMerge()Z

    move-result v8

    if-nez v8, :cond_5

    if-eqz v2, :cond_5

    move v5, v6

    :goto_2
    goto :goto_0

    :cond_5
    move v5, v7

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private showChatOnMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private showContactMenu()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "in_call_menu_contact_enable"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
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
.method public getDefaultSimForVoiceCalls()I
    .locals 2

    const-string v0, "persist.radio.calldefault.simid"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isCallDead(Lcom/android/services/telephony/common/Call;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    if-eq v1, v0, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMenuOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/InCallMenu;->mIsMenuOpen:Z

    return v0
.end method

.method public mergeClicked()V
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

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCommandClient;->mergeMultiSim(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->merge()V

    goto :goto_0
.end method

.method public muteClicked(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "turning on mute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallCommandClient;->mute(Z)V

    return-void
.end method

.method protected optionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- optionsItemSelected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  title: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    const-string v3, "ims_rcs"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/android/incallui/rcs/RcsShareUI;->unRegisterRcsObserver(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "optionsItemSelected("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), but null mContext!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;Z)V

    :goto_0
    return v1

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    const-string v2, "InCallMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "optionsItemSelected:  unexpected View ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (MenuItem = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_0
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->manageConferenceButtonClicked()V

    :goto_1
    move v1, v2

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->addCallClicked()V

    goto :goto_1

    :sswitch_2
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->launchContactsClicked()V

    goto :goto_1

    :sswitch_3
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->launchMessageClicked()V

    goto :goto_1

    :sswitch_4
    iget-object v1, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/incallui/InCallMenu;->launchMemo(Landroid/content/Context;)V

    goto :goto_1

    :sswitch_5
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->toggleRecord()V

    goto :goto_1

    :sswitch_6
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->toggleHold()V

    goto :goto_1

    :sswitch_7
    invoke-virtual {p0}, Lcom/android/incallui/InCallMenu;->swapClicked()V

    goto :goto_1

    :sswitch_8
    invoke-static {}, Lcom/android/incallui/SoundEffect;->toggleExtraVolBtn()V

    goto :goto_1

    :sswitch_9
    invoke-static {}, Lcom/android/incallui/SoundEffect;->toggleNoiseReduction()V

    goto :goto_1

    :sswitch_a
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->goSoundEQDialog()V

    goto :goto_1

    :sswitch_b
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->launchChatON()V

    goto :goto_1

    :sswitch_c
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->launchRcsFileTransfer()V

    goto :goto_1

    :sswitch_d
    invoke-virtual {p0}, Lcom/android/incallui/InCallMenu;->performSimServices()V

    goto :goto_1

    :sswitch_e
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.samsung.bst.uimdual"

    const-string v4, "com.samsung.bst.uimdual.RegisterCardInfo"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :sswitch_f
    invoke-virtual {p0}, Lcom/android/incallui/InCallMenu;->performCallTransfer()V

    goto :goto_1

    :sswitch_10
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->toggleBluetooth()V

    goto :goto_1

    :sswitch_11
    invoke-virtual {p0}, Lcom/android/incallui/InCallMenu;->mergeClicked()V

    goto :goto_1

    :sswitch_12
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->handleOneHandMode()V

    goto/16 :goto_1

    :sswitch_13
    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallMenu;->muteClicked(Z)V

    goto/16 :goto_1

    :sswitch_14
    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallMenu;->muteClicked(Z)V

    goto/16 :goto_1

    :sswitch_15
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->makeRequestRemoteControl()V

    goto/16 :goto_1

    :sswitch_16
    const-string v1, " Menu : Select camera on"

    invoke-direct {p0, v1}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_17
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->showAddUserForConferenceCall()V

    goto/16 :goto_1

    :sswitch_18
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->handleMenuSettings()V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e002f -> :sswitch_6
        0x7f0e0030 -> :sswitch_7
        0x7f0e0039 -> :sswitch_0
        0x7f0e0082 -> :sswitch_3
        0x7f0e0105 -> :sswitch_8
        0x7f0e0337 -> :sswitch_4
        0x7f0e0343 -> :sswitch_11
        0x7f0e0344 -> :sswitch_1
        0x7f0e035b -> :sswitch_f
        0x7f0e035c -> :sswitch_2
        0x7f0e035d -> :sswitch_5
        0x7f0e035e -> :sswitch_5
        0x7f0e035f -> :sswitch_a
        0x7f0e0360 -> :sswitch_9
        0x7f0e0361 -> :sswitch_b
        0x7f0e0362 -> :sswitch_c
        0x7f0e0363 -> :sswitch_10
        0x7f0e0364 -> :sswitch_10
        0x7f0e0365 -> :sswitch_13
        0x7f0e0366 -> :sswitch_14
        0x7f0e0367 -> :sswitch_12
        0x7f0e0368 -> :sswitch_d
        0x7f0e0369 -> :sswitch_e
        0x7f0e036a -> :sswitch_16
        0x7f0e036b -> :sswitch_17
        0x7f0e036c -> :sswitch_15
        0x7f0e036d -> :sswitch_18
    .end sparse-switch
.end method

.method public performCallTransfer()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performCallTransfer, callId =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallCommandClient;->explicitCallTransfer(I)V

    :cond_0
    return-void
.end method

.method public performSimServices()V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    const-string v1, "feature_chn_duos_gsm_gsm"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getSimIdToDisplay()I

    move-result v1

    if-ne v1, v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.stk.start_main_activity2"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.stk.start_main_activity"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ril.MSIMM"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isChiaUnicom()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.stk.start_main_activity"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.stk.start_main_activity"

    invoke-virtual {p0}, Lcom/android/incallui/InCallMenu;->getDefaultSimForVoiceCalls()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.stk.start_main_activity"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected prepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 50

    const-string v47, "prepareOptionsMenu()..."

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    const-string v47, "ims_rcs"

    invoke-static/range {v47 .. v47}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_0

    const/16 v47, 0x2

    invoke-static/range {v47 .. v47}, Lcom/android/incallui/rcs/RcsShareUI;->registerRcsObserver(I)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/InCallMenu;->menu:Landroid/view/Menu;

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v33

    invoke-virtual {v10}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v4

    const/4 v9, 0x0

    if-eqz v33, :cond_3

    move-object/from16 v9, v33

    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    invoke-static {v10}, Lcom/android/incallui/InCallPresenter;->getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v17

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v47

    if-eqz v47, :cond_4

    const/16 v36, 0x0

    const-string v47, "mute_menu_in_easy_mode"

    invoke-static/range {v47 .. v47}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v47

    if-nez v47, :cond_1

    const-string v47, "bt_menu_in_easy_mode"

    invoke-static/range {v47 .. v47}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_2

    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/InCallMenu;->prepareOptionMenuForEasyMode(Landroid/view/Menu;)Z

    move-result v36

    :cond_2
    :goto_1
    return v36

    :cond_3
    move-object v9, v4

    goto :goto_0

    :cond_4
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->isImsRegisteredOverWifi(Landroid/content/ContentResolver;)Z

    move-result v19

    const/16 v20, 0x0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v47

    const-string v48, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual/range {v47 .. v48}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/android/incallui/VoWifiStateTracker;->getInstance(Landroid/content/Context;)Lcom/android/incallui/VoWifiStateTracker;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Lcom/android/incallui/VoWifiStateTracker;->isInActiveVoWiFiCall()Z

    move-result v20

    :cond_5
    const/16 v16, 0x0

    :goto_2
    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->size()I

    move-result v47

    move/from16 v0, v16

    move/from16 v1, v47

    if-ge v0, v1, :cond_3a

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v47

    invoke-interface/range {v47 .. v47}, Landroid/view/MenuItem;->getItemId()I

    move-result v21

    sparse-switch v21, :sswitch_data_0

    :cond_6
    :goto_3
    :sswitch_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :sswitch_1
    const v47, 0x7f0e0366

    move-object/from16 v0, p1

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v29

    const v47, 0x7f0e0365

    move-object/from16 v0, p1

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v28

    const/16 v47, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v47, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    :sswitch_2
    const v47, 0x7f0e035c

    move-object/from16 v0, p1

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    const v47, 0x7f020516

    move-object/from16 v0, v22

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/InCallMenu;->showContactMenu()Z

    move-result v47

    if-eqz v47, :cond_7

    const/16 v47, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    :cond_7
    const/16 v47, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    :sswitch_3
    const v47, 0x7f0e0343

    move-object/from16 v0, p1

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v26

    const v47, 0x7f020528

    move-object/from16 v0, v26

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v47, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    :sswitch_4
    const v47, 0x7f0e0039

    move-object/from16 v0, p1

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v24

    const v47, 0x7f020512

    move-object/from16 v0, v24

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const-string v47, "onscreen_manage_conference"

    invoke-static/range {v47 .. v47}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v47

    if-nez v47, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/InCallMenu;->canManagerConference()Z

    move-result v47

    if-eqz v47, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/InCallMenu;->isManageConferencePanelVisible()Z

    move-result v47

    if-nez v47, :cond_8

    const/16 v47, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_8
    const/16 v47, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_5
    const v47, 0x7f0e0344

    move-object/from16 v0, p1

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const v47, 0x7f020507

    move/from16 v0, v47

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/InCallMenu;->showAddCall()Z

    move-result v47

    if-eqz v47, :cond_9

    const/16 v47, 0x1

    move/from16 v0, v47

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_9
    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_6
    const v47, 0x7f0e035d

    move-object/from16 v0, p1

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v41

    const v47, 0x7f0e035e

    move-object/from16 v0, p1

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v42

    const v47, 0x7f02051e

    move-object/from16 v0, v41

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v47, 0x7f02051f

    move-object/from16 v0, v42

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const-string v47, "voice_call_recording_menu"

    invoke-static/range {v47 .. v47}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_d

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v23

    if-eqz v23, :cond_a

    invoke-virtual/range {v23 .. v23}, Lcom/android/incallui/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v47

    if-nez v47, :cond_c

    const/16 v47, 0x1

    :goto_4
    move-object/from16 v0, v41

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual/range {v23 .. v23}, Lcom/android/incallui/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v47

    move-object/from16 v0, v42

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_a
    :goto_5
    const-string v47, "automatic_answering_machine"

    invoke-static/range {v47 .. v47}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v34

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isGuidancePlaying()Z

    move-result v47

    if-nez v47, :cond_b

    invoke-virtual/range {v34 .. v34}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v47

    if-eqz v47, :cond_6

    :cond_b
    const/16 v47, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v47, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_c
    const/16 v47, 0x0

    goto :goto_4

    :cond_d
    const/16 v47, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v47, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5

    :sswitch_7
    const v47, 0x7f0e0082

    move-object/from16 v0, p1

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    const v47, 0x7f020508

    move-object/from16 v0, v27

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/InCallMenu;->showMessageMenu()Z

    move-result v47

    if-eqz v47, :cond_e

    const/16 v47, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_e
    const/16 v47, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_8
    const v47, 0x7f0e0337

    move-object/from16 v0, p1

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v25

    const v47, 0x7f020513

    move-object/from16 v0, v25

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const-string v47, "use_snote_string"

    invoke-static/range {v47 .. v47}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_12

    const v47, 0x7f09010a

    move-object/from16 v0, v25

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_f
    :goto_6
    const-string v47, "in_call_menu_memo_enable"

    invoke-static/range {v47 .. v47}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v37

    const-string v47, "emergency_find_lost_phone"

    invoke-static/range {v47 .. v47}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_10

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Lcom/android/incallui/CallCommandClient;->isFindService()Ljava/lang/Boolean;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v47

    if-nez v47, :cond_14

    const/16 v37, 0x1

    :cond_10
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v47

    if-eqz v47, :cond_11

    const/16 v37, 0x0

    :cond_11
    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_12
    const-string v47, "use_action_memo_string"

    invoke-static/range {v47 .. v47}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v47

    if-nez v47, :cond_13

    const-string v47, "use_action_memo_duringcall"

    invoke-static/range {v47 .. v47}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_f

    const-string v47, "com.samsung.android.snote"

    invoke-static/range {v47 .. v47}, Lcom/android/incallui/InCallUtils;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_f

    :cond_13
    const v47, 0x7f09010e

    move-object/from16 v0, v25

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_6

    :cond_14
    const/16 v37, 0x0

    goto :goto_7

    :sswitch_9
    const v47, 0x7f0e0361

    move-object/from16 v0, p1

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    const v47, 0x7f02051b

    move/from16 v0, v47

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/InCallMenu;->showChatOnMenu()Z

    move-result v47

    if-eqz v47, :cond_15

    const/16 v47, 0x1

    move/from16 v0, v47

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_15
    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_a
    const v47, 0x7f0e0362

    move-object/from16 v0, p1

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v47, 0x7f02050f

    move/from16 v0, v47

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const-string v47, "ims_rcs"

    invoke-static/range {v47 .. v47}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_18

    const-string v47, "ims_rcs_bb"

    invoke-static/range {v47 .. v47}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v47

    if-nez v47, :cond_18

    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->isRcsServiceAvailable()Z

    move-result v47

    if-eqz v47, :cond_17

    const/16 v47, 0x1

    move/from16 v0, v47

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/InCallMenu;->IsActiveRcsFT()Z

    move-result v47

    if-eqz v47, :cond_16

    const/16 v47, 0x1

    move/from16 v0, v47

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_16
    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_17
    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_18
    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_b
    const v47, 0x7f0e035f

    move-object/from16 v0, p1

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v46

    const v47, 0x7f02050a

    invoke-interface/range {v46 .. v47}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v47, 0x0

    invoke-interface/range {v46 .. v47}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {}, Lcom/android/incallui/SoundEffect;->isVoiceCallEqInstalled()Z

    move-result v47

    if-eqz v47, :cond_1b

    const/16 v47, 0x1

    invoke-interface/range {v46 .. v47}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCallForwardingState()Z

    move-result v47

    if-eqz v47, :cond_1a

    const/16 v47, 0x0

    invoke-interface/range {v46 .. v47}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_8
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "InCallMenu.isImsRegisteredOverWifi():"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " disable VoiceEQ"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    if-eqz v19, :cond_19

    const/16 v47, 0x0

    invoke-interface/range {v46 .. v47}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_19
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v47

    const-string v48, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual/range {v47 .. v48}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_6

    const-string v47, "disabling extravolume for WiFi Calling"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;Z)V

    if-eqz v20, :cond_6

    const/16 v47, 0x0

    invoke-interface/range {v46 .. v47}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_1a
    const/16 v47, 0x1

    invoke-interface/range {v46 .. v47}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_8

    :cond_1b
    const/16 v47, 0x0

    invoke-interface/range {v46 .. v47}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_c
    const v47, 0x7f0e002f

    move-object/from16 v0, p1

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    const-string v47, "vzw_volte_ui"

    invoke-static/range {v47 .. v47}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_1c

    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_1c
    const v47, 0x7f0203bf

    move/from16 v0, v47

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/incallui/InCallMenu;->manageHoldMenu(Landroid/view/MenuItem;)V

    goto/16 :goto_3

    :sswitch_d
    const v47, 0x7f0e0030

    move-object/from16 v0, p1

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v43

    const v47, 0x7f0203df

    move-object/from16 v0, v43

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v47, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_e
    const v47, 0x7f0e0105

    move-object/from16 v0, p1

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const/16 v47, 0x1

    move/from16 v0, v47

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    const-string v47, "extra_volume"

    invoke-static/range {v47 .. v47}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_20

    const-string v47, "show_extra_volume_in_call_card"

    invoke-static/range {v47 .. v47}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v47

    if-nez v47, :cond_20

    invoke-static {}, Lcom/android/incallui/SoundEffect;->isExtraVolOn()Z

    move-result v47

    if-eqz v47, :cond_1e

    const/16 v47, 0x1

    move/from16 v0, v47

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :goto_9
    const/16 v47, 0x1

    move/from16 v0, v47

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCallForwardingState()Z

    move-result v47

    if-eqz v47, :cond_1f

    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_a
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "InCallMenu.isImsRegisteredOverWifi():"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " disable ExtraVolume"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    if-eqz v19, :cond_1d

    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v47

    const-string v48, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual/range {v47 .. v48}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_6

    const-string v47, "disabling noisereduction for WiFi Calling"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;Z)V

    if-eqz v20, :cond_6

    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_1e
    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_9

    :cond_1f
    const/16 v47, 0x1

    move/from16 v0, v47

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_a

    :cond_20
    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_f
    const v47, 0x7f0e0360

    move-object/from16 v0, p1

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v30

    const/16 v47, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_10
    const v47, 0x7f0e0368

    move-object/from16 v0, p1

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v40

    const v47, 0x7f02051d

    move-object/from16 v0, v40

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v39, 0x0

    const-string v47, "feature_chn_duos_gsm_gsm"

    invoke-static/range {v47 .. v47}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_23

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Lcom/android/incallui/InCallPresenter;->getSimIdToDisplay()I

    move-result v47

    const/16 v48, 0x1

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_22

    const-string v47, "gsm.STK_SETUP_MENU2"

    invoke-static/range {v47 .. v47}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    :cond_21
    :goto_b
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "simService - "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    if-eqz v39, :cond_26

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v47

    if-lez v47, :cond_26

    const/16 v47, 0x1

    :goto_c
    move-object/from16 v0, v40

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_22
    const-string v47, "gsm.STK_SETUP_MENU"

    invoke-static/range {v47 .. v47}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    goto :goto_b

    :cond_23
    const-string v47, "feature_multisim"

    invoke-static/range {v47 .. v47}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_24

    const-string v47, "feature_ctc"

    invoke-static/range {v47 .. v47}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_24

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Lcom/android/incallui/InCallPresenter;->getSimIdToDisplay()I

    move-result v47

    const/16 v48, 0x1

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_21

    const-string v47, "gsm.STK_SETUP_MENU"

    invoke-static/range {v47 .. v47}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    goto :goto_b

    :cond_24
    const-string v47, "feature_multisim"

    invoke-static/range {v47 .. v47}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_25

    const-string v47, "gsm.STK_SETUP_MENU"

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/InCallMenu;->getDefaultSimForVoiceCalls()I

    move-result v48

    invoke-static/range {v47 .. v48}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    goto :goto_b

    :cond_25
    const-string v47, "gsm.STK_SETUP_MENU"

    invoke-static/range {v47 .. v47}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    goto :goto_b

    :cond_26
    const/16 v47, 0x0

    goto :goto_c

    :sswitch_11
    const v47, 0x7f0e0369

    move-object/from16 v0, p1

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v45

    const v47, 0x7f02051d

    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const-string v47, "feature_multisim"

    invoke-static/range {v47 .. v47}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_27

    const-string v47, "feature_ctc"

    invoke-static/range {v47 .. v47}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v47

    if-nez v47, :cond_28

    :cond_27
    const-string v47, "ctc_dual_mode_single_phone_byqc"

    invoke-static/range {v47 .. v47}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_2c

    :cond_28
    const-string v47, "gsm.UTK_SETUP_MENU"

    invoke-static/range {v47 .. v47}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Lcom/android/incallui/InCallPresenter;->getSimIdToDisplay()I

    move-result v47

    const/16 v48, 0x1

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_29

    const/16 v44, 0x0

    :cond_29
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "uimService - "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    if-eqz v44, :cond_2a

    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->length()I

    move-result v47

    if-lez v47, :cond_2a

    const/16 v47, 0x1

    :goto_d
    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, " UIM - "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    if-eqz v44, :cond_2b

    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->length()I

    move-result v47

    if-lez v47, :cond_2b

    const/16 v47, 0x1

    :goto_e
    move-object/from16 v0, v48

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2a
    const/16 v47, 0x0

    goto :goto_d

    :cond_2b
    const/16 v47, 0x0

    goto :goto_e

    :cond_2c
    const/16 v47, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_12
    const v47, 0x7f0e035b

    move-object/from16 v0, p1

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const v47, 0x7f020509

    move/from16 v0, v47

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/InCallMenu;->canCallTransfer()Z

    move-result v47

    if-eqz v47, :cond_2d

    const/16 v47, 0x1

    move/from16 v0, v47

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_2d
    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    if-eqz v47, :cond_6

    const v47, 0x7f0e036c

    move-object/from16 v0, p1

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v47

    const-string v48, "remote_control_call"

    const/16 v49, 0x0

    invoke-static/range {v47 .. v49}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v38

    const/16 v47, 0x1

    move/from16 v0, v38

    move/from16 v1, v47

    if-lt v0, v1, :cond_2e

    const/16 v47, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_2e
    const/16 v47, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_14
    const v47, 0x7f0e0363

    move-object/from16 v0, p1

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const v47, 0x7f0e0364

    move-object/from16 v0, p1

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    const-string v47, "ims_rcs"

    invoke-static/range {v47 .. v47}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_32

    const v47, 0x7f020501

    move/from16 v0, v47

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v47, 0x7f020501

    move/from16 v0, v47

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->isRcsServiceAvailable()Z

    move-result v47

    if-eqz v47, :cond_31

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v47

    sget v48, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-virtual/range {v47 .. v48}, Lcom/android/incallui/CallButtonPresenter;->isSupported(I)Z

    move-result v47

    if-eqz v47, :cond_30

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v47

    sget v48, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-virtual/range {v47 .. v48}, Lcom/android/incallui/CallButtonPresenter;->isAudio(I)Z

    move-result v47

    if-eqz v47, :cond_2f

    const/16 v47, 0x1

    move/from16 v0, v47

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_2f
    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v47, 0x1

    move/from16 v0, v47

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_30
    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v47, 0x1

    move/from16 v0, v47

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_31
    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_32
    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_15
    const v47, 0x7f0e0367

    move-object/from16 v0, p1

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    if-eqz v47, :cond_6

    if-eqz v31, :cond_6

    const-string v47, "support_onehand_operation"

    invoke-static/range {v47 .. v47}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v47

    const-string v48, "any_screen_running"

    const/16 v49, 0x0

    invoke-static/range {v47 .. v49}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v47

    const/16 v48, 0x1

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_35

    const-string v47, "SeparateSetting"

    const-string v48, "UnifiedSetting"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v47

    if-eqz v47, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v47

    sget-object v48, Lcom/android/incallui/InCallMenu;->ONE_HAND_ENABLED:Ljava/lang/String;

    const/16 v49, 0x0

    invoke-static/range {v47 .. v49}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v47

    const/16 v48, 0x1

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_33

    const v47, 0x7f090117

    move-object/from16 v0, v31

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v47

    move-object/from16 v0, v47

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v47, v0

    const/16 v48, 0x1

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_34

    const/16 v47, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_33
    const v47, 0x7f090116

    move-object/from16 v0, v31

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_f

    :cond_34
    const/16 v47, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_35
    const/16 v47, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_16
    const v47, 0x7f0e036a

    move-object/from16 v0, p1

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v32

    if-eqz v32, :cond_6

    const/16 v47, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_17
    const v47, 0x7f0e036b

    move-object/from16 v0, p1

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const-string v47, "ims_voice_conference"

    invoke-static/range {v47 .. v47}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_39

    const-string v47, "feature_lgt"

    invoke-static/range {v47 .. v47}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_38

    if-eqz v4, :cond_36

    const/16 v47, 0x200

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v47

    if-eqz v47, :cond_36

    const/16 v18, 0x1

    :goto_10
    if-eqz v18, :cond_37

    const/16 v47, 0x1

    move/from16 v0, v47

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v47, 0x1

    move/from16 v0, v47

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_36
    const/16 v18, 0x0

    goto :goto_10

    :cond_37
    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_38
    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_39
    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_18
    const v47, 0x7f0e036d

    move-object/from16 v0, p1

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    if-eqz v11, :cond_6

    const/16 v47, 0x1

    move/from16 v0, v47

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_3a
    const/16 v36, 0x1

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e002f -> :sswitch_c
        0x7f0e0030 -> :sswitch_d
        0x7f0e0039 -> :sswitch_4
        0x7f0e0082 -> :sswitch_7
        0x7f0e0105 -> :sswitch_e
        0x7f0e0337 -> :sswitch_8
        0x7f0e0343 -> :sswitch_3
        0x7f0e0344 -> :sswitch_5
        0x7f0e035b -> :sswitch_12
        0x7f0e035c -> :sswitch_2
        0x7f0e035d -> :sswitch_0
        0x7f0e035e -> :sswitch_6
        0x7f0e035f -> :sswitch_b
        0x7f0e0360 -> :sswitch_f
        0x7f0e0361 -> :sswitch_9
        0x7f0e0362 -> :sswitch_a
        0x7f0e0363 -> :sswitch_0
        0x7f0e0364 -> :sswitch_14
        0x7f0e0365 -> :sswitch_1
        0x7f0e0366 -> :sswitch_1
        0x7f0e0367 -> :sswitch_15
        0x7f0e0368 -> :sswitch_10
        0x7f0e0369 -> :sswitch_11
        0x7f0e036a -> :sswitch_16
        0x7f0e036b -> :sswitch_17
        0x7f0e036c -> :sswitch_13
        0x7f0e036d -> :sswitch_18
    .end sparse-switch
.end method

.method public setMenuOpen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/InCallMenu;->mIsMenuOpen:Z

    return-void
.end method

.method public setTransferFileOption(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/InCallMenu;->menu:Landroid/view/Menu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallMenu;->menu:Landroid/view/Menu;

    const v2, 0x7f0e0362

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
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
