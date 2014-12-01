.class public Lcom/android/settings/OwnerInfoSettings;
.super Landroid/app/DialogFragment;
.source "OwnerInfoSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/OwnerInfoSettings$DialogFragmentListener;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field isFromUnlock:Z

.field private listener:Lcom/android/settings/OwnerInfoSettings$DialogFragmentListener;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNickname:Landroid/widget/EditText;

.field private mOwnerInfo:Landroid/widget/EditText;

.field private mShowNickname:Z

.field private mUserId:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/OwnerInfoSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/OwnerInfoSettings;->showInputMethod()V

    return-void
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private hideSoftInput()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 7

    const/16 v6, 0x41

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/settings/OwnerInfoSettings;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_0

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled()Z

    move-result v0

    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    const v4, 0x7f0b0391

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    const v4, 0x7f0b0390

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/settings/OwnerInfoSettings;->isFromUnlock:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v5}, Landroid/widget/EditText;->setNewActionPopupMenu(IZ)V

    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    const-string v4, "inputType=option"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    const v4, 0x7f0b038d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mNickname:Landroid/widget/EditText;

    iget-boolean v3, p0, Lcom/android/settings/OwnerInfoSettings;->mShowNickname:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mNickname:Landroid/widget/EditText;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    :goto_0
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v4, 0x7f0901f5

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setText(I)V

    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v4, Lcom/android/settings/OwnerInfoSettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings/OwnerInfoSettings$1;-><init>(Lcom/android/settings/OwnerInfoSettings;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    invoke-direct {p0}, Lcom/android/settings/OwnerInfoSettings;->showInputMethod()V

    return-void

    :cond_4
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mNickname:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mNickname:Landroid/widget/EditText;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelected(Z)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v4, 0x7f0901f3

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setText(I)V

    goto :goto_1
.end method

.method public static newInstance(I)Lcom/android/settings/OwnerInfoSettings;
    .locals 3

    new-instance v1, Lcom/android/settings/OwnerInfoSettings;

    invoke-direct {v1}, Lcom/android/settings/OwnerInfoSettings;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/android/settings/OwnerInfoSettings;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private showInputMethod()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/OwnerInfoSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/OwnerInfoSettings$2;-><init>(Lcom/android/settings/OwnerInfoSettings;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/OwnerInfoSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/OwnerInfoSettings$3;-><init>(Lcom/android/settings/OwnerInfoSettings;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->listener:Lcom/android/settings/OwnerInfoSettings$DialogFragmentListener;

    instance-of v0, v0, Lcom/android/settings/LockscreenMenuSettings;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->listener:Lcom/android/settings/OwnerInfoSettings$DialogFragmentListener;

    instance-of v0, v0, Lcom/android/settings/LockShowInfoSettings;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->saveChanges()V

    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings;->mCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfoEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->listener:Lcom/android/settings/OwnerInfoSettings$DialogFragmentListener;

    invoke-interface {v0}, Lcom/android/settings/OwnerInfoSettings$DialogFragmentListener;->onPositiveClick()V

    :goto_1
    invoke-direct {p0}, Lcom/android/settings/OwnerInfoSettings;->hideSoftInput()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->saveChanges()V

    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings;->mCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfoEnabled(Z)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/OwnerInfoSettings;->hideSoftInput()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/settings/OwnerInfoSettings;->showInputMethod()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "show_nickname"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "show_nickname"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/OwnerInfoSettings;->mShowNickname:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/OwnerInfoSettings;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-boolean v3, p0, Lcom/android/settings/OwnerInfoSettings;->isFromUnlock:Z

    const-string v2, "direct_lockscren"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/OwnerInfoSettings;->isFromUnlock:Z

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04017a

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iput v1, p0, Lcom/android/settings/OwnerInfoSettings;->mUserId:I

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/settings/OwnerInfoSettings;->initView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f0901f4

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/OwnerInfoSettings;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/OwnerInfoSettings;->hideSoftInput()V

    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/OwnerInfoSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getMiscPolicy()Landroid/app/enterprise/MiscPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/MiscPolicy;->getCurrentLockScreenString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/OwnerInfoSettings;->showInputMethod()V

    goto :goto_0
.end method

.method saveChanges()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/OwnerInfoSettings;->mUserId:I

    invoke-virtual {v4, v0, v5}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfo(Ljava/lang/String;I)V

    iget-boolean v4, p0, Lcom/android/settings/OwnerInfoSettings;->mShowNickname:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/OwnerInfoSettings;->mNickname:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDialogFragmentListener(Lcom/android/settings/OwnerInfoSettings$DialogFragmentListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/OwnerInfoSettings;->listener:Lcom/android/settings/OwnerInfoSettings$DialogFragmentListener;

    return-void
.end method
