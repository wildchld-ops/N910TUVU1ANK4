.class public Lcom/android/phone/GsmUmtsCallForwardOptions;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "GsmUmtsCallForwardOptions.java"

# interfaces
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;


# static fields
.field private static final NUM_PROJECTION:[Ljava/lang/String;

.field public static mSimId:I


# instance fields
.field private bGsmRoamingNetwork:Z

.field private bSlot1RoamingNetwork:Z

.field private bSlot2RoamingNetwork:Z

.field private disableScreen:Z

.field private mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

.field private mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

.field private mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

.field private mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

.field private mFirstResume:Z

.field private mIcicle:Landroid/os/Bundle;

.field private mInitIndex:I

.field private mIsLaunchFromWidget:Z

.field private final mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/CallForwardEditPreference;",
            ">;"
        }
    .end annotation
.end field

.field mToast:Landroid/widget/Toast;

.field private mWfcRegistrationStateChangeHandler:Landroid/os/Handler;

.field private mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

.field private prefVal:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/GsmUmtsCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    sput v2, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIsLaunchFromWidget:Z

    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->bGsmRoamingNetwork:Z

    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->bSlot1RoamingNetwork:Z

    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->bSlot2RoamingNetwork:Z

    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->disableScreen:Z

    new-instance v0, Lcom/android/phone/GsmUmtsCallForwardOptions$1;

    invoke-direct {v0, p0}, Lcom/android/phone/GsmUmtsCallForwardOptions$1;-><init>(Lcom/android/phone/GsmUmtsCallForwardOptions;)V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mWfcRegistrationStateChangeHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/GsmUmtsCallForwardOptions;)Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;
    .locals 1
    .param p0    # Lcom/android/phone/GsmUmtsCallForwardOptions;

    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/GsmUmtsCallForwardOptions;Z)V
    .locals 0
    .param p0    # Lcom/android/phone/GsmUmtsCallForwardOptions;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/phone/GsmUmtsCallForwardOptions;->updatePreferenceScreen(Z)V

    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isSlot1Switched()Z
    .locals 2

    const-string v0, "GSM"

    const-string v1, "gsm.sim.selectnetwork"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private simulatePreferenceClick(Landroid/preference/Preference;)V
    .locals 7
    .param p1    # Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "GsmUmtsCallForwardOptions"

    const-string v1, "Fragment finished. We ignore it."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private updatePreferenceScreen(Z)V
    .locals 2
    .param p1    # Z

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    const-string v0, "GsmUmtsCallForwardOptions"

    const-string v1, "onActivityResult: done"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    const-string v0, "GsmUmtsCallForwardOptions"

    const-string v1, "onActivityResult: contact picker result not OK."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/GsmUmtsCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "GsmUmtsCallForwardOptions"

    const-string v1, "onActivityResult: bad contact data, no results found."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    packed-switch p1, :pswitch_data_0

    :goto_1
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v10, "feature_chn_duos_gsm_gsm"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "feature_chn_duos_support_cgg"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    :cond_0
    const-string v10, "gsm.sim.currentcardstatus"

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const-string v10, "gsm.sim.currentcardstatus2"

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const-string v10, "GsmUmtsCallForwardOptions"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "GsmUmts sim1= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", sim2= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x3

    if-ne v7, v10, :cond_9

    const/4 v10, 0x3

    if-ne v8, v10, :cond_9

    const-string v10, "GsmUmtsCallForwardOptions"

    const-string v11, "DUAL SIM"

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v10, "GsmUmtsCallForwardOptions"

    const-string v11, "Bundle is not null"

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "CallSettingTab"

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    const-string v10, "GsmUmtsCallForwardOptions"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "GsmUmts mSimId= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v10, "feature_chn_duos_support_cgg"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    sget v10, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    const/4 v10, 0x1

    sput v10, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    :cond_2
    :goto_0
    const-string v10, "GsmUmtsCallForwardOptions"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mSimId : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v10, 0x7f060011

    invoke-virtual {p0, v10}, Lcom/android/phone/GsmUmtsCallForwardOptions;->addPreferencesFromResource(I)V

    const-string v10, "true"

    const-string v11, "gsm.operator.isroaming"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->bSlot1RoamingNetwork:Z

    const-string v10, "true"

    const-string v11, "gsm.operator.isroaming2"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->bSlot2RoamingNetwork:Z

    const-string v10, "GsmUmtsCallForwardOptions"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Roaming Slot1= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->bSlot1RoamingNetwork:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Slot2= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->bSlot2RoamingNetwork:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v10, "button_cfu_key"

    invoke-virtual {v5, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/android/phone/CallForwardEditPreference;

    iput-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    const-string v10, "button_cfb_key"

    invoke-virtual {v5, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/android/phone/CallForwardEditPreference;

    iput-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    const-string v10, "button_cfnry_key"

    invoke-virtual {v5, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/android/phone/CallForwardEditPreference;

    iput-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    const-string v10, "button_cfnrc_key"

    invoke-virtual {v5, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/android/phone/CallForwardEditPreference;

    iput-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    const-string v10, "feature_chn_duos_support_cgg"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "feature_chn_dsds_support_cgg"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    :cond_3
    iget-boolean v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->bSlot1RoamingNetwork:Z

    if-eqz v10, :cond_4

    invoke-direct {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->isSlot1Switched()Z

    move-result v10

    if-eqz v10, :cond_4

    sget v10, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    if-eqz v10, :cond_5

    :cond_4
    iget-boolean v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->bSlot2RoamingNetwork:Z

    if-eqz v10, :cond_6

    sget v10, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    :cond_5
    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v5, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    :goto_1
    const-string v10, "default_vm_in_callforwarding"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_14

    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    iget-object v11, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    iget v11, v11, Lcom/android/phone/CallForwardEditPreference;->reason:I

    const/4 v12, 0x1

    invoke-virtual {v10, p0, v11, p0, v12}, Lcom/android/phone/CallForwardEditPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;Z)V

    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    iget-object v11, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    iget v11, v11, Lcom/android/phone/CallForwardEditPreference;->reason:I

    const/4 v12, 0x1

    invoke-virtual {v10, p0, v11, p0, v12}, Lcom/android/phone/CallForwardEditPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;Z)V

    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    iget-object v11, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    iget v11, v11, Lcom/android/phone/CallForwardEditPreference;->reason:I

    const/4 v12, 0x1

    invoke-virtual {v10, p0, v11, p0, v12}, Lcom/android/phone/CallForwardEditPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;Z)V

    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    iget-object v11, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    iget v11, v11, Lcom/android/phone/CallForwardEditPreference;->reason:I

    const/4 v12, 0x1

    invoke-virtual {v10, p0, v11, p0, v12}, Lcom/android/phone/CallForwardEditPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;Z)V

    :goto_2
    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mFirstResume:Z

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mCanShowDialog:Z

    iput-object p1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "FROMWIDGET"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIsLaunchFromWidget:Z

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mToast:Landroid/widget/Toast;

    iget-boolean v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->disableScreen:Z

    if-nez v10, :cond_15

    const/4 v10, 0x1

    :goto_3
    invoke-virtual {v5, v10}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    new-instance v10, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    iget-object v11, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mWfcRegistrationStateChangeHandler:Landroid/os/Handler;

    invoke-virtual {v10, v11}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->registerHandlerForWfcRegistrationStateChage(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->isImsRegisteredOverWifi(Landroid/content/ContentResolver;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_8
    return-void

    :cond_9
    const/4 v10, 0x3

    if-ne v8, v10, :cond_a

    const-string v10, "GsmUmtsCallForwardOptions"

    const-string v11, "SIM2 Only"

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    sput v10, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    goto/16 :goto_0

    :cond_a
    const/4 v10, 0x3

    if-ne v7, v10, :cond_b

    const-string v10, "GsmUmtsCallForwardOptions"

    const-string v11, "SIM1 Only"

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    sput v10, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    goto/16 :goto_0

    :cond_b
    const-string v10, "feature_chn_duos_support_cgg"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v10, 0x1

    sput v10, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    goto/16 :goto_0

    :cond_c
    const/4 v10, 0x0

    sput v10, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    goto/16 :goto_0

    :cond_d
    const-string v10, "feature_chn_duos_cdma_gsm"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    const/4 v10, 0x1

    sput v10, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    goto/16 :goto_0

    :cond_e
    const-string v10, "feature_multisim"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    const-string v10, "gsm.sim.state"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "gsm.sim.state2"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v10, "READY"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    const-string v10, "READY"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    const-string v10, "GsmUmtsCallForwardOptions"

    const-string v11, "multisim DUAL SIM"

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v10, "CallSettingTab"

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    goto/16 :goto_0

    :cond_f
    const-string v10, "READY"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    const-string v10, "GsmUmtsCallForwardOptions"

    const-string v11, "multisim SIM2 Only"

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    sput v10, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    goto/16 :goto_0

    :cond_10
    const-string v10, "READY"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "GsmUmtsCallForwardOptions"

    const-string v11, "multisim SIM2 Only"

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    sput v10, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getApplicationContext()Landroid/content/Context;

    const-string v10, "phone"

    invoke-virtual {p0, v10}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    const/4 v10, 0x1

    if-ne v6, v10, :cond_2

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->disableScreen:Z

    goto/16 :goto_0

    :cond_12
    const-string v10, "feature_chn_duos_cdma_gsm"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13

    iget-boolean v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->bSlot2RoamingNetwork:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v5, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_13
    const-string v10, "ctc_dual_mode_single_phone_byqc"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-boolean v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->bSlot1RoamingNetwork:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v5, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_14
    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    iget-object v11, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    iget v11, v11, Lcom/android/phone/CallForwardEditPreference;->reason:I

    const/4 v12, 0x1

    invoke-virtual {v10, p0, v11, v12}, Lcom/android/phone/CallForwardEditPreference;->setParentFragment(Landroid/app/Fragment;IZ)V

    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    iget-object v11, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    iget v11, v11, Lcom/android/phone/CallForwardEditPreference;->reason:I

    const/4 v12, 0x1

    invoke-virtual {v10, p0, v11, v12}, Lcom/android/phone/CallForwardEditPreference;->setParentFragment(Landroid/app/Fragment;IZ)V

    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    iget-object v11, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    iget v11, v11, Lcom/android/phone/CallForwardEditPreference;->reason:I

    const/4 v12, 0x1

    invoke-virtual {v10, p0, v11, v12}, Lcom/android/phone/CallForwardEditPreference;->setParentFragment(Landroid/app/Fragment;IZ)V

    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    iget-object v11, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    iget v11, v11, Lcom/android/phone/CallForwardEditPreference;->reason:I

    const/4 v12, 0x1

    invoke-virtual {v10, p0, v11, v12}, Lcom/android/phone/CallForwardEditPreference;->setParentFragment(Landroid/app/Fragment;IZ)V

    goto/16 :goto_2

    :cond_15
    const/4 v10, 0x0

    goto/16 :goto_3
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .locals 4
    .param p1    # Landroid/preference/Preference;
    .param p2    # Z

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIsForeground:Z

    if-nez v1, :cond_0

    const-string v1, "GsmUmtsCallForwardOptions"

    const-string v2, "requesting discarded"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallForwardEditPreference;

    sget v2, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    invoke-virtual {v1, p0, v3, v2}, Lcom/android/phone/CallForwardEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIsLaunchFromWidget:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIsLaunchFromWidget:Z

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FROMWIDGET"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    invoke-direct {p0, v1}, Lcom/android/phone/GsmUmtsCallForwardOptions;->simulatePreferenceClick(Landroid/preference/Preference;)V

    goto :goto_1
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .locals 4
    .param p1    # Lcom/android/phone/EditPhoneNumberPreference;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    const-string v2, "feature_chn_duos_gsm_gsm"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "feature_chn_duos_support_cgg"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    sget v3, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    aget-object v0, v2, v3

    :cond_1
    :goto_0
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    :goto_1
    return-object v2

    :cond_2
    const-string v2, "feature_chn_duos_cdma_gsm"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    goto :goto_0

    :cond_3
    const-string v2, "sec_product_feature_common_dsds_support"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    sget v3, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    aget-object v0, v2, v3

    goto :goto_0

    :cond_5
    const-string v2, "GsmUmtsCallForwardOptions"

    const-string v3, "updating default for call forwarding dialogs"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f090052

    invoke-virtual {p0, v3}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "FROMWIDGET"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.callsettings.CallTypeSelectForForwarding"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "com.android.phone.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->finish()V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onPause()V

    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    invoke-virtual {v0}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->unregisterObserver()V

    return-void
.end method

.method public onResume()V
    .locals 15

    const/4 v14, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    invoke-virtual {v10}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->registerObserver()V

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->isImsRegisteredOverWifi(Landroid/content/ContentResolver;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-direct {p0, v11}, Lcom/android/phone/GsmUmtsCallForwardOptions;->updatePreferenceScreen(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mFirstResume:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    if-nez v10, :cond_4

    const-string v10, "GsmUmtsCallForwardOptions"

    const-string v13, "start to init "

    invoke-static {v10, v13}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget v13, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/phone/CallForwardEditPreference;

    sget v13, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    invoke-virtual {v10, p0, v12, v13}, Lcom/android/phone/CallForwardEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    const-string v10, "sec_product_feature_common_dsds_support"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "feature_multisim"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneUtils;->hasVTSupport()Z

    move-result v10

    if-nez v10, :cond_3

    sput-boolean v12, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->IsAdditionSetting:Z

    :cond_3
    const-string v10, "feature_multisim"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_7

    invoke-virtual {v8, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->isAirplaneModeOn()Z

    move-result v10

    if-nez v10, :cond_6

    move v10, v11

    :goto_2
    invoke-virtual {v5, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInitIndex:I

    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/phone/CallForwardEditPreference;

    iget-object v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    invoke-virtual {v5}, Lcom/android/phone/CallForwardEditPreference;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v10, "toggle"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v5, v10}, Lcom/android/phone/CallForwardEditPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    new-instance v1, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    const-string v10, "number"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    const-string v10, "status"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-virtual {v5, v1, v14}, Lcom/android/phone/CallForwardEditPreference;->handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;Landroid/os/Message;)V

    const-string v10, "keyEnable"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->prefVal:Z

    iget-boolean v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->disableScreen:Z

    if-eqz v10, :cond_5

    invoke-virtual {v5, v12}, Lcom/android/phone/CallForwardEditPreference;->setEnabled(Z)V

    :goto_4
    sget v10, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    invoke-virtual {v5, p0, v11, v10}, Lcom/android/phone/CallForwardEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    goto :goto_3

    :cond_5
    iget-boolean v10, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->prefVal:Z

    invoke-virtual {v5, v10}, Lcom/android/phone/CallForwardEditPreference;->setEnabled(Z)V

    goto :goto_4

    :cond_6
    move v10, v12

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v13, "dsa_main"

    invoke-virtual {v10, v13, v12}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v13, "SelectSimStatus"

    invoke-virtual {v10, v13, v12}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v10, "SimStatus"

    invoke-interface {v7, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v13, "dsa_is_activate"

    invoke-static {v10, v13, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v11, :cond_b

    if-ne v9, v11, :cond_8

    sget v10, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    if-eqz v10, :cond_a

    :cond_8
    const/4 v10, 0x2

    if-ne v9, v10, :cond_9

    sget v10, Lcom/android/phone/GsmUmtsCallForwardOptions;->mSimId:I

    if-eq v10, v11, :cond_a

    :cond_9
    if-nez v9, :cond_b

    :cond_a
    const-string v10, "GsmUmtsCallForwardOptions"

    const-string v11, "DSA_IS_ACTIVATE"

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8, v12}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_b
    iput-boolean v12, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mFirstResume:Z

    iput-object v14, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallForwardEditPreference;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "toggle"

    invoke-virtual {v2}, Lcom/android/phone/CallForwardEditPreference;->isToggled()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, v2, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v3, :cond_0

    const-string v3, "number"

    iget-object v4, v2, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "status"

    iget-object v4, v2, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string v3, "keyEnable"

    invoke-virtual {v2}, Lcom/android/phone/CallForwardEditPreference;->isEnabled()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Lcom/android/phone/CallForwardEditPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
