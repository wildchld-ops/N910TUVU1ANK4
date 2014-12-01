.class public Lcom/android/phone/callsettings/CallSettingsTabFragment;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "CallSettingsTabFragment.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field public static sim1Name:Ljava/lang/String;

.field public static sim2Name:Ljava/lang/String;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mMenuId:I

.field private mSelectedTabPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    return-void
.end method

.method private checkOnlySim2Ready()Z
    .locals 6

    const/4 v5, 0x3

    const/4 v0, 0x0

    const-string v3, "gsm.sim.currentcardstatus"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "gsm.sim.currentcardstatus2"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "1"

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v3, "feature_chn_duos_support_cgg"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->isSlot1Switched()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "CallSettingsTabFragment"

    const-string v4, "onlySim2Ready false"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    if-eq v1, v5, :cond_2

    if-ne v2, v5, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSlotSelectionInformation()Ljava/lang/String;
    .locals 8

    const-string v0, "/sys/class/sec/slot_switch/slot_sel"

    const/4 v3, 0x0

    const-string v1, "0"

    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const-string v5, "CallSettingsTabFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Slot_Sel [read]<---------------------------------- : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v3, v4

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    const-string v1, "0"

    :cond_2
    return-object v1

    :catch_0
    move-exception v2

    const-string v5, "CallSettingsTabFragment"

    const-string v6, "File close error"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_1
    :try_start_3
    const-string v5, "CallSettingsTabFragment"

    const-string v6, "File open error"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "0"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    const-string v5, "CallSettingsTabFragment"

    const-string v6, "File close error"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_3
    throw v5

    :catch_3
    move-exception v2

    const-string v6, "CallSettingsTabFragment"

    const-string v7, "File close error"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_1
    move-exception v5

    move-object v3, v4

    goto :goto_2

    :catch_4
    move-exception v2

    move-object v3, v4

    goto :goto_1
.end method

.method private isSlot1Switched()Z
    .locals 2

    const-string v0, "feature_chn_duos_support_cgg"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GSM"

    const-string v1, "gsm.sim.selectnetwork"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupTab(Ljava/lang/String;I)V
    .locals 6

    const/4 v5, 0x1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->sim1Name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CallSettingTab"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    const-string v0, "CallSettingsTabFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupTab "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    new-instance v0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vcf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_1
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->getSimCardIcon(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    :goto_2
    invoke-virtual {v1, v0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    iget v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    if-ne v0, p2, :cond_e

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1, v5}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;Z)V

    :goto_3
    const-string v0, "feature_chn_duos_cdma_gsm"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->checkOnlySim2Ready()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->sim2Name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    :cond_1
    :goto_4
    return-void

    :cond_2
    sget-object v0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->sim2Name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CallSettingTab"

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_3
    iget v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    new-instance v0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vdf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_9

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "feature_chn_duos_gsm_cdma"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-ne p2, v5, :cond_5

    new-instance v0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/phone/CdmaAdditionalCallOptions;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_5
    const v1, 0x7f090055

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_5
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eq p2, v5, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSlot1SwitchedInCGG()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    new-instance v0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_5

    :cond_7
    new-instance v0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/phone/CdmaAdditionalCallOptions;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_5

    :cond_8
    new-instance v0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_5

    :cond_9
    iget v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_a

    const-string v0, "is_voicemail_duos"

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vom"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    const v1, 0x7f090051

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_a
    iget v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_b

    new-instance v0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ipc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/phone/callsettings/IpCall;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    const v1, 0x7f09049e

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_b
    iget v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_c

    const-string v0, "is_ringtone_duos"

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rtn"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    const v1, 0x7f090295

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_c
    const-string v0, "CallSettingsTabFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupTab : no menu  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_d
    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->getSimCardIcon(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    goto/16 :goto_2

    :cond_e
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    goto/16 :goto_3
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "CallSettingsTabFragment"

    const-string v3, "oncreate"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sput-object v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "TabTitleString"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const-string v2, "CallSettingMenu"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    if-eqz p1, :cond_3

    const-string v2, "selected_tab_position"

    invoke-virtual {p1, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    :goto_0
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->getSIMName(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->sim1Name:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->getSIMName(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->sim2Name:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->sim1Name:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->sim1Name:Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->setupTab(Ljava/lang/String;I)V

    :cond_1
    sget-object v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->sim2Name:Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->sim2Name:Ljava/lang/String;

    invoke-direct {p0, v2, v5}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->setupTab(Ljava/lang/String;I)V

    :cond_2
    return-void

    :cond_3
    iput v6, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-gtz v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "com.android.phone.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->finish()V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "selected_tab_position"

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
