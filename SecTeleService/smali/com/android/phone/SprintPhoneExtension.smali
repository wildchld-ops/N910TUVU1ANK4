.class public Lcom/android/phone/SprintPhoneExtension;
.super Ljava/lang/Object;
.source "SprintPhoneExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SprintPhoneExtension$1;,
        Lcom/android/phone/SprintPhoneExtension$MyHandler;,
        Lcom/android/phone/SprintPhoneExtension$RejectCallWithMessagePendingList;
    }
.end annotation


# static fields
.field private static BOOST_CODE:Ljava/lang/String;

.field private static CHAMELEON_CODE:Ljava/lang/String;

.field private static FILE_EXISTS:Ljava/lang/String;

.field private static HOME_ONLY:Ljava/lang/String;

.field private static SPRINT_CODE:Ljava/lang/String;

.field private static UNINIT:I

.field private static VIRGIN_MOBILE_USA_CODE:Ljava/lang/String;

.field private static VISUAL_VOICEMAIL_NODE:Ljava/lang/String;

.field private static VISUAL_VOICEMAIL_PACKAGE:Ljava/lang/String;

.field private static VISUAL_VOICEMAIL_PACKAGE_NODE:Ljava/lang/String;

.field private static mAbbreviatedDialingCodesTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mCscChameleonBit:I

.field private static mDataRoamingGuard:Lcom/android/phone/DataRoamingGuard;

.field private static mHandler:Lcom/android/phone/SprintPhoneExtension$MyHandler;

.field private static mParser:Lcom/android/phone/CscParser;

.field private static mPhoneNameKey:Ljava/lang/String;

.field private static mRejectCallWithMessagePendingArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/SprintPhoneExtension$RejectCallWithMessagePendingList;",
            ">;"
        }
    .end annotation
.end field

.field private static mShowCallRoamingGuardDialog:Z

.field private static mVisualVoicemailEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lcom/android/phone/SprintPhoneExtension;->mCscChameleonBit:I

    const-string v0, "com.coremobility.app.vnotes"

    sput-object v0, Lcom/android/phone/SprintPhoneExtension;->VISUAL_VOICEMAIL_PACKAGE:Ljava/lang/String;

    const-string v0, "Operators.EnabledAppsVvm"

    sput-object v0, Lcom/android/phone/SprintPhoneExtension;->VISUAL_VOICEMAIL_NODE:Ljava/lang/String;

    const-string v0, "EnabledApps.com.coremobility.app.vnotes"

    sput-object v0, Lcom/android/phone/SprintPhoneExtension;->VISUAL_VOICEMAIL_PACKAGE_NODE:Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/phone/SprintPhoneExtension;->mAbbreviatedDialingCodesTable:Ljava/util/Hashtable;

    const-string v0, "INIT"

    sput-object v0, Lcom/android/phone/SprintPhoneExtension;->mPhoneNameKey:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/android/phone/SprintPhoneExtension;->UNINIT:I

    new-instance v0, Lcom/android/phone/SprintPhoneExtension$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/phone/SprintPhoneExtension$MyHandler;-><init>(Lcom/android/phone/SprintPhoneExtension$1;)V

    sput-object v0, Lcom/android/phone/SprintPhoneExtension;->mHandler:Lcom/android/phone/SprintPhoneExtension$MyHandler;

    const-string v0, "file_exists"

    sput-object v0, Lcom/android/phone/SprintPhoneExtension;->FILE_EXISTS:Ljava/lang/String;

    const-string v0, "home_only"

    sput-object v0, Lcom/android/phone/SprintPhoneExtension;->HOME_ONLY:Ljava/lang/String;

    const-string v0, "CODE"

    sput-object v0, Lcom/android/phone/SprintPhoneExtension;->CHAMELEON_CODE:Ljava/lang/String;

    const-string v0, "310120"

    sput-object v0, Lcom/android/phone/SprintPhoneExtension;->SPRINT_CODE:Ljava/lang/String;

    const-string v0, "311490"

    sput-object v0, Lcom/android/phone/SprintPhoneExtension;->VIRGIN_MOBILE_USA_CODE:Ljava/lang/String;

    const-string v0, "311870"

    sput-object v0, Lcom/android/phone/SprintPhoneExtension;->BOOST_CODE:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/phone/SprintPhoneExtension;->mRejectCallWithMessagePendingArrayList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chameleonPreconfig(Landroid/content/Intent;)V
    .locals 5
    .param p0    # Landroid/content/Intent;

    const/4 v4, 0x1

    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->CHAMELEON_CODE:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chameleonPreconfig - hasChameleonCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    if-eqz v1, :cond_3

    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->CHAMELEON_CODE:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chameleonPreconfig - chameleonCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->SPRINT_CODE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "chameleonPreconfig - chameleonCode is sprint_code"

    invoke-static {v2, v4}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->VIRGIN_MOBILE_USA_CODE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->BOOST_CODE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const-string v2, "chameleonPreconfig - chameleonCode is sprint_mvno_code"

    invoke-static {v2, v4}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->resetNetworkModeToDefault()V

    goto :goto_0

    :cond_3
    const-string v2, "chameleonPreconfig - chameleonCode is not set"

    invoke-static {v2, v4}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->resetNetworkModeToDefault()V

    goto :goto_0
