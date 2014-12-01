.class public Lcom/android/services/telephony/common/SystemDBInterface;
.super Ljava/lang/Object;
.source "SystemDBInterface.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mEasyModeEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/services/telephony/common/SystemDBInterface;->mEasyModeEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMUMCaseForIncoming()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v0, "show_incomingcall_as_fullmode_for_mum"

    const-string v2, "show_incomingcall_as_fullmode_for_mum"

    invoke-static {v2, v4, v4}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;II)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showIncomingAsFullModeForMUM : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    if-eqz v1, :cond_1

    :goto_1
    return v3

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method public static disableIncomingCallPopUPDuringMirrorlink()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "disable_incoming_call_popup_during_mirrorlink"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DISABLE_INCOMING_CALL_POPUP_DURING_MIRRORLINK is false"

    invoke-static {v2, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    :goto_0
    return v0

    :cond_0
    const-string v2, "net.mirrorlink.on"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "MirrorLink is ON"

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    move v0, v1

    goto :goto_0

    :cond_1
    const-string v2, "MirrorLink is OFF"

    invoke-static {v2, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static enabledKidsModeCallApp()Z
    .locals 11

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string v0, "kids_home_mode"

    const-string v1, "com.sec.kidsplat.phone"

    sget-object v8, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "kids_home_mode"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lt v2, v10, :cond_0

    :try_start_0
    sget-object v8, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v8, "com.sec.kidsplat.phone"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hasKidsModeCall activated = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x1

    :cond_0
    :goto_0
    return v6

    :catch_0
    move-exception v3

    move v6, v7

    goto :goto_0

    :catch_1
    move-exception v3

    move v6, v7

    goto :goto_0
.end method

.method public static getEasyModeState()Z
    .locals 1

    sget-boolean v0, Lcom/android/services/telephony/common/SystemDBInterface;->mEasyModeEnabled:Z

    return v0
.end method

.method public static getSecureSettingDB(Ljava/lang/String;I)I
    .locals 1

    sget-object v0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    sget-object v0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    goto :goto_0
.end method

.method public static getSettingDB(Ljava/lang/String;I)I
    .locals 1

    sget-object v0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    sget-object v0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    goto :goto_0
.end method

.method public static getSettingDB(Ljava/lang/String;II)I
    .locals 1

    sget-object v0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    sget-object v0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    goto :goto_0
.end method

.method public static getSuppService()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const-string v0, "on_supp_service"

    sget-object v4, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "on_supp_service"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSuppService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;)V

    if-ne v1, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public static getTtyNotification()Z
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "show_tty_notification"

    const-string v4, "show_tty_notification"

    invoke-static {v4, v3}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTtyNotification, show : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    if-ne v1, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public static getTtySetting()I
    .locals 4

    const-string v0, "preferred_tty_mode"

    const-string v2, "preferred_tty_mode"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/services/telephony/common/SystemDBInterface;->getSecureSettingDB(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTtySetting, setting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    return v1
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static isAnyKeyMode()Z
    .locals 3

    const/4 v1, 0x0

    const-string v2, "anykey_mode"

    invoke-static {v2, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isCallerInfoCardMode()Z
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "display_caller_info_card"

    const-string v1, "default_caller_information"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v4, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCallerInfoCardMode : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    if-eqz v0, :cond_2

    :goto_2
    return v2

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method public static isDriveLinkModeOn()Z
    .locals 4

    const/4 v2, 0x0

    const-string v0, "drivelink_mode"

    const-string v3, "drivelink_mode"

    invoke-static {v3, v2}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isDriveLinkNaviMode()Z
    .locals 4

    const/4 v2, 0x0

    const-string v0, "drivelink_mode"

    const-string v3, "drivelink_mode"

    invoke-static {v3, v2}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isEasyModeOn()Z
    .locals 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v1, "easy_mode_switch"

    const-string v0, "easy_mode_contacts"

    const-string v6, "easy_mode_switch"

    invoke-static {v6, v4}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v2

    const-string v6, "easy_mode_contacts"

    invoke-static {v6, v4}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v3

    const-string v6, "support_easy_mode"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    invoke-static {v4}, Lcom/android/services/telephony/common/SystemDBInterface;->setEasyModeState(Z)V

    :goto_0
    return v4

    :cond_0
    invoke-static {v5}, Lcom/android/services/telephony/common/SystemDBInterface;->setEasyModeState(Z)V

    move v4, v5

    goto :goto_0
.end method

.method public static isFlashNotiEnabled()Z
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "flash_notification"

    const-string v2, "flash_notification"

    invoke-static {v2, v3}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFlashNotiEnabled : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    if-eqz v1, :cond_1

    :goto_1
    return v3

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method public static isHDVoicePrefered()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v0, "voicecall_type"

    const-string v5, "common_volte"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v1, 0x1

    const-string v5, "feature_lgt"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "volte_jpn_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "us_volte_ui"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "default_volte"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v5, "voicecall_type"

    invoke-static {v5, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_1
    if-nez v2, :cond_3

    :goto_2
    return v3

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_2
.end method

.method public static isIncomingCallPopUPEnabled()Z
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "popup_incoming_call"

    const-string v5, "popup_incoming_call"

    const-string v2, "default_incomingcall_popup"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v5, v2}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isIncomingCallPopUPEnabled : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    if-eqz v1, :cond_2

    :goto_2
    return v3

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2
.end method

.method public static isNsriSecureCallMode()Z
    .locals 4

    const/4 v2, 0x0

    const-string v0, "nsri_secure_call_mode"

    const-string v3, "nsri_secure_call_mode"

    invoke-static {v3, v2}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isOnehandAnyScreenOn()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "any_screen_running"

    sget-object v3, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "any_screen_running"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static isOnehandModeOn()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "onehand_dialer_enabled"

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOnehandAnyScreenOn()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOnehandModeOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    return v1

    :cond_1
    const-string v4, "SeparateSetting"

    const-string v5, "UnifiedSetting"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "interactionarea_switch"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "onehand_dialer_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_3

    move v1, v2

    :goto_1
    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1
.end method

.method public static isRapidInputMode()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v0, "rapid_key_input"

    const-string v2, "rapid_key_input"

    invoke-static {v2, v4}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rapidInputMode : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    if-eqz v1, :cond_1

    :goto_1
    return v3

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method public static isSecondScreenEnabled()Z
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "second_screen_call"

    const-string v2, "second_screen_call"

    invoke-static {v2, v3}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSecondScreenEnabled : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    if-eqz v1, :cond_1

    :goto_1
    return v3

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method public static isSystemSettingAllSoundOff()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "all_sound_off -  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;)V

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTPhoneEnabled()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "skt_phone20_settings"

    const-string v4, "skt_phone20_settings"

    invoke-static {v4, v3}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public static isTPhoneRelaxMode()Z
    .locals 4

    const/4 v2, 0x0

    const-string v0, "skt_phone20_relax_mode"

    const-string v3, "skt_phone20_relax_mode"

    invoke-static {v3, v2}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isTPhoneUpgradeInstallingState()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "skt_phone20_installing_mode"

    const-string v4, "skt_phone20_installing_mode"

    invoke-static {v4, v3}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public static isVoiceControlOn()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v0, "voice_input_control_incomming_calls"

    const-string v2, "voice_input_control_incomming_calls"

    invoke-static {v2, v4}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVoiceControlOn : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    if-eqz v1, :cond_1

    :goto_1
    return v3

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method public static isWebExEnabled()Z
    .locals 10

    const/4 v9, 0x1

    const/4 v5, 0x0

    const-string v0, "com.cisco.webex.meetings"

    :try_start_0
    sget-object v6, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v6, "com.cisco.webex.meetings"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    :cond_0
    sget-object v6, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    const-string v7, "com.cisco.webex.meetings"

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    sput-object v6, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    sget-object v6, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    const-string v7, "share"

    invoke-virtual {v6, v7, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "SignInFlag"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isWebExEnabled : bSignInOrNot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v9}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    :goto_0
    return v5

    :catch_0
    move-exception v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :catch_1
    move-exception v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SystemDBInterface"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "SystemDBInterface"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setDriveLinkModeOn(I)V
    .locals 3

    const-string v0, "drivelink_mode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DRIVELINK]setDriveLinkModeOn()-drivelink_mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    sget-object v1, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "drivelink_mode"

    invoke-static {v1, v2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setEasyModeState(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/services/telephony/common/SystemDBInterface;->mEasyModeEnabled:Z

    return-void
.end method

.method public static setOnMerge(I)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOnMerge : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;)V

    const-string v0, "on_merge"

    sget-object v1, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "on_merge"

    invoke-static {v1, v2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setSuppService(I)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSuppService : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;)V

    const-string v0, "on_supp_service"

    sget-object v1, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "on_supp_service"

    invoke-static {v1, v2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setTtyNotification(I)V
    .locals 3

    const-string v0, "show_tty_notification"

    sget-object v1, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_tty_notification"

    invoke-static {v1, v2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTtyNotification : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/services/telephony/common/SystemDBInterface;->log(Ljava/lang/String;Z)V

    return-void
.end method
