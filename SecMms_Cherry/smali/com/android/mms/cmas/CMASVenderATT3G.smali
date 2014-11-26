.class public Lcom/android/mms/cmas/CMASVenderATT3G;
.super Lcom/android/mms/cmas/CMASVender;
.source "CMASVenderATT3G.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/mms/cmas/CMASVender;-><init>()V

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT3G;->mCMASEnableMenuTestCategory:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderATT3G;->mCMASSyncToServer4ExtremePriority:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT3G;->mCmasPresidentialThreaded:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT3G;->mCmasPresidentialOnTop:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderATT3G;->mCmasAllInOneThreaded:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT3G;->mCmasAlertTopUnlessRead:Z

    const/16 v0, 0x1f

    sput v0, Lcom/android/mms/cmas/CMASVenderATT3G;->mCmasWhichMsgOnTop:I

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT3G;->mCmasFontSizePref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT3G;->mCmasPresidentialOPTOUTPref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT3G;->mCmasNotificationPref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT3G;->mCmasVibrationPreviewPref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT3G;->mCmasNotiDateDescription:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT3G;->mCmasTestMessageWithHiddenMenu:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT3G;->mCmasAlertSoundMenu:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT3G;->mCmasMessageTMOMenuTextFeature:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT3G;->mCMASDisplayNextMsg:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT3G;->mCmasMessageDuplicateMessageCheckFeature:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderATT3G;->mEnableCmas:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT3G;->mCmasTestMode:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT3G;->mCDMACMASEnable:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderATT3G;->mGSMCMASEnable:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT3G;->mCMASDisplayLatest:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderATT3G;->mCMASDialogOKisDismiss:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT3G;->mUseAnotherCMASApp:Z

    const/4 v0, 0x2

    sput v0, Lcom/android/mms/cmas/CMASVenderATT3G;->mCmasProvider:I

    return-void
.end method
