.class public Lcom/android/settings/users/UserOptions;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UserOptions.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private KEY_MOBILE_DATA:Ljava/lang/String;

.field private KEY_USER_OPTIONS:Ljava/lang/String;

.field private mMobiledata:Landroid/preference/CheckBoxPreference;

.field private mMum:Landroid/app/enterprise/multiuser/MultiUserManager;

.field private mRemovingUserId:I

.field private mSetUser:Lcom/android/settings/users/MePreference;

.field private final mUserLock:Ljava/lang/Object;

.field private mUserManager:Landroid/os/UserManager;

.field user:Landroid/content/pm/UserInfo;

.field user_id:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "key_mobile_data"

    iput-object v0, p0, Lcom/android/settings/users/UserOptions;->KEY_MOBILE_DATA:Ljava/lang/String;

    const-string v0, "key_user_options"

    iput-object v0, p0, Lcom/android/settings/users/UserOptions;->KEY_USER_OPTIONS:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/users/UserOptions;->mMum:Landroid/app/enterprise/multiuser/MultiUserManager;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/UserOptions;->mUserLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/users/UserOptions;->mRemovingUserId:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/users/UserOptions;)V
    .locals 0
    .param p0    # Lcom/android/settings/users/UserOptions;

    invoke-direct {p0}, Lcom/android/settings/users/UserOptions;->removeThisUser()V

    return-void
.end method

.method private onRemoveUserClicked(I)V
    .locals 3
    .param p1    # I

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settings/users/UserOptions;->mMum:Landroid/app/enterprise/multiuser/MultiUserManager;

    invoke-virtual {v0, v1}, Landroid/app/enterprise/multiuser/MultiUserManager;->isUserRemovalAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/users/UserOptions;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/settings/users/UserOptions;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iput p1, p0, Lcom/android/settings/users/UserOptions;->mRemovingUserId:I

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeThisUser()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/users/UserOptions;->mMum:Landroid/app/enterprise/multiuser/MultiUserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/multiuser/MultiUserManager;->isUserRemovalAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->switchUser(I)Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/users/UserOptions;->mRemovingUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/os/Bundle;

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "user"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    iput-object v4, p0, Lcom/android/settings/users/UserOptions;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/app/enterprise/multiuser/MultiUserManager;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/multiuser/MultiUserManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/users/UserOptions;->mMum:Landroid/app/enterprise/multiuser/MultiUserManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "user_id"

    invoke-virtual {v2, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/users/UserOptions;->user_id:I

    iget-object v4, p0, Lcom/android/settings/users/UserOptions;->mUserManager:Landroid/os/UserManager;

    iget v5, p0, Lcom/android/settings/users/UserOptions;->user_id:I

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/users/UserOptions;->user:Landroid/content/pm/UserInfo;

    const v4, 0x7f040269

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "user_dependent_mobile_settings"

    iget v6, p0, Lcom/android/settings/users/UserOptions;->user_id:I

    invoke-static {v4, v5, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v4, p0, Lcom/android/settings/users/UserOptions;->KEY_USER_OPTIONS:Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/users/MePreference;

    iput-object v4, p0, Lcom/android/settings/users/UserOptions;->mSetUser:Lcom/android/settings/users/MePreference;

    iget-object v4, p0, Lcom/android/settings/users/UserOptions;->mUserManager:Landroid/os/UserManager;

    iget v5, p0, Lcom/android/settings/users/UserOptions;->user_id:I

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/android/settings/users/UserOptions;->mSetUser:Lcom/android/settings/users/MePreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/users/UserOptions;->user:Landroid/content/pm/UserInfo;

    invoke-virtual {v4, v5, v3, v6}, Lcom/android/settings/users/MePreference;->setIcon(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Landroid/content/pm/UserInfo;)V

    :cond_0
    iget-object v4, p0, Lcom/android/settings/users/UserOptions;->mSetUser:Lcom/android/settings/users/MePreference;

    iget-object v5, p0, Lcom/android/settings/users/UserOptions;->user:Landroid/content/pm/UserInfo;

    iget-object v5, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/users/UserOptions;->KEY_MOBILE_DATA:Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/users/UserOptions;->mMobiledata:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/users/UserOptions;->mMobiledata:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/users/UserOptions;->mMobiledata:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    invoke-virtual {p0, v8}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    if-ne v0, v8, :cond_2

    iget-object v4, p0, Lcom/android/settings/users/UserOptions;->mMobiledata:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/settings/users/UserOptions;->mMobiledata:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1    # I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iget v3, p0, Lcom/android/settings/users/UserOptions;->mRemovingUserId:I

    if-ne v1, v3, :cond_0

    const v1, 0x7f090d09

    :goto_1
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iget v3, p0, Lcom/android/settings/users/UserOptions;->mRemovingUserId:I

    if-ne v1, v3, :cond_1

    const v1, 0x7f090d0c

    :goto_2
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090d12

    new-instance v3, Lcom/android/settings/users/UserOptions$1;

    invoke-direct {v3, p0}, Lcom/android/settings/users/UserOptions$1;-><init>(Lcom/android/settings/users/UserOptions;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v1, 0x7f090d0a

    goto :goto_1

    :cond_1
    const v1, 0x7f090d0e

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1    # Landroid/view/Menu;
    .param p2    # Landroid/view/MenuInflater;

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v1, 0x7f090d0a

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020183

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/settings/users/UserOptions;->mMum:Landroid/app/enterprise/multiuser/MultiUserManager;

    invoke-virtual {v1, v2}, Landroid/app/enterprise/multiuser/MultiUserManager;->isUserRemovalAllowed(Z)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void

    :cond_0
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1    # Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget v2, p0, Lcom/android/settings/users/UserOptions;->user_id:I

    invoke-direct {p0, v2}, Lcom/android/settings/users/UserOptions;->onRemoveUserClicked(I)V

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Landroid/preference/Preference;
    .param p2    # Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/UserOptions;->KEY_MOBILE_DATA:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/users/UserOptions;->mMobiledata:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/users/UserOptions;->mMobiledata:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user_dependent_mobile_settings"

    iget v3, p0, Lcom/android/settings/users/UserOptions;->user_id:I

    invoke-static {v1, v2, v5, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v1, p0, Lcom/android/settings/users/UserOptions;->mMobiledata:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user_dependent_mobile_settings"

    iget v3, p0, Lcom/android/settings/users/UserOptions;->user_id:I

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method