.end method

.method public static checkCscChameleonFile()V
    .locals 2

    invoke-static {}, Lcom/android/phone/CscParser;->getChameleonPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/SprintPhoneExtension;->existsCscChameleonFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/phone/SprintPhoneExtension;->mCscChameleonBit:I

    or-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/phone/SprintPhoneExtension;->mCscChameleonBit:I

    invoke-static {v0}, Lcom/android/phone/CscParser;->getChameleonInstance(Ljava/lang/String;)Lcom/android/phone/CscParser;

    move-result-object v1

    sput-object v1, Lcom/android/phone/SprintPhoneExtension;->mParser:Lcom/android/phone/CscParser;

    sget-object v1, Lcom/android/phone/SprintPhoneExtension;->mParser:Lcom/android/phone/CscParser;

    if-eqz v1, :cond_0

    sget v1, Lcom/android/phone/SprintPhoneExtension;->mCscChameleonBit:I

    or-int/lit8 v1, v1, 0x2

    sput v1, Lcom/android/phone/SprintPhoneExtension;->mCscChameleonBit:I

    :cond_0
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->putCscChameleonDatabase()V

    return-void
.end method

.method public static clearRejectCallWithMessagePendingList()V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "clearRejectCallWithMessagePendingList()"

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/phone/SprintPhoneExtension;->mRejectCallWithMessagePendingArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/SprintPhoneExtension;->mRejectCallWithMessagePendingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/phone/SprintPhoneExtension;->mRejectCallWithMessagePendingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, "mRejectCallWithMessagePendingArrayList.clear()"

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private static cscChameleonEnable()Z
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "csc_chameleon_enable"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x3

    sget v5, Lcom/android/phone/SprintPhoneExtension;->mCscChameleonBit:I

    and-int/lit8 v5, v5, 0x3

    if-ne v4, v5, :cond_0

    move v0, v2

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cscChameleonEnable - cscChameleonEnableFeature : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cscChameleonBit : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mCscChameleonBit : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/phone/SprintPhoneExtension;->mCscChameleonBit:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v2

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public static cscChameleonUpdateCallSettings(Landroid/content/Intent;)V
    .locals 6
    .param p0    # Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v2, "cscChameleonUpdateCallSettings"

    invoke-static {v2, v4}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->FILE_EXISTS:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->FILE_EXISTS:Ljava/lang/String;

    invoke-virtual {p0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->HOME_ONLY:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cscChameleonUpdateCallSettings - file_exists : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " home_only : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    if-eqz v0, :cond_3

    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->HOME_ONLY:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v4}, Lcom/android/phone/SprintPhoneExtension;->systemSelectRoamingType(I)V

    const-string v2, "reset_network_mode_to_chameleon"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v5}, Lcom/android/phone/SprintPhoneExtension;->setPreferredNetworkModeEntry(Z)V

    invoke-static {v5}, Lcom/android/phone/SprintPhoneExtension;->setSystemSelectHomeOnlyEntry(Z)V

    invoke-static {v5}, Lcom/android/phone/SprintPhoneExtension;->setNetworkModeToChameleonCode(Z)V

    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/android/phone/SprintPhoneExtension;->chameleonPreconfig(Landroid/content/Intent;)V

    return-void

    :cond_1
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v5}, Lcom/android/phone/SprintPhoneExtension;->systemSelectRoamingType(I)V

    const-string v2, "reset_network_mode_to_chameleon"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v4}, Lcom/android/phone/SprintPhoneExtension;->setPreferredNetworkModeEntry(Z)V

    invoke-static {v4}, Lcom/android/phone/SprintPhoneExtension;->setSystemSelectHomeOnlyEntry(Z)V

    invoke-static {v4}, Lcom/android/phone/SprintPhoneExtension;->setNetworkModeToChameleonCode(Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->systemSelectSalesCode()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->systemSelectSalesCode()V

    goto :goto_0

    :cond_4
    const-string v2, "cscChameleonUpdateCallSettings - file_exists is not set"

    invoke-static {v2, v4}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private static existsCscChameleonFile(Ljava/lang/String;)Z
    .locals 2
    .param p0    # Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static getDataRoamingGuardInstance()Lcom/android/phone/DataRoamingGuard;
    .locals 1

    sget-object v0, Lcom/android/phone/SprintPhoneExtension;->mDataRoamingGuard:Lcom/android/phone/DataRoamingGuard;

    return-object v0
.end method

.method private static getPhoneNameKey()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPhoneNameKey : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/SprintPhoneExtension;->mPhoneNameKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/phone/SprintPhoneExtension;->mPhoneNameKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getSecureSettingBoolean(Ljava/lang/String;I)Z
    .locals 2
    .param p0    # Ljava/lang/String;
    .param p1    # I

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p0, p1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSecureSettingValueInt(Ljava/lang/String;I)I
    .locals 1
    .param p0    # Ljava/lang/String;
    .param p1    # I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getVisualVoicemailEnabled()Z
    .locals 1

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->cscChameleonEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->hasVisualVoicemail()Z

    move-result v0

    return v0
.end method

.method public static hasVisualVoicemail()Z
    .locals 6

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v4, Lcom/android/phone/SprintPhoneExtension;->VISUAL_VOICEMAIL_PACKAGE:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-boolean v3, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static isDomesticRoamingInService()Z
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->IsDomesticRoaming()Z

    move-result v0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_0

    move v2, v3

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StateInService : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / isDomesticRoaming : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v3

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method public static isDomesticRoamingSettingInService()Z
    .locals 5

    const/4 v2, 0x1

    const-string v3, "roam_guard_call_domestic"

    invoke-static {v3, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isDomesticRoamingInService()Z

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DomesticCallGuardEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / isDomesticRoamingInService : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isInternationalRoamingInService()Z
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->IsInternationalRoaming()Z

    move-result v0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_0

    move v2, v3

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StateInService : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / isInternationalRoaming : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v3

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method public static isInternationalRoamingInServiceGsm()Z
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_0

    move v2, v3

    :goto_0
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StateInService : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / roaming : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    if-eqz v2, :cond_1

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

.method public static isInternationalRoamingSettingInService()Z
    .locals 5

    const/4 v2, 0x1

    const-string v3, "roam_guard_call_international"

    invoke-static {v3, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingInService()Z

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InternationalCallGuardEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / isInternationalRoamingInService : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isInternationalRoamingSettingInServiceGsm()Z
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    if-nez v6, :cond_0

    move v3, v4

    :goto_0
    const-string v6, "sprint_gsm_voice_guard"

    invoke-static {v6, v4}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StateInService : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / internationalCallGuardEnabledGsm : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / roaming : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    :goto_1
    return v4

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1
.end method

.method public static isNorthAmericanDialingPlanCountry()Z
    .locals 10

    const/4 v7, 0x1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    if-nez v6, :cond_1

    const-string v8, "isNorthAmericanDialingPlanCountry - TelephonyManager is null"

    invoke-static {v8, v7}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return v7

    :cond_1
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    if-nez v6, :cond_2

    const-string v8, "isNorthAmericanDialingPlanCountry - NetworkCountryIso is null"

    invoke-static {v8, v7}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NetworkCountryIso : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080085

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static isPhoneNameKeyChanged(Ljava/lang/String;)Z
    .locals 4
    .param p0    # Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->mPhoneNameKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPhoneNameKeyChanged - mPhoneNameKey : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/SprintPhoneExtension;->mPhoneNameKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / phoneName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->getPhoneNameKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isRoamingInService()Z
    .locals 1

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isDomesticRoamingInService()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRoamingSettingInService()Z
    .locals 1

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isDomesticRoamingSettingInService()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingSettingInService()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1
    .param p0    # Ljava/lang/String;
    .param p1    # Z

    const-string v0, "SprintPhoneExtension"

    invoke-static {v0, p0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private static putAbbreviatedDialingCodesDefaultTable()V
    .locals 4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v3, "abbreviated_dialing_codes_table_sprint"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f08007d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f08007e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/android/phone/SprintPhoneExtension;->mCscChameleonBit:I

    or-int/lit8 v3, v3, 0x4

    sput v3, Lcom/android/phone/SprintPhoneExtension;->mCscChameleonBit:I

    :cond_0
    :goto_0
    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->putAbbreviatedDialingCodesTable([Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v3, "abbreviated_dialing_codes_table_virgin"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f08007f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f080080

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/android/phone/SprintPhoneExtension;->mCscChameleonBit:I

    or-int/lit8 v3, v3, 0x8

    sput v3, Lcom/android/phone/SprintPhoneExtension;->mCscChameleonBit:I

    goto :goto_0

    :cond_2
    const-string v3, "abbreviated_dialing_codes_table_boost"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f080081

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f080082

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/android/phone/SprintPhoneExtension;->mCscChameleonBit:I

    or-int/lit8 v3, v3, 0x10

    sput v3, Lcom/android/phone/SprintPhoneExtension;->mCscChameleonBit:I

    goto :goto_0
.end method

.method private static putAbbreviatedDialingCodesTable([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p0    # [Ljava/lang/String;
    .param p1    # [Ljava/lang/String;

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    array-length v1, p0

    array-length v2, p1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/android/phone/SprintPhoneExtension;->mAbbreviatedDialingCodesTable:Ljava/util/Hashtable;

    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static putCscChameleonDatabase()V
    .locals 1

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->cscChameleonEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->setAbbreviatedDialingCodesTable()V

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->putVisualVoicemailEnabled()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->putAbbreviatedDialingCodesDefaultTable()V

    goto :goto_0
.end method

.method private static putGenericAbbreviatedDialingCodesTable()V
    .locals 4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f080084

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->putAbbreviatedDialingCodesTable([Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private static putVisualVoicemailEnabled()V
    .locals 4

    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->mParser:Lcom/android/phone/CscParser;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->mParser:Lcom/android/phone/CscParser;

    sget-object v3, Lcom/android/phone/SprintPhoneExtension;->VISUAL_VOICEMAIL_NODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/phone/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->mParser:Lcom/android/phone/CscParser;

    sget-object v3, Lcom/android/phone/SprintPhoneExtension;->VISUAL_VOICEMAIL_PACKAGE_NODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/phone/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    sget-boolean v2, Lcom/android/phone/SprintPhoneExtension;->mVisualVoicemailEnabled:Z

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    sput-boolean v2, Lcom/android/phone/SprintPhoneExtension;->mVisualVoicemailEnabled:Z

    :cond_0
    if-eqz v1, :cond_1

    sget-boolean v2, Lcom/android/phone/SprintPhoneExtension;->mVisualVoicemailEnabled:Z

    const-string v3, "E"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    sput-boolean v2, Lcom/android/phone/SprintPhoneExtension;->mVisualVoicemailEnabled:Z

    :cond_1
    return-void
.end method

.method private static resetNetworkModeToDefault()V
    .locals 6

    const/16 v5, 0x8

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    sget v4, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "reset_network_mode_to_default"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    if-ne v2, v1, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->mHandler:Lcom/android/phone/SprintPhoneExtension$MyHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public static sendRejectCallWithMessagePendingList()V
    .locals 5

    const/4 v4, 0x1

    const-string v2, "sendRejectCallWithMessagePendingList()"

    invoke-static {v2, v4}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->mRejectCallWithMessagePendingArrayList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->mRejectCallWithMessagePendingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendRejectCallWithMessagePendingList() - size() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/SprintPhoneExtension;->mRejectCallWithMessagePendingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->mRejectCallWithMessagePendingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->mRejectCallWithMessagePendingArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/SprintPhoneExtension$RejectCallWithMessagePendingList;

    invoke-virtual {v1}, Lcom/android/phone/SprintPhoneExtension$RejectCallWithMessagePendingList;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/phone/SprintPhoneExtension$RejectCallWithMessagePendingList;->getPresetMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/SprintPhoneExtension;->sendRejectCallWithMessagePendingList(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->clearRejectCallWithMessagePendingList()V

    :cond_1
    return-void
.end method

.method private static sendRejectCallWithMessagePendingList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    const-string v2, "sendRejectCallWithMessagePendingList"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    const-string v2, "smsto"

    const/4 v3, 0x0

    invoke-static {v2, p0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.RESPOND_VIA_MESSAGE"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private static setAbbreviatedDialingCodesTable()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->putGenericAbbreviatedDialingCodesTable()V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08007c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/android/phone/SprintPhoneExtension;->mParser:Lcom/android/phone/CscParser;

    if-eqz v7, :cond_1

    move-object v2, v1

    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    sget-object v7, Lcom/android/phone/SprintPhoneExtension;->mParser:Lcom/android/phone/CscParser;

    invoke-virtual {v7, v0}, Lcom/android/phone/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v7, 0x2

    array-length v8, v6

    if-ne v7, v8, :cond_0

    aget-object v7, v6, v10

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    aget-object v7, v6, v11

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/android/phone/SprintPhoneExtension;->mAbbreviatedDialingCodesTable:Ljava/util/Hashtable;

    aget-object v8, v6, v10

    aget-object v9, v6, v11

    invoke-virtual {v7, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static setDataRoamingGuardInstance(Lcom/android/phone/DataRoamingGuard;)V
    .locals 2
    .param p0    # Lcom/android/phone/DataRoamingGuard;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataRoamingGuardInstance : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    sput-object p0, Lcom/android/phone/SprintPhoneExtension;->mDataRoamingGuard:Lcom/android/phone/DataRoamingGuard;

    return-void
.end method

.method private static setNetworkModeToChameleonCode(Z)V
    .locals 8
    .param p0    # Z

    const/4 v7, 0x1

    const/16 v6, 0xa

    const/16 v5, 0x8

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    sget v4, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz p0, :cond_1

    if-eq v5, v1, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->mHandler:Lcom/android/phone/SprintPhoneExtension$MyHandler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eq v6, v1, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->mHandler:Lcom/android/phone/SprintPhoneExtension$MyHandler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public static setPhoneNameKey()V
    .locals 3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPhoneNameKey - mPhoneNameKey : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->mPhoneNameKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / phoneTypeName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/android/phone/SprintPhoneExtension;->isPhoneNameKeyChanged(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/phone/SprintPhoneExtension;->setPhoneNameKey(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setPhoneNameKey(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPhoneNameKey : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    sput-object p0, Lcom/android/phone/SprintPhoneExtension;->mPhoneNameKey:Ljava/lang/String;

    return-void
.end method

.method private static setPreferredNetworkModeEntry(Z)V
    .locals 2
    .param p0    # Z

    const-string v0, "network_mode_cdma_lte"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/PhoneFeature;->putFeature(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "network_mode_automatic_cdma_lte_gsm"

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/services/telephony/common/PhoneFeature;->putFeature(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setSecureSettingDataRoaming()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phoneType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / data_roaming - domestic_cdma_data_roaming_setting : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "roam_setting_data_domestic"

    invoke-static {v2, v3}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phoneType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / data_roaming - international_cdma_data_roaming_setting : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "roam_setting_data_international"

    invoke-static {v2, v3}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    const-string v1, "roam_setting_data_domestic"

    invoke-static {v1, v3}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "roam_setting_data_international"

    invoke-static {v1, v3}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "data_roaming"

    invoke-static {v1, v4}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phoneType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / data_roaming : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data_roaming"

    invoke-static {v2, v3}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    return-void

    :cond_1
    const-string v1, "data_roaming"

    invoke-static {v1, v3}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    if-eq v0, v4, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phoneType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / data_roaming - international_gsm_data_roaming_setting : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sprint_gsm_data_roaming"

    invoke-static {v2, v3}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    const-string v1, "sprint_gsm_data_roaming"

    invoke-static {v1, v3}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "data_roaming"

    invoke-static {v1, v4}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    const-string v1, "data_roaming"

    invoke-static {v1, v3}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setSecureSettingValue(Ljava/lang/String;I)V
    .locals 1
    .param p0    # Ljava/lang/String;
    .param p1    # I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setShowCallRoamingGuardDialog(Z)V
    .locals 2
    .param p0    # Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShowCallRoamingGuardDialog : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/SprintPhoneExtension;->log(Ljava/lang/String;Z)V

    sput-boolean p0, Lcom/android/phone/SprintPhoneExtension;->mShowCallRoamingGuardDialog:Z

    return-void
.end method

.method private static setSystemSelectHomeOnlyEntry(Z)V
    .locals 2
    .param p0    # Z

    const-string v0, "system_select_home_only_entry"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/PhoneFeature;->putFeature(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method private static systemSelectAutomatic()V
    .locals 4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const-string v1, "roaming_settings"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const/4 v1, 0x5

    sget-object v2, Lcom/android/phone/SprintPhoneExtension;->mHandler:Lcom/android/phone/SprintPhoneExtension$MyHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    return-void
.end method

.method private static systemSelectHomeOnly()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const-string v1, "roaming_settings"

    invoke-static {v1, v3}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    sget-object v1, Lcom/android/phone/SprintPhoneExtension;->mHandler:Lcom/android/phone/SprintPhoneExtension$MyHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    return-void
.end method

.method private static systemSelectRoamingType(I)V
    .locals 1
    .param p0    # I

    if-nez p0, :cond_1

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->systemSelectHomeOnly()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->systemSelectAutomatic()V

    goto :goto_0
.end method

.method private static systemSelectSalesCode()V
    .locals 1

    const-string v0, "system_select_home_only"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->systemSelectHomeOnly()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->systemSelectAutomatic()V

    goto :goto_0
.end method

.method public static updateVisualVoicemailEnabled()V
    .locals 3

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->getVisualVoicemailEnabled()Z

    move-result v0

    const-string v1, "remove_voicemail_category"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/services/telephony/common/PhoneFeature;->putFeature(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "visual_voicemail_enable"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/services/telephony/common/PhoneFeature;->putFeature(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
