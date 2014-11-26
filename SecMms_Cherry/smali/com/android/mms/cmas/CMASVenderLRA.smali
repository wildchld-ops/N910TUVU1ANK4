.class public Lcom/android/mms/cmas/CMASVenderLRA;
.super Lcom/android/mms/cmas/CMASVender;
.source "CMASVenderLRA.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/mms/cmas/CMASVender;-><init>()V

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLRA;->mCMASEnableMenuTestCategory:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLRA;->mCMASSyncToServer4ExtremePriority:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLRA;->mCmasPresidentialThreaded:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLRA;->mCmasPresidentialOnTop:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLRA;->mCmasAllInOneThreaded:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLRA;->mCmasAlertTopUnlessRead:Z

    const/16 v0, 0x1f

    sput v0, Lcom/android/mms/cmas/CMASVenderLRA;->mCmasWhichMsgOnTop:I

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLRA;->mCmasFontSizePref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLRA;->mCmasPresidentialOPTOUTPref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLRA;->mCmasNotificationPref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLRA;->mCmasVibrationPreviewPref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLRA;->mCmasNotiDateDescription:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderLRA;->mCmasTestMessageWithHiddenMenu:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLRA;->mCmasAlertSoundMenu:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLRA;->mCmasMessageTMOMenuTextFeature:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderLRA;->mCMASDisplayNextMsg:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderLRA;->mCmasMessageDuplicateMessageCheckFeature:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderLRA;->mEnableCmas:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLRA;->mCmasTestMode:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderLRA;->mCDMACMASEnable:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLRA;->mGSMCMASEnable:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderLRA;->mCMASDisplayLatest:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLRA;->mCMASDialogOKisDismiss:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLRA;->mUseAnotherCMASApp:Z

    const/16 v0, 0xb

    sput v0, Lcom/android/mms/cmas/CMASVenderLRA;->mCmasProvider:I

    return-void
.end method
