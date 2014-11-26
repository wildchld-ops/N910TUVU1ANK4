.class public Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;
.super Landroid/app/Fragment;
.source "BluetoothPairingWithCac.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BluetoothPairingWithCac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BluetoothPairingWithCacFragment"
.end annotation


# static fields
.field private static mPasswordChangeEnforced:Z


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBtConnect:Landroid/widget/ImageView;

.field private mCancelButton:Landroid/widget/Button;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEmergencyCall:Landroid/widget/Button;

.field private mHeaderText:Landroid/widget/TextView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextButton:Landroid/widget/Button;

.field private mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

.field private mStatusBarDisableCount:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTelMgr:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mPasswordChangeEnforced:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mStatusBarDisableCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mBtConnect:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mPasswordChangeEnforced:Z

    return v0
.end method

.method private disableStatusBar()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mStatusBarDisableCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mStatusBarDisableCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleNext()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SmartcardPasswordEnforced"

    sget-boolean v2, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mPasswordChangeEnforced:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private reenableStatusBar()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mStatusBarDisableCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mStatusBarDisableCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mStatusBarDisableCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->handleNext()V

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v4}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v4}, Landroid/app/enterprise/PasswordPolicy;->getPasswordChangeTimeout()I

    move-result v4

    if-lez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const v6, 0xea60

    iget-object v7, p0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v7}, Landroid/app/enterprise/PasswordPolicy;->getPasswordChangeTimeout()I

    move-result v7

    mul-int/2addr v6, v7

    int-to-long v6, v6

    add-long v2, v4, v6

    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.server.enterprise.PWD_CHANGE_TIMEOUT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x10000000

    new-instance v7, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v4, v5, v0, v6, v7}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    iget-object v4, p0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/app/enterprise/PasswordPolicy;->setPwdChangeRequested(I)Z

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10800000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b00b0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v0, p0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PasswordChangeEnforced"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mPasswordChangeEnforced:Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mTelMgr:Landroid/telephony/TelephonyManager;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v0, "BluetoothPairingWithCac"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPasswordChangeEnforced: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mPasswordChangeEnforced:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const/4 v9, 0x0

    const v8, 0x7f0b00b0

    const/4 v7, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v5}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v5}, Landroid/app/enterprise/PasswordPolicy;->getPasswordChangeTimeout()I

    move-result v5

    if-gtz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v5}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v5

    if-ne v5, v7, :cond_2

    :cond_0
    const v5, 0x7f040034

    invoke-virtual {p1, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0b00b2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mEmergencyCall:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mEmergencyCall:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mCancelButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mCancelButton:Landroid/widget/Button;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    const v5, 0x7f0b00af

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mBtConnect:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mBtConnect:Landroid/widget/ImageView;

    const v6, 0x7f020090

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    const v5, 0x7f0b00b1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mNextButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v5, 0x7f0b00ae

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mHeaderText:Landroid/widget/TextView;

    instance-of v5, v0, Landroid/preference/PreferenceActivity;

    if-eqz v5, :cond_1

    move-object v2, v0

    check-cast v2, Landroid/preference/PreferenceActivity;

    const v1, 0x7f090258

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3, v3}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_1
    return-object v4

    :cond_2
    const v5, 0x7f040033

    invoke-virtual {p1, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mCancelButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    sget-boolean v0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mPasswordChangeEnforced:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->reenableStatusBar()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    sget-boolean v0, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->mPasswordChangeEnforced:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/BluetoothPairingWithCac$BluetoothPairingWithCacFragment;->disableStatusBar()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
