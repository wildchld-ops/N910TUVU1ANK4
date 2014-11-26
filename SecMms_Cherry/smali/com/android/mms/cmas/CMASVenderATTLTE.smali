.class public Lcom/android/mms/cmas/CMASVenderATTLTE;
.super Lcom/android/mms/cmas/CMASVender;
.source "CMASVenderATTLTE.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/mms/cmas/CMASVender;-><init>()V

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCMASEnableMenuTestCategory:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCMASSyncToServer4ExtremePriority:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCmasPresidentialThreaded:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCmasPresidentialOnTop:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCmasAllInOneThreaded:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCmasAlertTopUnlessRead:Z

    const/16 v0, 0x1f

    sput v0, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCmasWhichMsgOnTop:I

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCmasFontSizePref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCmasPresidentialOPTOUTPref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCmasNotificationPref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCmasVibrationPreviewPref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCmasNotiDateDescription:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCmasTestMessageWithHiddenMenu:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCmasAlertSoundMenu:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCmasMessageTMOMenuTextFeature:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCMASDisplayNextMsg:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCmasMessageDuplicateMessageCheckFeature:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderATTLTE;->mEnableCmas:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCmasTestMode:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCDMACMASEnable:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderATTLTE;->mGSMCMASEnable:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCMASDisplayLatest:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCMASDialogOKisDismiss:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATTLTE;->mUseAnotherCMASApp:Z

    const/4 v0, 0x2

    sput v0, Lcom/android/mms/cmas/CMASVenderATTLTE;->mCmasProvider:I

    return-void
.end method
