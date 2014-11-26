.class public Lcom/android/mms/settings/FreeMessageSettings;
.super Landroid/preference/PreferenceActivity;
.source "FreeMessageSettings.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# static fields
.field public static final RESULT_FAILED:I = 0x1

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final SERVICE_ID_ALL:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Mms/FreeMessageSettings"


# instance fields
.field private detectLogin:Z

.field private mActivity:Landroid/app/Activity;

.field mContext:Landroid/content/Context;

.field private mLogInOutProgressDialog:Landroid/app/ProgressDialog;

.field private final mResponseReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchPref:Landroid/preference/SwitchPreference;

.field private result:I

.field private serviceStatus:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/settings/FreeMessageSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    iput v1, p0, Lcom/android/mms/settings/FreeMessageSettings;->result:I

    iput v1, p0, Lcom/android/mms/settings/FreeMessageSettings;->serviceStatus:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/settings/FreeMessageSettings;->detectLogin:Z

    new-instance v0, Lcom/android/mms/settings/FreeMessageSettings$2;

    invoke-direct {v0, p0}, Lcom/android/mms/settings/FreeMessageSettings$2;-><init>(Lcom/android/mms/settings/FreeMessageSettings;)V

    iput-object v0, p0, Lcom/android/mms/settings/FreeMessageSettings;->mResponseReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/settings/FreeMessageSettings;Z)V
    .locals 0
    .param p0    # Lcom/android/mms/settings/FreeMessageSettings;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/mms/settings/FreeMessageSettings;->logInOutFreeMessage(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/settings/FreeMessageSettings;)I
    .locals 1
    .param p0    # Lcom/android/mms/settings/FreeMessageSettings;

    iget v0, p0, Lcom/android/mms/settings/FreeMessageSettings;->result:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/mms/settings/FreeMessageSettings;I)I
    .locals 0
    .param p0    # Lcom/android/mms/settings/FreeMessageSettings;
    .param p1    # I

    iput p1, p0, Lcom/android/mms/settings/FreeMessageSettings;->result:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/mms/settings/FreeMessageSettings;)Z
    .locals 1
    .param p0    # Lcom/android/mms/settings/FreeMessageSettings;

    iget-boolean v0, p0, Lcom/android/mms/settings/FreeMessageSettings;->detectLogin:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/mms/settings/FreeMessageSettings;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/settings/FreeMessageSettings;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/settings/FreeMessageSettings;->detectLogin:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/settings/FreeMessageSettings;)I
    .locals 1
    .param p0    # Lcom/android/mms/settings/FreeMessageSettings;

    iget v0, p0, Lcom/android/mms/settings/FreeMessageSettings;->serviceStatus:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/mms/settings/FreeMessageSettings;I)I
    .locals 0
    .param p0    # Lcom/android/mms/settings/FreeMessageSettings;
    .param p1    # I

    iput p1, p0, Lcom/android/mms/settings/FreeMessageSettings;->serviceStatus:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/mms/settings/FreeMessageSettings;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0    # Lcom/android/mms/settings/FreeMessageSettings;

    iget-object v0, p0, Lcom/android/mms/settings/FreeMessageSettings;->mLogInOutProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/mms/settings/FreeMessageSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0    # Lcom/android/mms/settings/FreeMessageSettings;
    .param p1    # Landroid/app/ProgressDialog;

    iput-object p1, p0, Lcom/android/mms/settings/FreeMessageSettings;->mLogInOutProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/mms/settings/FreeMessageSettings;)Landroid/widget/Switch;
    .locals 1
    .param p0    # Lcom/android/mms/settings/FreeMessageSettings;

    iget-object v0, p0, Lcom/android/mms/settings/FreeMessageSettings;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private logInOutFreeMessage(Z)V
    .locals 2
    .param p1    # Z

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/FreeMessageSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/orca/easysignup/sdk/EasySignUpManager;->serviceOn(Landroid/content/Context;I)V

    const-string v0, "Mms/FreeMessageSettings"

    const-string v1, "Send login Free Message"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/settings/FreeMessageSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/orca/easysignup/sdk/EasySignUpManager;->serviceOff(Landroid/content/Context;I)V

    const-string v0, "Mms/FreeMessageSettings"

    const-string v1, "Send logout Free message"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerResponseReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.orca.easysignup.ACTION_SERVICE_ON_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.orca.easysignup.ACTION_SERVICE_OFF_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings;->mResponseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "Mms/FreeMessageSettings"

    const-string v2, "registerResponseReceiver: ResponseReceiver has been registered"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private unregisterResponseReceiver()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings;->mResponseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "Mms/FreeMessageSettings"

    const-string v2, "unregisterResponseReceiver: ResponseReceiver has been unregistered"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Mms/FreeMessageSettings"

    const-string v2, "Catch a IllegalArgumentException: "

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public makeCannotChangeDialog(Z)V
    .locals 6
    .param p1    # Z

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_key_enable_freemessage"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    const v4, 0x7f0c0562

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0c0564

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_0
    const v4, 0x7f0c00ee

    new-instance v5, Lcom/android/mms/settings/FreeMessageSettings$3;

    invoke-direct {v5, p0, v2}, Lcom/android/mms/settings/FreeMessageSettings$3;-><init>(Lcom/android/mms/settings/FreeMessageSettings;Z)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/android/mms/settings/FreeMessageSettings$4;

    invoke-direct {v4, p0, v2}, Lcom/android/mms/settings/FreeMessageSettings$4;-><init>(Lcom/android/mms/settings/FreeMessageSettings;Z)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    new-instance v4, Lcom/android/mms/settings/FreeMessageSettings$5;

    invoke-direct {v4, p0, v2}, Lcom/android/mms/settings/FreeMessageSettings$5;-><init>(Lcom/android/mms/settings/FreeMessageSettings;Z)V

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void

    :cond_0
    const v4, 0x7f0c0563

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0c0565

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings;->mContext:Landroid/content/Context;

    iput-object p0, p0, Lcom/android/mms/settings/FreeMessageSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const v1, 0x7f06000f

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1    # Landroid/view/Menu;

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0f000e

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v1, 0x7f0b03fc

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0038

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/android/mms/settings/FreeMessageSettings$1;

    invoke-direct {v2, p0}, Lcom/android/mms/settings/FreeMessageSettings$1;-><init>(Lcom/android/mms/settings/FreeMessageSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;

    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/FreeMessageSettings;->mSwitch:Landroid/widget/Switch;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/settings/FreeMessageSettings;->mSwitch:Landroid/widget/Switch;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/mms/settings/FreeMessageSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/settings/FreeMessageSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b03fc
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-direct {p0}, Lcom/android/mms/settings/FreeMessageSettings;->unregisterResponseReceiver()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1    # Landroid/view/Menu;

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_key_enable_freemessage"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v2, p0, Lcom/android/mms/settings/FreeMessageSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return v3
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/MmsConfig;->isAuthFreeMessage(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/settings/FreeMessageSettings;->registerResponseReceiver()V

    const-string v1, "Mms/FreeMessageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "now stauts is = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/settings/FreeMessageSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->getFreeMessageLogInStatus(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    return-void
.end method

.method public showChangeProgressDialog(Z)V
    .locals 3
    .param p1    # Z

    iget-object v0, p0, Lcom/android/mms/settings/FreeMessageSettings;->mLogInOutProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/FreeMessageSettings;->mLogInOutProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/FreeMessageSettings;->mLogInOutProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/settings/FreeMessageSettings;->mLogInOutProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/settings/FreeMessageSettings;->mLogInOutProgressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/mms/settings/FreeMessageSettings;->mLogInOutProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c0566

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/mms/settings/FreeMessageSettings;->mLogInOutProgressDialog:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/mms/settings/FreeMessageSettings;->mLogInOutProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/mms/settings/FreeMessageSettings;->mLogInOutProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/settings/FreeMessageSettings;->mLogInOutProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/mms/settings/FreeMessageSettings;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c0567

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public startChangeFreeMessageStatusProgressDialogDismissTimer(Z)V
    .locals 4
    .param p1    # Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/settings/FreeMessageSettings$6;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/settings/FreeMessageSettings$6;-><init>(Lcom/android/mms/settings/FreeMessageSettings;Z)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
