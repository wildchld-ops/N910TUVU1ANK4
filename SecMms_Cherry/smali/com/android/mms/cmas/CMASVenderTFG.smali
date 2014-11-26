.class public Lcom/android/mms/cmas/CMASVenderTFG;
.super Lcom/android/mms/cmas/CMASVender;
.source "CMASVenderTFG.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/mms/cmas/CMASVender;-><init>()V

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTFG;->mCMASEnableMenuTestCategory:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTFG;->mCMASSyncToServer4ExtremePriority:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTFG;->mCmasPresidentialThreaded:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTFG;->mCmasPresidentialOnTop:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderTFG;->mCmasAllInOneThreaded:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTFG;->mCmasAlertTopUnlessRead:Z

    const/16 v0, 0x1f

    sput v0, Lcom/android/mms/cmas/CMASVenderTFG;->mCmasWhichMsgOnTop:I

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTFG;->mCmasFontSizePref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTFG;->mCmasPresidentialOPTOUTPref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTFG;->mCmasNotificationPref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTFG;->mCmasVibrationPreviewPref:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderTFG;->mCmasNotiDateDescription:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTFG;->mCmasTestMessageWithHiddenMenu:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTFG;->mCmasAlertSoundMenu:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTFG;->mCmasMessageTMOMenuTextFeature:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderTFG;->mCMASDisplayNextMsg:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTFG;->mCmasMessageDuplicateMessageCheckFeature:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderTFG;->mEnableCmas:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTFG;->mCmasTestMode:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTFG;->mCDMACMASEnable:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderTFG;->mGSMCMASEnable:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTFG;->mCMASDisplayLatest:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTFG;->mCMASDialogOKisDismiss:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTFG;->mUseAnotherCMASApp:Z

    const/4 v0, 0x7

    sput v0, Lcom/android/mms/cmas/CMASVenderTFG;->mCmasProvider:I

    return-void
.end method
