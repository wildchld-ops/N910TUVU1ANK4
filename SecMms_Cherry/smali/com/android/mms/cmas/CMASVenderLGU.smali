.class public Lcom/android/mms/cmas/CMASVenderLGU;
.super Lcom/android/mms/cmas/CMASVender;
.source "CMASVenderLGU.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/mms/cmas/CMASVender;-><init>()V

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLGU;->mCMASEnableMenuTestCategory:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLGU;->mCMASSyncToServer4ExtremePriority:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLGU;->mCmasPresidentialThreaded:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLGU;->mCmasPresidentialOnTop:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLGU;->mCmasAllInOneThreaded:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLGU;->mCmasAlertTopUnlessRead:Z

    const/16 v0, 0x1f

    sput v0, Lcom/android/mms/cmas/CMASVenderLGU;->mCmasWhichMsgOnTop:I

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLGU;->mCmasFontSizePref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLGU;->mCmasPresidentialOPTOUTPref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLGU;->mCmasNotificationPref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLGU;->mCmasVibrationPreviewPref:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLGU;->mCmasNotiDateDescription:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderLGU;->mCmasTestMessageWithHiddenMenu:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLGU;->mCmasAlertSoundMenu:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLGU;->mCmasMessageTMOMenuTextFeature:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderLGU;->mCMASDisplayNextMsg:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderLGU;->mCmasMessageDuplicateMessageCheckFeature:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderLGU;->mEnableCmas:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLGU;->mCmasTestMode:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLGU;->mCDMACMASEnable:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderLGU;->mGSMCMASEnable:Z

    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderLGU;->mCMASDisplayLatest:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLGU;->mCMASDialogOKisDismiss:Z

    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderLGU;->mUseAnotherCMASApp:Z

    const/16 v0, 0xa

    sput v0, Lcom/android/mms/cmas/CMASVenderLGU;->mCmasProvider:I

    return-void
.end method
