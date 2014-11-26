.class public Lcom/android/mms/cmas/CMASVenderACG;
.super Lcom/android/mms/cmas/CMASVender;
.source "CMASVenderACG.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/mms/cmas/CMASVender;-><init>()V

    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderACG;->mCMASEnableMenuTestCategory:Z

    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderACG;->mCMASSyncToServer4ExtremePriority:Z

    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderACG;->mCmasPresidentialThreaded:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderACG;->mCmasPresidentialOnTop:Z

    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderACG;->mCmasAllInOneThreaded:Z

    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderACG;->mCmasAlertTopUnlessRead:Z

    sput v1, Lcom/android/mms/cmas/CMASVenderACG;->mCmasWhichMsgOnTop:I

    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderACG;->mCmasFontSizePref:Z

    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderACG;->mCmasPresidentialOPTOUTPref:Z

    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderACG;->mCmasNotificationPref:Z

    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderACG;->mCmasVibrationPreviewPref:Z

    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderACG;->mCmasNotiDateDescription:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderACG;->mCmasTestMessageWithHiddenMenu:Z

    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderACG;->mCmasAlertSoundMenu:Z

    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderACG;->mCmasMessageTMOMenuTextFeature:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderACG;->mCMASDisplayNextMsg:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderACG;->mCmasMessageDuplicateMessageCheckFeature:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderACG;->mEnableCmas:Z

    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderACG;->mCmasTestMode:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderACG;->mCDMACMASEnable:Z

    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderACG;->mGSMCMASEnable:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderACG;->mCMASDisplayLatest:Z

    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderACG;->mCMASDialogOKisDismiss:Z

    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderACG;->mUseAnotherCMASApp:Z

    const/16 v0, 0xc

    sput v0, Lcom/android/mms/cmas/CMASVenderACG;->mCmasProvider:I

    return-void
.end method
