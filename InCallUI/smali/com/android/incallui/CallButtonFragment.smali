.class public abstract Lcom/android/incallui/CallButtonFragment;
.super Lcom/android/incallui/BaseFragment;
.source "CallButtonFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/PopupMenu$OnDismissListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/incallui/CallButtonPresenter$CallButtonUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallButtonFragment$ActionBarBottomIconPopupMenu;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/CallButtonPresenter;",
        "Lcom/android/incallui/CallButtonPresenter$CallButtonUi;",
        ">;",
        "Lcom/android/incallui/CallButtonPresenter$CallButtonUi;",
        "Landroid/widget/PopupMenu$OnMenuItemClickListener;",
        "Landroid/widget/PopupMenu$OnDismissListener;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;"
    }
.end annotation


# instance fields
.field private final DISABLE_BT_BUTTON:I

.field private final DISABLE_BT_BUTTON_TIMEOUT:I

.field private final DISABLE_SPEAKER_BUTTON:I

.field private final DISABLE_SPEAKER_BUTTON_TIMEOUT:I

.field private final DISPLAY_DIALPAD_DELAY:I

.field private final EVENT_DISPLAY_DIALPAD:I

.field private isHovering:Z

.field private mActionBarBottomIconMenu:Landroid/view/View;

.field private mActionBarBottomIconPopupMenu:Landroid/widget/PopupMenu;

.field private mActionBarPopupVisible:Z

.field private mAddCallButton:Landroid/widget/ImageButton;

.field private mAddcallCallback:Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;

.field private mAudioButton:Landroid/widget/ImageButton;

.field private mAudioModePopup:Landroid/widget/PopupMenu;

.field private mAudioModePopupVisible:Z

.field protected mBluetoothButton:Landroid/widget/ToggleButton;

.field protected mDialpadButton:Landroid/widget/Button;

.field private mEndCallButton:Landroid/view/View;

.field private mExtraRowButton:Landroid/view/View;

.field private mGenericMergeButton:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHoldButton:Landroid/widget/ImageButton;

.field private mInCallMenu:Lcom/android/incallui/InCallMenu;

.field protected mLeftDialpadButton:Landroid/widget/Button;

.field private mManageConferenceButton:Landroid/view/View;

.field private mMenuDialog:Landroid/app/AlertDialog;

.field private mMergeButton:Landroid/widget/ImageButton;

.field private mMuteButton:Landroid/widget/ImageButton;

.field private mMuteToggleButton:Landroid/widget/ToggleButton;

.field private mPromotedButton:Landroid/widget/Button;

.field private mRecordButton:Landroid/widget/Button;

.field private mShareButton:Landroid/widget/Button;

.field private mShowDialpadButton:Landroid/widget/ToggleButton;

.field private mSpeakerButton:Landroid/widget/ToggleButton;

.field private mSwapButton:Landroid/widget/ImageButton;

.field private mSwapViewButton:Landroid/view/View;

.field private mTwAddCallButton:Landroid/widget/Button;

.field private mVoWifiStateListener:Lcom/android/incallui/VoWifiStateTracker$VoWifiStateListener;

.field private mWfcHandler:Landroid/os/Handler;

