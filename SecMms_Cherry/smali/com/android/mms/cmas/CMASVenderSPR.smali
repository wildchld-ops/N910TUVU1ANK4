.class public Lcom/android/mms/cmas/CMASVenderSPR;
.super Lcom/android/mms/cmas/CMASVender;
.source "CMASVenderSPR.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/mms/cmas/CMASVender;-><init>()V

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSPR;->mCMASEnableMenuTestCategory:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSPR;->mCMASSyncToServer4ExtremePriority:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderSPR;->mCmasPresidentialThreaded:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderSPR;->mCmasPresidentialOnTop:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSPR;->mCmasAllInOneThreaded:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSPR;->mCmasAlertTopUnlessRead:Z

    const/16 v0, 0x1f

    sput v0, Lcom/android/mms/cmas/CMASVenderSPR;->mCmasWhichMsgOnTop:I

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSPR;->mCmasFontSizePref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSPR;->mCmasPresidentialOPTOUTPref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSPR;->mCmasNotificationPref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSPR;->mCmasVibrationPreviewPref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSPR;->mCmasNotiDateDescription:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSPR;->mCmasTestMessageWithHiddenMenu:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSPR;->mCmasAlertSoundMenu:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSPR;->mCmasMessageTMOMenuTextFeature:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderSPR;->mCMASDisplayNextMsg:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderSPR;->mCmasMessageDuplicateMessageCheckFeature:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderSPR;->mEnableCmas:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSPR;->mCmasTestMode:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderSPR;->mCDMACMASEnable:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSPR;->mGSMCMASEnable:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderSPR;->mCMASDisplayLatest:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSPR;->mCMASDialogOKisDismiss:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSPR;->mUseAnotherCMASApp:Z

    const/4 v0, 0x4

    sput v0, Lcom/android/mms/cmas/CMASVenderSPR;->mCmasProvider:I

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderSPR;->mUseNewCmasPrefix:Z

    return-void
.end method
