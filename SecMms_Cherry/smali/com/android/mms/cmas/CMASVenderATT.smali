.class public Lcom/android/mms/cmas/CMASVenderATT;
.super Lcom/android/mms/cmas/CMASVender;
.source "CMASVenderATT.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/mms/cmas/CMASVender;-><init>()V

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mCMASEnableMenuTestCategory:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mCMASSyncToServer4ExtremePriority:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mCmasPresidentialThreaded:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mCmasPresidentialOnTop:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mCmasAllInOneThreaded:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mCmasAlertTopUnlessRead:Z

    const/16 v0, 0x1f

    sput v0, Lcom/android/mms/cmas/CMASVenderATT;->mCmasWhichMsgOnTop:I

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mCmasFontSizePref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mCmasPresidentialOPTOUTPref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mCmasNotificationPref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mCmasVibrationPreviewPref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mCmasNotiDateDescription:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mCmasTestMessageWithHiddenMenu:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mCmasAlertSoundMenu:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mCmasMessageTMOMenuTextFeature:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderATT;->mCMASDisplayNextMsg:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderATT;->mCmasMessageDuplicateMessageCheckFeature:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mEnableCmas:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mCmasTestMode:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mCDMACMASEnable:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mGSMCMASEnable:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mCMASDisplayLatest:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mCMASDialogOKisDismiss:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mUseAnotherCMASApp:Z

    const/4 v0, 0x2

    sput v0, Lcom/android/mms/cmas/CMASVenderATT;->mCmasProvider:I

    return-void
.end method