.field private mWidgetAddcallButton:Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x1f4

    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonFragment;->isHovering:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mWidgetAddcallButton:Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/incallui/CallButtonFragment;->DISABLE_SPEAKER_BUTTON:I

    iput v1, p0, Lcom/android/incallui/CallButtonFragment;->DISABLE_SPEAKER_BUTTON_TIMEOUT:I

    const/16 v0, 0x65

    iput v0, p0, Lcom/android/incallui/CallButtonFragment;->DISABLE_BT_BUTTON:I

    iput v1, p0, Lcom/android/incallui/CallButtonFragment;->DISABLE_BT_BUTTON_TIMEOUT:I

    const/16 v0, 0x320

    iput v0, p0, Lcom/android/incallui/CallButtonFragment;->EVENT_DISPLAY_DIALPAD:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/incallui/CallButtonFragment;->DISPLAY_DIALPAD_DELAY:I

    new-instance v0, Lcom/android/incallui/CallButtonFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallButtonFragment$1;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/CallButtonFragment$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallButtonFragment$2;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVoWifiStateListener:Lcom/android/incallui/VoWifiStateTracker$VoWifiStateListener;

    new-instance v0, Lcom/android/incallui/CallButtonFragment$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallButtonFragment$3;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mWfcHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/CallButtonFragment$11;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallButtonFragment$11;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAddcallCallback:Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/CallButtonFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonFragment;->updateAudioButtons(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/CallButtonFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mWfcHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/CallButtonFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonFragment;->updateEndCallButton(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/CallButtonFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->onAudioButtonClicked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/incallui/CallButtonFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/CallButtonFragment;->isHovering:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/incallui/CallButtonFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/CallButtonFragment;->isHovering:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/incallui/CallButtonFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->dismissMenuDialog()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/incallui/CallButtonFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/CallButtonFragment;->mActionBarPopupVisible:Z

    return p1
.end method

.method private dismissActionBarPopupMenu()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mActionBarBottomIconPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/CallButtonFragment;->mActionBarPopupVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mActionBarBottomIconPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method private dismissMenuDialog()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMenuDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const-string v0, "dismissMenuDialog"

    invoke-virtual {p0, v0}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMenuDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private getVoWifiTracker()Lcom/android/incallui/VoWifiStateTracker;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/VoWifiStateTracker;->getInstance(Landroid/content/Context;)Lcom/android/incallui/VoWifiStateTracker;

    move-result-object v0

    return-object v0
.end method

.method private isAudio(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getAudioMode()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSupported(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onAudioButtonClicked()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioButtonClicked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-static {v0}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->showAudioModePopup()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->toggleSpeakerphone()V

    goto :goto_0
.end method

.method private sendMuteButtonStatus(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMuteButtonStatus()..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.accessory.intent.action.ACTION_CHECK_MUTE_ITEM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "BUTTON_STATUS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setupActionBarPopupMenu(ILandroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mActionBarBottomIconMenu:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/incallui/CallButtonFragment$ActionBarBottomIconPopupMenu;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment;->mActionBarBottomIconMenu:Landroid/view/View;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/incallui/CallButtonFragment$ActionBarBottomIconPopupMenu;-><init>(Lcom/android/incallui/CallButtonFragment;Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mActionBarBottomIconPopupMenu:Landroid/widget/PopupMenu;

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mActionBarBottomIconMenu:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mActionBarBottomIconMenu:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mActionBarBottomIconPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getDragToOpenListener()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mActionBarBottomIconPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mActionBarBottomIconPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->inflate(I)V

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mActionBarBottomIconPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mActionBarBottomIconPopupMenu:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/android/incallui/CallButtonFragment$23;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallButtonFragment$23;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    :cond_1
    return-void
.end method

.method private showAudioModePopup()V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "showAudioPopup()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/ImageButton;

    invoke-direct {v0, v3, v4}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v3, 0x7f110003

    iget-object v4, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const v0, 0x7f0e036e

    invoke-interface {v3, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sget v4, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    invoke-direct {p0, v4}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v4

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v0, 0x7f0e036f

    invoke-interface {v3, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const v0, 0x7f0e0370

    invoke-interface {v3, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    sget v0, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v6

    if-nez v6, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-nez v6, :cond_0

    move v2, v1

    :cond_0
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v0, 0x7f0e0371

    invoke-interface {v3, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sget v2, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-direct {p0, v2}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    iput-boolean v1, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopupVisible:Z

    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private toggleActionBarPopupMenu()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mActionBarBottomIconPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/CallButtonFragment;->mActionBarPopupVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mActionBarBottomIconPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonFragment;->mActionBarPopupVisible:Z

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mActionBarBottomIconPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0
.end method

.method private toggleBluetooth()V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    const-string v0, "toggleBluetooth()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "btn_on_off_delay"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonMWDriveLinkFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonMWDriveLinkFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    sget v0, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "ims_video_default_speaker_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isAliveVideoCall()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    sget v1, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE_OR_SPEAKER:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    sget v1, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    sget v1, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_8
    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonMWDriveLinkFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonMWDriveLinkFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_9
    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_2
.end method

.method private updateAudioButtons(I)V
    .locals 19

    sget v2, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v2

    sget v3, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v12

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v14, 0x1

    const/4 v3, 0x0

    const/4 v13, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_14

    const-string v2, "updateAudioButtons - popup menu mode"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x1

    const/4 v10, 0x1

    sget v2, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v4, 0x1

    const/4 v2, 0x1

    move v9, v4

    move v4, v3

    move v3, v2

    :goto_0
    sget v2, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v2, "headset_highest_priority_for_call"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 v13, 0x0

    const/4 v2, 0x0

    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "audioButtonEnabled: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "audioButtonChecked: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "showMoreIndicator: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "showBluetoothIcon: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "showSpeakerphoneOnIcon: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "showSpeakerphoneOffIcon: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "showHandsetIcon: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "speakerButtonChecked: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bluetoothButtonChecked: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCallForwardingState()Z

    move-result v14

    if-eqz v14, :cond_21

    const-string v2, "callForwarding is enabled, disable Audio related buttons"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v2, 0x0

    move v14, v13

    move v13, v2

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonPresenter;->getCurrentCallState()I

    move-result v2

    const/16 v15, 0x8

    if-ne v2, v15, :cond_0

    const-string v2, "Disconnecting state, Speaker and BT should not be enabled"

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v14, 0x0

    const/4 v13, 0x0

    :cond_0
    const-string v2, "btn_on_off_delay"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallButtonFragment;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x64

    invoke-virtual {v2, v15}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v14, 0x0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallButtonFragment;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x65

    invoke-virtual {v2, v15}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v13, 0x0

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEncryptionMode()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "in encryption mode, disable BT button"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    :cond_3
    const-string v2, "support_nsri_secure"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isNsriSecureCallMode()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v14, 0x0

    const/4 v13, 0x0

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/incallui/cover/CoverCall;->mCoverSpeakerToggleButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/incallui/cover/CoverCall;->mCoverSpeakerToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setEnabled(Z)V

    sget-object v2, Lcom/android/incallui/cover/CoverCall;->mCoverSpeakerToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_6
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "[DRIVELINK] Set speaker button"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_7

    sget-object v2, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setEnabled(Z)V

    sget-object v2, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_7
    sget-object v2, Lcom/android/incallui/drivelink/InCallButtonMWDriveLinkFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/incallui/drivelink/InCallButtonMWDriveLinkFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setEnabled(Z)V

    sget-object v2, Lcom/android/incallui/drivelink/InCallButtonMWDriveLinkFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_9
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "[DRIVELINK] Set bluetooth button"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_a

    sget-object v2, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setEnabled(Z)V

    sget-object v2, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_a
    sget-object v2, Lcom/android/incallui/drivelink/InCallButtonMWDriveLinkFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_b

    sget-object v2, Lcom/android/incallui/drivelink/InCallButtonMWDriveLinkFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setEnabled(Z)V

    sget-object v2, Lcom/android/incallui/drivelink/InCallButtonMWDriveLinkFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_b
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "[DRIVELINK] Set mute button"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v2

    sget-object v3, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_c

    sget-object v3, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_c
    sget-object v3, Lcom/android/incallui/drivelink/InCallButtonMWDriveLinkFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v3, :cond_d

    sget-object v3, Lcom/android/incallui/drivelink/InCallButtonMWDriveLinkFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_d
    const-string v2, "ota_mode_disable_expand"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "true"

    const-string v3, "ril.domesticOtaStart"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "ril.domesticOtaStart is true, disable bt button"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v12}, Landroid/view/View;->setEnabled(Z)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\'layers\' drawable: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f0e0327

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v5, :cond_1b

    const/16 v3, 0xff

    :goto_3
    invoke-virtual {v11, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const v3, 0x7f0e0328

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v10, :cond_1c

    const/16 v3, 0xff

    :goto_4
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const v3, 0x7f0e0329

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v9, :cond_1d

    const/16 v3, 0xff

    :goto_5
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const v3, 0x7f0e032a

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v6, :cond_1e

    const/16 v3, 0xff

    :goto_6
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const v3, 0x7f0e032b

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v8, :cond_1f

    const/16 v3, 0xff

    :goto_7
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const v3, 0x7f0e032c

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v7, :cond_20

    const/16 v2, 0xff

    :goto_8
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4}, Lcom/android/incallui/CallButtonFragment;->updateSpeakerState(ZZ)V

    return-void

    :cond_12
    sget v2, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v3, 0x1

    const/4 v2, 0x1

    move v8, v3

    move v3, v4

    move v4, v2

    goto/16 :goto_0

    :cond_13
    const/4 v2, 0x1

    move v6, v2

    move/from16 v18, v3

    move v3, v4

    move/from16 v4, v18

    goto/16 :goto_0

    :cond_14
    if-eqz v12, :cond_1a

    const-string v2, "updateAudioButtons - speaker toggle mode"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v2

    const/4 v11, 0x1

    sget v3, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z

    move-result v8

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isCHNCMCC()Z

    move-result v3

    if-eqz v3, :cond_18

    sget v3, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z

    move-result v3

    if-nez v3, :cond_15

    if-eqz v2, :cond_17

    :cond_15
    const/4 v2, 0x1

    :goto_9
    const/4 v5, 0x1

    sget v3, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z

    move-result v7

    if-nez v7, :cond_19

    const/4 v3, 0x1

    :goto_a
    const-string v12, "ims_rcs"

    invoke-static {v12}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_16

    if-eqz v7, :cond_16

    new-instance v12, Landroid/content/Intent;

    const-string v15, "com.samsung.rcs.intent.action.SPEAKER_UPDATE"

    invoke-direct {v12, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v15, "TIME_OFFSET"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v12, v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_16
    move v12, v11

    move v11, v8

    move v8, v7

    move v7, v3

    move v3, v4

    move v4, v2

    goto/16 :goto_0

    :cond_17
    const/4 v2, 0x0

    goto :goto_9

    :cond_18
    sget v2, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z

    move-result v2

    goto :goto_9

    :cond_19
    const/4 v3, 0x0

    goto :goto_a

    :cond_1a
    const-string v2, "updateAudioButtons - disabled..."

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x1

    move v12, v11

    move v11, v7

    move v7, v5

    move v5, v2

    move/from16 v18, v3

    move v3, v4

    move/from16 v4, v18

    goto/16 :goto_0

    :cond_1b
    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_1c
    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_1d
    const/4 v3, 0x0

    goto/16 :goto_5

    :cond_1e
    const/4 v3, 0x0

    goto/16 :goto_6

    :cond_1f
    const/4 v3, 0x0

    goto/16 :goto_7

    :cond_20
    const/4 v2, 0x0

    goto/16 :goto_8

    :cond_21
    move v14, v13

    move v13, v2

    goto/16 :goto_2

    :cond_22
    move v2, v13

    move v13, v14

    goto/16 :goto_1
.end method

.method private updateEndCallButton(Z)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcom/android/incallui/CallButtonFragment;->setEndCallButtonIcon(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public changeArrow(I)V
    .locals 0

    return-void
.end method

.method public createAddcallButtonListWidgetFromView(Landroid/view/View;)Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
    .locals 5

    const/4 v4, 0x1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "MIME_TYPE"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;

    new-instance v2, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;

    invoke-direct {v2, p1, v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;-><init>(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 v3, 0x2

    invoke-direct {v0, p1, v2, v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;-><init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;I)V

    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment;->mAddcallCallback:Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->setItemSelectListener(Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;)V

    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->setGravity(I)V

    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;->setDirection(I)V

    new-instance v2, Lcom/android/incallui/CallButtonFragment$10;

    invoke-direct {v2, p0}, Lcom/android/incallui/CallButtonFragment$10;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-object v0
.end method

.method createPresenter()Lcom/android/incallui/CallButtonPresenter;
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->createPresenter()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    return-object v0
.end method

.method public displayDialpad(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mShowDialpadButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mShowDialpadButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->displayDialpad(Z)V

    :cond_1
    return-void
.end method

.method public displayDialpad(ZZ)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    :cond_0
    return-void
.end method

.method public displayDialpadDelayed()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x320

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public displayManageConferencePanel(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->displayManageConferencePanel(Z)V

    :cond_0
    return-void
.end method

.method public enableAddCall(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAddCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAddCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mTwAddCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mTwAddCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public enableDecorationButton(Z)V
    .locals 0

    return-void
.end method

.method public enableDialpad(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public enableGroupCall(Z)V
    .locals 0

    return-void
.end method

.method public enableHold(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public enableMute(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public enableRecord(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public enableSwitchButton(Z)V
    .locals 0

    return-void
.end method

.method public getDialpadButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/InCallMenu;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    return-object v0
.end method

.method public getMenuRes()I
    .locals 1

    const v0, 0x7f110002

    return v0
.end method

.method public getPromotedButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getShareButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mShareButton:Landroid/widget/Button;

    return-object v0
.end method

.method getUi()Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
    .locals 0

    return-object p0
.end method

.method bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getUi()Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    move-result-object v0

    return-object v0
.end method

.method public hideExtraRow()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mExtraRowButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mExtraRowButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public isDialpadVisible()Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnableDialpad()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isManageConferencePanelVisible()Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isManageConferencePanelVisible()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->updateAudioButtons(I)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->getVoWifiTracker()Lcom/android/incallui/VoWifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VoWifiStateTracker;->isVoWiFiRegistered()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->updateEndCallButton(Z)V

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sparse-switch v0, :sswitch_data_0

    const-string v1, "onClick: unexpected"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->addCallClicked()V

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->toggleRecord()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->mergeClicked()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->swapClicked()V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1, v5}, Lcom/android/incallui/CallButtonPresenter;->dialpadClicked(Z)V

    goto :goto_0

    :sswitch_5
    const-string v1, "support_folder_hardkey"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v1, v5, :cond_1

    sget v1, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    invoke-direct {p0, v1}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v1

    if-nez v1, :cond_1

    sget v1, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    invoke-direct {p0, v1}, Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900f9

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const-string v1, "onClick - speakerButton : speaker only - return "

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/CallButtonFragment;->updateAudioButtons(I)V

    goto :goto_0

    :cond_1
    const-string v1, "btn_on_off_delay"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    sget v2, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    const-string v1, "volte_jpn_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v5}, Lcom/android/incallui/InCallUtils;->setSpeakerOn(I)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    sget v2, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE:I

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    const-string v1, "volte_jpn_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v6}, Lcom/android/incallui/InCallUtils;->setSpeakerOn(I)V

    goto/16 :goto_0

    :sswitch_6
    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->toggleBluetooth()V

    goto/16 :goto_0

    :sswitch_7
    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->toggleActionBarPopupMenu()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0e002c -> :sswitch_4
        0x7f0e0030 -> :sswitch_3
        0x7f0e0032 -> :sswitch_0
        0x7f0e0033 -> :sswitch_2
        0x7f0e0120 -> :sswitch_6
        0x7f0e0122 -> :sswitch_5
        0x7f0e0129 -> :sswitch_7
        0x7f0e012c -> :sswitch_1
        0x7f0e012e -> :sswitch_0
        0x7f0e0133 -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f04000a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e002a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mExtraRowButton:Landroid/view/View;

    const v1, 0x7f0e00ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mManageConferenceButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mManageConferenceButton:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mManageConferenceButton:Landroid/view/View;

    new-instance v2, Lcom/android/incallui/CallButtonFragment$4;

    invoke-direct {v2, p0}, Lcom/android/incallui/CallButtonFragment$4;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v1, 0x7f0e0102

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mGenericMergeButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mGenericMergeButton:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mGenericMergeButton:Landroid/view/View;

    new-instance v2, Lcom/android/incallui/CallButtonFragment$5;

    invoke-direct {v2, p0}, Lcom/android/incallui/CallButtonFragment$5;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v1, 0x7f0e002b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/view/View;

    new-instance v2, Lcom/android/incallui/CallButtonFragment$6;

    invoke-direct {v2, p0}, Lcom/android/incallui/CallButtonFragment$6;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/view/View;

    new-instance v2, Lcom/android/incallui/SmallerHitTargetTouchListener;

    invoke-direct {v2}, Lcom/android/incallui/SmallerHitTargetTouchListener;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    const v1, 0x7f0e002e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/incallui/CallButtonFragment$7;

    invoke-direct {v2, p0}, Lcom/android/incallui/CallButtonFragment$7;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const v1, 0x7f0e002d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/incallui/CallButtonFragment$8;

    invoke-direct {v2, p0}, Lcom/android/incallui/CallButtonFragment$8;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    const v1, 0x7f0e002f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/incallui/CallButtonFragment$9;

    invoke-direct {v2, p0}, Lcom/android/incallui/CallButtonFragment$9;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    const v1, 0x7f0e002c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mShowDialpadButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mShowDialpadButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mShowDialpadButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    const v1, 0x7f0e0032

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAddCallButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAddCallButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAddCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    const v1, 0x7f0e0033

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    const v1, 0x7f0e0030

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mSwapButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mSwapButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    const-string v1, "ims_rcs"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const v1, 0x7f0e0034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    const v1, 0x7f0e0035

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mShareButton:Landroid/widget/Button;

    :cond_b
    return-object v0
.end method

.method public onDestroyView()V
    .locals 4

    const/16 v3, 0x320

    const/16 v2, 0x65

    const/16 v1, 0x64

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroyView()V

    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->dismissActionBarPopupMenu()V

    const-string v0, "btn_on_off_delay"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    return-void
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- onDismiss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopupVisible:Z

    return-void
.end method

.method public onEndCallButtonClicked()V
    .locals 0

    return-void
.end method

.method protected onFinishInflate(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x3031

    const v0, 0x7f0e002a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mExtraRowButton:Landroid/view/View;

    const v0, 0x7f0e00ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mManageConferenceButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mManageConferenceButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mManageConferenceButton:Landroid/view/View;

    new-instance v1, Lcom/android/incallui/CallButtonFragment$15;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallButtonFragment$15;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0e0102

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mGenericMergeButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mGenericMergeButton:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mGenericMergeButton:Landroid/view/View;

    new-instance v1, Lcom/android/incallui/CallButtonFragment$16;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallButtonFragment$16;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v0, 0x7f0e002b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/view/View;

    new-instance v1, Lcom/android/incallui/CallButtonFragment$17;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallButtonFragment$17;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/view/View;

    new-instance v1, Lcom/android/incallui/SmallerHitTargetTouchListener;

    invoke-direct {v1}, Lcom/android/incallui/SmallerHitTargetTouchListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    :cond_4
    const v0, 0x7f0e002e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/android/incallui/CallButtonFragment$18;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallButtonFragment$18;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/android/incallui/SmallerHitTargetTouchListener;

    invoke-direct {v1}, Lcom/android/incallui/SmallerHitTargetTouchListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_6
    const v0, 0x7f0e002d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/incallui/CallButtonFragment$19;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallButtonFragment$19;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    const v0, 0x7f0e002f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/incallui/CallButtonFragment$20;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallButtonFragment$20;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    const v0, 0x7f0e002c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/incallui/SmallerHitTargetTouchListener;

    invoke-direct {v1}, Lcom/android/incallui/SmallerHitTargetTouchListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_a
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    :cond_b
    const-string v0, "dcm_volte_keypad_enable_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const v0, 0x7f0e0133

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mLeftDialpadButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mLeftDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mLeftDialpadButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mLeftDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mLeftDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mLeftDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mLeftDialpadButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/incallui/SmallerHitTargetTouchListener;

    invoke-direct {v1}, Lcom/android/incallui/SmallerHitTargetTouchListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_e
    const v0, 0x7f0e0032

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAddCallButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAddCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAddCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAddCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAddCallButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/incallui/SmallerHitTargetTouchListener;

    invoke-direct {v1}, Lcom/android/incallui/SmallerHitTargetTouchListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_10
    const v0, 0x7f0e0033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_11
    const v0, 0x7f0e0030

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mSwapViewButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mSwapViewButton:Landroid/view/View;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mSwapViewButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    const v0, 0x7f0e0122

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "disable_button_sound_effects"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    :cond_13
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/android/incallui/SmallerHitTargetTouchListener;

    invoke-direct {v1}, Lcom/android/incallui/SmallerHitTargetTouchListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_14
    const v0, 0x7f0e0120

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_15
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/android/incallui/SmallerHitTargetTouchListener;

    invoke-direct {v1}, Lcom/android/incallui/SmallerHitTargetTouchListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_16
    const v0, 0x7f0e012e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mTwAddCallButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mTwAddCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mTwAddCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_17
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mTwAddCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mTwAddCallButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/incallui/SmallerHitTargetTouchListener;

    invoke-direct {v1}, Lcom/android/incallui/SmallerHitTargetTouchListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_18
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mTwAddCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mTwAddCallButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mTwAddCallButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    :cond_19
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mTwAddCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mTwAddCallButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1a
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mTwAddCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mTwAddCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setHoverPopupType(I)V

    :cond_1b
    const v0, 0x7f0e012c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/widget/Button;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1c
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/widget/Button;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/incallui/SmallerHitTargetTouchListener;

    invoke-direct {v1}, Lcom/android/incallui/SmallerHitTargetTouchListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1d
    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const v0, 0x7f0e0034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/incallui/CallButtonFragment$21;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallButtonFragment$21;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1e
    const v0, 0x7f0e0035

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mShareButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mShareButton:Landroid/widget/Button;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mShareButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/incallui/CallButtonFragment$22;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallButtonFragment$22;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1f
    new-instance v0, Lcom/samsung/android/sdk/look/Slook;

    invoke-direct {v0}, Lcom/samsung/android/sdk/look/Slook;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/Slook;->getVersionCode()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_20

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mTwAddCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mTwAddCallButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonFragment;->createAddcallButtonListWidgetFromView(Landroid/view/View;)Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mWidgetAddcallButton:Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;

    :cond_20
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallButtonFragment;->setupActionBarItems(Landroid/view/View;)V

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- onMenuItemClick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallMenu;->optionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOpenCloseDialpad(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->isDialpadVisible()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->getVoWifiTracker()Lcom/android/incallui/VoWifiStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VoWifiStateTracker;->unregisterForWfcRegistrationStatus()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->updateOneHandMode()V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->getVoWifiTracker()Lcom/android/incallui/VoWifiStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mVoWifiStateListener:Lcom/android/incallui/VoWifiStateTracker$VoWifiStateListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/VoWifiStateTracker;->registerForWfcRegistrationStatus(Lcom/android/incallui/VoWifiStateTracker$VoWifiStateListener;)V

    :cond_0
    return-void
.end method

.method public refreshAudioModePopup()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopupVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->showAudioModePopup()V

    :cond_0
    return-void
.end method

.method public setAudio(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->updateAudioButtons(I)V

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->refreshAudioModePopup()V

    return-void
.end method

.method public setCallState(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallState state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->setChangingOrientation(Z)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mExtraRowButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mExtraRowButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mManageConferenceButton:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mManageConferenceButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mGenericMergeButton:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mGenericMergeButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mLeftDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mLeftDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAddCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAddCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_a
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mSwapViewButton:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mSwapViewButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_b
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_c
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_d
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mTwAddCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mTwAddCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_e
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/widget/Button;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_f
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mPromotedButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_10
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mShareButton:Landroid/widget/Button;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mShareButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_11
    if-eqz p1, :cond_12

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->updateAudioButtons(I)V

    :cond_12
    return-void
.end method

.method public setEndCallButtonIcon(Landroid/view/View;Z)V
    .locals 3

    const/4 v2, 0x0

    check-cast p1, Landroid/widget/Button;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0203b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v2, v0, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02013a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public setHideShowButton(Z)V
    .locals 0

    return-void
.end method

.method public setHold(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public setMute(Z)V
    .locals 3

    const v2, 0x7f090366

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    if-eqz p1, :cond_0

    const-string v0, "ims_ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    if-eqz p1, :cond_1

    const-string v0, "ims_ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonFragment;->sendMuteButtonStatus(Z)V

    return-void
.end method

.method public setSupportedAudio(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonFragment;->updateAudioButtons(I)V

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->refreshAudioModePopup()V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->updateOneHandMode()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setVisibleByDialpad(Z)V
    .locals 0

    return-void
.end method

.method public setupActionBarItems(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0e00fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0e0129

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mActionBarBottomIconMenu:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getMenuRes()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/CallButtonFragment;->setupActionBarPopupMenu(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setupRcsCallButtons()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mTwAddCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-static {v0, v1}, Lcom/android/incallui/rcs/RcsShareUI;->setupLegacyInCallButtons(Landroid/widget/Button;Landroid/widget/ToggleButton;)V

    return-void
.end method

.method public showAddCall(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAddCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAddCallButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showCallBannerByMenu(Z)V
    .locals 0

    return-void
.end method

.method public showCameraEffectPanel(Z)V
    .locals 0

    return-void
.end method

.method public showCanCelButton(Z)V
    .locals 0

    return-void
.end method

.method public showDecorationButton(Z)V
    .locals 0

    return-void
.end method

.method public showDialPadButton(Z)V
    .locals 0

    return-void
.end method

.method public showEasyExtraRow(Z)V
    .locals 0

    return-void
.end method

.method public showEncryptCall(Z)V
    .locals 0

    return-void
.end method

.method public showExtraRow()V
    .locals 0

    return-void
.end method

.method public showGroupCall(Z)V
    .locals 0

    return-void
.end method

.method public showHDVoiceIcon(Z)V
    .locals 0

    return-void
.end method

.method public showHideShowButton(Z)V
    .locals 0

    return-void
.end method

.method public showHold(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showLeftDialPadButton(Z)V
    .locals 0

    return-void
.end method

.method public showMemoryFullDialog()V
    .locals 3

    const-string v0, "showMemoryFullDialog"

    invoke-virtual {p0, v0}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->dismissMenuDialog()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090174

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090173

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090170

    new-instance v2, Lcom/android/incallui/CallButtonFragment$12;

    invoke-direct {v2, p0}, Lcom/android/incallui/CallButtonFragment$12;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0900a3

    new-instance v2, Lcom/android/incallui/CallButtonFragment$13;

    invoke-direct {v2, p0}, Lcom/android/incallui/CallButtonFragment$13;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/incallui/CallButtonFragment$14;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallButtonFragment$14;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMenuDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public showMerge(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showModifyCall(Z)V
    .locals 0

    return-void
.end method

.method public showMute(Z)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public showRecord(Z)V
    .locals 12

    const/16 v7, 0x8

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/incallui/CallButtonFragment;->mTwAddCallButton:Landroid/widget/Button;

    if-eqz v6, :cond_0

    iget-object v9, p0, Lcom/android/incallui/CallButtonFragment;->mTwAddCallButton:Landroid/widget/Button;

    if-eqz p1, :cond_4

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v2, 0x7f020429

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f090131

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v5

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOnehandModeOn()Z

    move-result v4

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v3

    if-eqz v3, :cond_5

    const v2, 0x7f02042a

    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/android/incallui/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v3, :cond_6

    const v2, 0x7f02042d

    :goto_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f090132

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v6, p0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/widget/Button;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/widget/Button;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v2, v10, v11}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v6, p0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/widget/Button;

    if-eqz p1, :cond_8

    :goto_3
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_4
    return-void

    :cond_4
    move v6, v8

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_1

    const v2, 0x7f02042b

    goto :goto_1

    :cond_6
    if-eqz v4, :cond_7

    const v2, 0x7f02042e

    goto :goto_2

    :cond_7
    const v2, 0x7f02042c

    goto :goto_2

    :cond_8
    move v8, v7

    goto :goto_3

    :catch_0
    move-exception v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showRecord: exception-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public showRecordToast()V
    .locals 0

    return-void
.end method

.method public showSeekBar(I)V
    .locals 0

    return-void
.end method

.method public showStopButton(Z)V
    .locals 0

    return-void
.end method

.method public showSwap(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mSwapButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mSwapButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showSwitchButton(Z)V
    .locals 0

    return-void
.end method

.method public startSwitchCameraEffect()V
    .locals 0

    return-void
.end method

.method public updateButtonLayoutByPenMultiWindow()V
    .locals 0

    return-void
.end method

.method public updateConfUI(Z)V
    .locals 0

    return-void
.end method

.method public updateDiapadButton()V
    .locals 0

    return-void
.end method

.method public updateInCallButton(Z)V
    .locals 0

    return-void
.end method

.method public updateModifyPannel()V
    .locals 0

    return-void
.end method

.method public updateOneHandMode()V
    .locals 0

    return-void
.end method

.method public updatePreviewEffectLayout(Z)V
    .locals 0

    return-void
.end method

.method updateSpeakerState(ZZ)V
    .locals 0

    return-void
.end method

.method public updateSwitchButtonLayout()V
    .locals 0

    return-void
.end method

.method public updateSwitchButtonLayout(Z)V
    .locals 0

    return-void
.end method
