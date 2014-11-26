.class public Lcom/android/mms/cmas/CMASVender;
.super Ljava/lang/Object;
.source "CMASVender.java"


# static fields
.field protected static mCDMACMASEnable:Z

.field protected static mCMASDialogOKisDismiss:Z

.field protected static mCMASDisplayLatest:Z

.field protected static mCMASDisplayNextMsg:Z

.field protected static mCMASEnableMenuTestCategory:Z

.field protected static mCMASSyncToServer4ExtremePriority:Z

.field protected static mCmasAlertSoundMenu:Z

.field protected static mCmasAlertTopUnlessRead:Z

.field protected static mCmasAllInOneThreaded:Z

.field protected static mCmasFontSizePref:Z

.field protected static mCmasMessageDuplicateMessageCheckFeature:Z

.field protected static mCmasMessageTMOMenuTextFeature:Z

.field protected static mCmasNotiDateDescription:Z

.field protected static mCmasNotificationPref:Z

.field protected static mCmasPresidentialOPTOUTPref:Z

.field protected static mCmasPresidentialOnTop:Z

.field protected static mCmasPresidentialThreaded:Z

.field protected static mCmasProvider:I

.field protected static mCmasTestMessageWithHiddenMenu:Z

.field protected static mCmasTestMode:Z

.field protected static mCmasVibrationPreviewPref:Z

.field protected static mCmasWhichMsgOnTop:I

.field protected static mEnableCmas:Z

.field protected static mGSMCMASEnable:Z

.field protected static mUseAnotherCMASApp:Z

.field protected static mUseNewCmasPrefix:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mCMASEnableMenuTestCategory:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mCMASSyncToServer4ExtremePriority:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mCmasPresidentialThreaded:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mCmasPresidentialOnTop:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mCmasAllInOneThreaded:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mCmasAlertTopUnlessRead:Z

    const/16 v0, 0x1f

    sput v0, Lcom/android/mms/cmas/CMASVender;->mCmasWhichMsgOnTop:I

    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mCmasFontSizePref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mCmasPresidentialOPTOUTPref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mCmasNotificationPref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mCmasVibrationPreviewPref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mCmasNotiDateDescription:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mCmasTestMessageWithHiddenMenu:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mCmasAlertSoundMenu:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mCmasMessageTMOMenuTextFeature:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCMASDisplayNextMsg:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mCmasMessageDuplicateMessageCheckFeature:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mEnableCmas:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mCmasTestMode:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mCDMACMASEnable:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mGSMCMASEnable:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mCMASDisplayLatest:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mCMASDialogOKisDismiss:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mUseAnotherCMASApp:Z

    sput v1, Lcom/android/mms/cmas/CMASVender;->mCmasProvider:I

    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mUseNewCmasPrefix:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCDMACMASEnable()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCDMACMASEnable:Z

    return v0
.end method

.method public getCDMADisplayLatestEnable()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCMASDisplayLatest:Z

    return v0
.end method

.method public getCMASDialogOKisDismiss()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCMASDialogOKisDismiss:Z

    return v0
.end method

.method public getCMASProvider()I
    .locals 1

    sget v0, Lcom/android/mms/cmas/CMASVender;->mCmasProvider:I

    return v0
.end method

.method public getCmasAlertSoundMenu()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCmasAlertSoundMenu:Z

    return v0
.end method

.method public getCmasAlertTopUnlessRead()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCmasAlertTopUnlessRead:Z

    return v0
.end method

.method public getCmasAllInOneThreaded()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCmasAllInOneThreaded:Z

    return v0
.end method

.method public getCmasFontSizePref()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCmasFontSizePref:Z

    return v0
.end method

.method public getCmasMessageDuplicateMessageCheckFeature()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCmasMessageDuplicateMessageCheckFeature:Z

    return v0
.end method

.method public getCmasMessagePriorityCheckFeature()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCMASDisplayNextMsg:Z

    return v0
.end method

.method public getCmasMessageServereBelongToExtreme()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCMASSyncToServer4ExtremePriority:Z

    return v0
.end method

.method public getCmasNotiDateDescription()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCmasNotiDateDescription:Z

    return v0
.end method

.method public getCmasNotificationPref()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCmasNotificationPref:Z

    return v0
.end method

.method public getCmasPresidentialOPTOUTPref()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCmasPresidentialOPTOUTPref:Z

    return v0
.end method

.method public getCmasPresidentialOnTop()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCmasPresidentialOnTop:Z

    return v0
.end method

.method public getCmasPresidentialThreaded()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCmasPresidentialThreaded:Z

    return v0
.end method

.method public getCmasTestMessageWithHiddenMenu()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCmasTestMessageWithHiddenMenu:Z

    return v0
.end method

.method public getCmasTestMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCmasTestMode:Z

    return v0
.end method

.method public getCmasTestSPRFeature()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCMASEnableMenuTestCategory:Z

    return v0
.end method

.method public getCmasVibrationPreviewPref()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCmasVibrationPreviewPref:Z

    return v0
.end method

.method public getCmasWhichMsgOnTop()I
    .locals 1

    sget v0, Lcom/android/mms/cmas/CMASVender;->mCmasWhichMsgOnTop:I

    return v0
.end method

.method public getEnableCmas()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mEnableCmas:Z

    return v0
.end method

.method public getGSMCMASEnable()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mGSMCMASEnable:Z

    return v0
.end method

.method public getUseAnotherCMASApp()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mUseAnotherCMASApp:Z

    return v0
.end method

.method public getmCmasMessageTMOMenuTextFeature()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCmasMessageTMOMenuTextFeature:Z

    return v0
.end method

.method public isTMOCMASFeatureEnabled()Z
    .locals 2

    const/4 v0, 0x1

    sget v1, Lcom/android/mms/cmas/CMASVender;->mCmasProvider:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public useNewCmasPrefix()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mUseNewCmasPrefix:Z

    return v0
.end method
