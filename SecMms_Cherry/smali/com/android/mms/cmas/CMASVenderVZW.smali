.class public Lcom/android/mms/cmas/CMASVenderVZW;
.super Lcom/android/mms/cmas/CMASVender;
.source "CMASVenderVZW.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/mms/cmas/CMASVender;-><init>()V

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderVZW;->mCMASEnableMenuTestCategory:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderVZW;->mCMASSyncToServer4ExtremePriority:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderVZW;->mCmasPresidentialThreaded:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderVZW;->mCmasPresidentialOnTop:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderVZW;->mCmasAllInOneThreaded:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderVZW;->mCmasAlertTopUnlessRead:Z

    const/16 v0, 0x1f

    sput v0, Lcom/android/mms/cmas/CMASVenderVZW;->mCmasWhichMsgOnTop:I

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderVZW;->mCmasFontSizePref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderVZW;->mCmasPresidentialOPTOUTPref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderVZW;->mCmasNotificationPref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderVZW;->mCmasVibrationPreviewPref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderVZW;->mCmasNotiDateDescription:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderVZW;->mCmasTestMessageWithHiddenMenu:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderVZW;->mCmasAlertSoundMenu:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderVZW;->mCmasMessageTMOMenuTextFeature:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderVZW;->mCMASDisplayNextMsg:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderVZW;->mCmasMessageDuplicateMessageCheckFeature:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderVZW;->mEnableCmas:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderVZW;->mCmasTestMode:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderVZW;->mCDMACMASEnable:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderVZW;->mGSMCMASEnable:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderVZW;->mCMASDisplayLatest:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderVZW;->mCMASDialogOKisDismiss:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderVZW;->mUseAnotherCMASApp:Z

    const/4 v0, 0x3

    sput v0, Lcom/android/mms/cmas/CMASVenderVZW;->mCmasProvider:I

    return-void
.end method
