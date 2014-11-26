.class public Lcom/android/mms/cmas/CMASVenderKT;
.super Lcom/android/mms/cmas/CMASVender;
.source "CMASVenderKT.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/mms/cmas/CMASVender;-><init>()V

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderKT;->mCMASEnableMenuTestCategory:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderKT;->mCMASSyncToServer4ExtremePriority:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderKT;->mCmasPresidentialThreaded:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderKT;->mCmasPresidentialOnTop:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderKT;->mCmasAllInOneThreaded:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderKT;->mCmasAlertTopUnlessRead:Z

    const/16 v0, 0x1f

    sput v0, Lcom/android/mms/cmas/CMASVenderKT;->mCmasWhichMsgOnTop:I

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderKT;->mCmasFontSizePref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderKT;->mCmasPresidentialOPTOUTPref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderKT;->mCmasNotificationPref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderKT;->mCmasVibrationPreviewPref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderKT;->mCmasNotiDateDescription:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderKT;->mCmasTestMessageWithHiddenMenu:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderKT;->mCmasAlertSoundMenu:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderKT;->mCmasMessageTMOMenuTextFeature:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderKT;->mCMASDisplayNextMsg:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderKT;->mCmasMessageDuplicateMessageCheckFeature:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderKT;->mEnableCmas:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderKT;->mCmasTestMode:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderKT;->mCDMACMASEnable:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderKT;->mGSMCMASEnable:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderKT;->mCMASDisplayLatest:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderKT;->mCMASDialogOKisDismiss:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderKT;->mUseAnotherCMASApp:Z

    const/16 v0, 0x9

    sput v0, Lcom/android/mms/cmas/CMASVenderKT;->mCmasProvider:I

    return-void
.end method
