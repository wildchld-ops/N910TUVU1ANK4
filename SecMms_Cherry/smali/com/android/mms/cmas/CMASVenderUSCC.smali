.class public Lcom/android/mms/cmas/CMASVenderUSCC;
.super Lcom/android/mms/cmas/CMASVender;
.source "CMASVenderUSCC.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/mms/cmas/CMASVender;-><init>()V

    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderUSCC;->mCMASEnableMenuTestCategory:Z

    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderUSCC;->mCMASSyncToServer4ExtremePriority:Z

    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderUSCC;->mCmasPresidentialThreaded:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderUSCC;->mCmasPresidentialOnTop:Z

    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderUSCC;->mCmasAllInOneThreaded:Z

    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderUSCC;->mCmasAlertTopUnlessRead:Z

    sput v1, Lcom/android/mms/cmas/CMASVenderUSCC;->mCmasWhichMsgOnTop:I

    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderUSCC;->mCmasFontSizePref:Z

    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderUSCC;->mCmasPresidentialOPTOUTPref:Z

    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderUSCC;->mCmasNotificationPref:Z

    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderUSCC;->mCmasVibrationPreviewPref:Z

    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderUSCC;->mCmasNotiDateDescription:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderUSCC;->mCmasTestMessageWithHiddenMenu:Z

    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderUSCC;->mCmasAlertSoundMenu:Z

    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderUSCC;->mCmasMessageTMOMenuTextFeature:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderUSCC;->mCMASDisplayNextMsg:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderUSCC;->mCmasMessageDuplicateMessageCheckFeature:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderUSCC;->mEnableCmas:Z

    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderUSCC;->mCmasTestMode:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderUSCC;->mCDMACMASEnable:Z

    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderUSCC;->mGSMCMASEnable:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderUSCC;->mCMASDisplayLatest:Z

    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderUSCC;->mCMASDialogOKisDismiss:Z

    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderUSCC;->mUseAnotherCMASApp:Z

    const/4 v0, 0x5

    sput v0, Lcom/android/mms/cmas/CMASVenderUSCC;->mCmasProvider:I

    return-void
.end method
