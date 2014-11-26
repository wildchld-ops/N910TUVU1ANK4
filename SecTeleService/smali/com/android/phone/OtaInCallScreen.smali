.class public Lcom/android/phone/OtaInCallScreen;
.super Landroid/app/Activity;
.source "OtaInCallScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/OtaInCallScreen$OtaWidgetData;
    }
.end annotation


# instance fields
.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

.field private mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

.field private otaUtils:Lcom/android/phone/OtaUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0    # Ljava/lang/String;

    invoke-static {p0}, Lcom/android/phone/OtaInCallScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/OtaInCallScreen;)V
    .locals 0
    .param p0    # Lcom/android/phone/OtaInCallScreen;

    invoke-direct {p0}, Lcom/android/phone/OtaInCallScreen;->otaSkipActivation()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/OtaInCallScreen;)Lcom/android/phone/OtaUtils;
    .locals 1
    .param p0    # Lcom/android/phone/OtaInCallScreen;

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    return-object v0
.end method

.method private initOtaInCallScreen()V
    .locals 2

    new-instance v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;-><init>(Lcom/android/phone/OtaInCallScreen;Lcom/android/phone/OtaInCallScreen$1;)V

    iput-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    const-string v0, "OtaInCallScreen"

    const-string v1, "initOtaInCallScreen()..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    const v0, 0x7f0a016f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    const v0, 0x7f0a0170

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaTextActivate:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaTextActivate:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    const v0, 0x7f0a0171

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaTextListenProgress:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    const v0, 0x1010002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaTextProgressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaTextProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    const v0, 0x7f0a0172

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaTextSuccessFail:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    const v0, 0x7f0a016e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaUpperWidgets:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    const v1, 0x7f0a0179

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->callCardOtaButtonsListenProgress:Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    const v1, 0x7f0a0176

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->callCardOtaButtonsActivate:Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    const v1, 0x7f0a017b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->callCardOtaButtonsFailSuccess:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    const v0, 0x7f0a017a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaEndButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaEndButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    const v0, 0x7f0a0175

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, v1, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    const v0, 0x7f0a0177

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaActivateButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaActivateButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    const v0, 0x7f0a0178

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaSkipButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaSkipButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    const v0, 0x7f0a017c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaNextButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    const v0, 0x7f0a017d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaTryAgainButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    const v0, 0x7f0a0173

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/DTMFTwelveKeyDialerView;

    iput-object v0, v1, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaDtmfDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaDtmfDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "initOtaInCallScreen: couldn\'t find otaDtmfDialerView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/android/phone/DTMFTwelveKeyDialer;

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaDtmfDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;-><init>(Lcom/android/phone/OtaInCallScreen;Lcom/android/phone/DTMFTwelveKeyDialerView;)V

    iput-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->startDialerSession()V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaDtmfDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setDialer(Lcom/android/phone/DTMFTwelveKeyDialer;)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;

    const-string v0, "OtaInCallScreen"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1
    .param p0    # Ljava/lang/String;
    .param p1    # Z

    const-string v0, "OtaInCallScreen"

    invoke-static {v0, p0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private onClickOtaActivateButton()V
    .locals 1

    const-string v0, "Call Activation Clicked!"

    invoke-static {v0}, Lcom/android/phone/OtaInCallScreen;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/OtaInCallScreen;->otaPerformActivation()V

    return-void
.end method

.method private onClickOtaActivateNextButton()V
    .locals 2

    const-string v0, "Dialog Next Clicked!"

    invoke-static {v0}, Lcom/android/phone/OtaInCallScreen;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    const-string v0, "reboot_after_ota_success"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/phone/OtaInCallScreen$3;

    invoke-direct {v0, p0}, Lcom/android/phone/OtaInCallScreen$3;-><init>(Lcom/android/phone/OtaInCallScreen;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/OtaInCallScreen;->otaShowHome()V

    goto :goto_0
.end method

.method private onClickOtaActivateSkipButton()V
    .locals 5

    const-string v1, "Activation Skip Clicked!"

    invoke-static {v1}, Lcom/android/phone/OtaInCallScreen;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/android/phone/OtaInCallScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/OtaInCallScreen$1;-><init>(Lcom/android/phone/OtaInCallScreen;)V

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0901dd

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0901de

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/phone/OtaInCallScreen$2;

    invoke-direct {v4, p0}, Lcom/android/phone/OtaInCallScreen$2;-><init>(Lcom/android/phone/OtaInCallScreen;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaSkipConfirmationDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaSkipConfirmationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private onClickOtaEndButton()V
    .locals 2

    const-string v0, "Activation End Call Button Clicked!"

    invoke-static {v0}, Lcom/android/phone/OtaInCallScreen;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/OtaUtils;->setSpeaker(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v0, :cond_1

    const-string v0, "handleOtaCallEnd - Set OTA Call End stater"

    invoke-static {v0}, Lcom/android/phone/OtaInCallScreen;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->wakeUpScreen()V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v0, v1, :cond_2

    const-string v0, "- updateScreen: OTA_STATUS_ACTIVATION"

    invoke-static {v0}, Lcom/android/phone/OtaInCallScreen;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/OtaInCallScreen;->otaShowActivateScreen()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "- updateScreen: Show OTA Success Failure dialog"

    invoke-static {v0}, Lcom/android/phone/OtaInCallScreen;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/OtaInCallScreen;->otaShowSuccessFailure()V

    goto :goto_0
.end method

.method private onClickOtaTryAgainButton()V
    .locals 1

    const-string v0, "Activation Try Again Clicked!"

    invoke-static {v0}, Lcom/android/phone/OtaInCallScreen;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/OtaInCallScreen;->otaShowActivateScreen()V

    :cond_0
    return-void
.end method

.method private otaPerformActivation()V
    .locals 4

    const-string v1, "otaPerformActivation()..."

    invoke-static {v1}, Lcom/android/phone/OtaInCallScreen;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    iget-boolean v1, v1, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v1, :cond_1

    const-string v1, "OtaInCallScreen"

    const-string v2, "otaPerformActivation: not interactive!"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "tel"

    const-string v2, "*228"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallController;->placeCall(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/phone/OtaInCallScreen;->otaShowListeningScreen()V

    goto :goto_0
.end method

.method private otaScreenInitialize()V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x8

    const-string v0, "OtaInCallScreen"

    const-string v1, "otaScreenInitialize()..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v0, :cond_0

    const-string v0, "OtaInCallScreen"

    const-string v1, "otaScreenInitialize: not interactive!"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaTitle:Landroid/widget/TextView;

    const v1, 0x7f0901d9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaTextActivate:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaTextListenProgress:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaTextProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaTextSuccessFail:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->callCardOtaButtonsActivate:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->callCardOtaButtonsListenProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->callCardOtaButtonsFailSuccess:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaDtmfDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaUpperWidgets:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaSkipButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private otaShowHome()V
    .locals 3

    const-string v1, "otaShowHome()..."

    invoke-static {v1}, Lcom/android/phone/OtaInCallScreen;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v2, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContextWrapper;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private otaShowInProgressScreen()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "OtaInCallScreen"

    const-string v2, "otaShowInProgressScreen()..."

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    iget-boolean v1, v1, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v1, :cond_1

    const-string v1, "OtaInCallScreen"

    const-string v2, "otaShowInProgressScreen: not interactive!"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_PROGRESS:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v2, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    if-nez v1, :cond_2

    const-string v1, "OtaInCallScreen"

    const-string v2, "otaShowInProgressScreen: UI widgets not set up yet!"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/OtaInCallScreen;->isDialerOpened()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/OtaInCallScreen;->otaScreenInitialize()V

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaTextListenProgress:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaTextListenProgress:Landroid/widget/TextView;

    const v2, 0x7f0901e5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaTextProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->callCardOtaButtonsListenProgress:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private otaShowListeningScreen()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "OtaInCallScreen"

    const-string v2, "otaShowListeningScreen()..."

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    iget-boolean v1, v1, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v1, :cond_0

    const-string v1, "OtaInCallScreen"

    const-string v2, "otaShowListeningScreen: not interactive!"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v1, "ota_show_listening_screen"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowListeningScreen:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    :cond_1
    const-string v1, "OtaInCallScreen"

    const-string v2, "otaShowListeningScreen(): show listening screen"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/OtaInCallScreen;->otaScreenInitialize()V

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaTextListenProgress:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaTextListenProgress:Landroid/widget/TextView;

    const v2, 0x7f0901e3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaDtmfDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->callCardOtaButtonsListenProgress:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v1, v1, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_LISTENING:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v2, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    goto :goto_0

    :cond_2
    const-string v1, "OtaInCallScreen"

    const-string v2, "otaShowListeningScreen(): show progress screen"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/OtaInCallScreen;->otaShowInProgressScreen()V

    goto :goto_0
.end method

.method private otaShowProgramFailure(I)V
    .locals 2
    .param p1    # I

    const-string v0, "otaShowProgramFailure()..."

    invoke-static {v0}, Lcom/android/phone/OtaInCallScreen;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->activationCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->activationCount:I

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->activationCount:I

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowActivateFailTimes:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowActivationScreen:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "otaShowProgramFailure(): activationCount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->activationCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/OtaInCallScreen;->log(Ljava/lang/String;)V

    const-string v0, "otaShowProgramFailure(): show failure notice"

    invoke-static {v0}, Lcom/android/phone/OtaInCallScreen;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/phone/OtaInCallScreen;->otaShowProgramFailureNotice(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "otaShowProgramFailure(): show failure dialog"

    invoke-static {v0}, Lcom/android/phone/OtaInCallScreen;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/OtaInCallScreen;->otaShowProgramFailureDialog()V

    goto :goto_0
.end method

.method private otaShowProgramFailureDialog()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "otaShowProgramFailureDialog()..."

    invoke-static {v0}, Lcom/android/phone/OtaInCallScreen;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaTitle:Landroid/widget/TextView;

    const v1, 0x7f0901e2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaTextSuccessFail:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaTextSuccessFail:Landroid/widget/TextView;

    const v1, 0x7f0901e8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->callCardOtaButtonsFailSuccess:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/phone/OtaInCallScreen;->isDialerOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer()Z

    :cond_0
    return-void
.end method

.method private otaShowProgramFailureNotice(I)V
    .locals 3
    .param p1    # I

    const-string v0, "otaShowProgramFailureNotice()..."

    invoke-static {v0}, Lcom/android/phone/OtaInCallScreen;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0901e6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    :cond_0
    return-void
.end method

.method private otaShowProgramSuccessDialog()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "otaShowProgramSuccessDialog()..."

    invoke-static {v0}, Lcom/android/phone/OtaInCallScreen;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaTitle:Landroid/widget/TextView;

    const v1, 0x7f0901e1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaTextSuccessFail:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaTextSuccessFail:Landroid/widget/TextView;

    const v1, 0x7f0901e7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->callCardOtaButtonsFailSuccess:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/phone/OtaInCallScreen;->isDialerOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer()Z

    :cond_0
    return-void
.end method

.method private otaSkipActivation()V
    .locals 2

    const-string v0, "otaSkipActivation()..."

    invoke-static {v0}, Lcom/android/phone/OtaInCallScreen;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/OtaUtils;->sendOtaspResult(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public isDialerOpened()Z
    .locals 3

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mOtaCallCardDtmfDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- isDialerOpened() ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/OtaInCallScreen;->log(Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method okToDialDTMFTones()Z
    .locals 5

    iget-object v3, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    iget-object v3, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[okToDialDTMFTones] foreground state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", canDial: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/OtaInCallScreen;->log(Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "onBackPressed()..."

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/OtaInCallScreen;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "OtaInCallScreen"

    const-string v1, "onClickHandler: received a click event for unrecognized id"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/OtaInCallScreen;->onClickOtaEndButton()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->onClickOtaSpeakerButton()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/phone/OtaInCallScreen;->onClickOtaActivateButton()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/android/phone/OtaInCallScreen;->onClickOtaActivateSkipButton()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/android/phone/OtaInCallScreen;->onClickOtaActivateNextButton()V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/android/phone/OtaInCallScreen;->onClickOtaTryAgainButton()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0175
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0, p0}, Lcom/android/phone/PhoneGlobals;->setOtaInCallScreenInstance(Lcom/android/phone/OtaInCallScreen;)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    iput-object v0, p0, Lcom/android/phone/OtaInCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    const v0, 0x7f040065

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->readXmlSettings()V

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/OtaInCallScreen;->initOtaInCallScreen()V

    invoke-direct {p0}, Lcom/android/phone/OtaInCallScreen;->otaShowListeningScreen()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/OtaInCallScreen;->updateKeyguardPolicy(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/OtaInCallScreen;->updateKeyguardPolicy(Z)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->setOtaInCallScreenInstance(Lcom/android/phone/OtaInCallScreen;)V

    invoke-direct {p0}, Lcom/android/phone/OtaInCallScreen;->initOtaInCallScreen()V

    return-void
.end method

.method onDialerClose()V
    .locals 2

    const-string v0, "onDialerClose()..."

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/OtaInCallScreen;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/OtaInCallScreen;->otaShowProperScreen()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/android/phone/OtaInCallScreen;->updateUiWidgets()V

    return-void
.end method

.method public otaShowActivateScreen()V
    .locals 3

    const/4 v1, 0x0

    const-string v0, "otaShowActivateScreen()..."

    invoke-static {v0}, Lcom/android/phone/OtaInCallScreen;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowActivationScreen:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    const-string v0, "otaShowActivateScreen(): show activation screen"

    invoke-static {v0}, Lcom/android/phone/OtaInCallScreen;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/OtaInCallScreen;->isDialerOpened()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/phone/OtaInCallScreen;->otaScreenInitialize()V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v2, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaSkipButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    sget-boolean v0, Lcom/android/phone/OtaUtils;->sIsWizardMode:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->otaTextActivate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    iget-object v0, v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;->callCardOtaButtonsActivate:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const-string v0, "otaShowActivateScreen(): show home screen"

    invoke-static {v0}, Lcom/android/phone/OtaInCallScreen;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/OtaInCallScreen;->otaShowHome()V

    goto :goto_1
.end method

.method public otaShowProperScreen()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v0, :cond_1

    const-string v0, "OtaInCallScreen"

    const-string v1, "otaShowProperScreen: not interactive!"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "OtaInCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "otaShowProperScreen(), currentstate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v2, v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/OtaInCallScreen;->otaShowActivateScreen()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_LISTENING:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/android/phone/OtaInCallScreen;->otaShowListeningScreen()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_PROGRESS:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/OtaInCallScreen;->otaShowInProgressScreen()V

    goto :goto_0
.end method

.method public otaShowSuccessFailure()V
    .locals 2

    const-string v0, "otaShowSuccessFailure()..."

    invoke-static {v0}, Lcom/android/phone/OtaInCallScreen;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v0, :cond_1

    const-string v0, "OtaInCallScreen"

    const-string v1, "otaShowSuccessFailure: not interactive!"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/OtaInCallScreen;->otaScreenInitialize()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "otaShowSuccessFailure(): isOtaCallCommitted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/OtaInCallScreen;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    if-eqz v0, :cond_2

    const-string v0, "otaShowSuccessFailure(), show success dialog"

    invoke-static {v0}, Lcom/android/phone/OtaInCallScreen;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/OtaInCallScreen;->otaShowProgramSuccessDialog()V

    goto :goto_0

    :cond_2
    const-string v0, "otaShowSuccessFailure(), show failure dialog"

    invoke-static {v0}, Lcom/android/phone/OtaInCallScreen;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/phone/OtaInCallScreen;->otaShowProgramFailure(I)V

    goto :goto_0
.end method

.method updateKeyguardPolicy(Z)V
    .locals 2
    .param p1    # Z

    const/high16 v1, 0x400000

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public updateUiWidgets()V
    .locals 2

    const-string v0, "OtaInCallScreen"

    const-string v1, "updateUiWidgets().."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils;->mInteractive:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "updateUiWidgets() called in non-interactive mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/OtaInCallScreen$OtaWidgetData;-><init>(Lcom/android/phone/OtaInCallScreen;Lcom/android/phone/OtaInCallScreen$1;)V

    iput-object v0, p0, Lcom/android/phone/OtaInCallScreen;->mOtaWidgetData:Lcom/android/phone/OtaInCallScreen$OtaWidgetData;

    :cond_1
    return-void
.end method
