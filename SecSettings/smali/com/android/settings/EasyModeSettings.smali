.class public Lcom/android/settings/EasyModeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "EasyModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static mModeItem:[Ljava/lang/String;


# instance fields
.field private flag:Z

.field private mClassName:Ljava/lang/String;

.field private mHelptext:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field mMenuApply:Landroid/view/MenuItem;

.field mMenuCancel:Landroid/view/MenuItem;

.field private mModeState:I

.field private mOkDialog:Landroid/app/Dialog;

.field private mOlderPosition:I

.field private mPm:Landroid/content/pm/PackageManager;

.field resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/EasyModeSettings;->flag:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/EasyModeSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/EasyModeSettings;->mOlderPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/EasyModeSettings;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/EasyModeSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/EasyModeSettings;->flag:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/EasyModeSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method private dismissDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method private positiveButtonClicked()V
    .locals 6

    const v5, 0x104000a

    const/high16 v4, 0x1040000

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v2, "easy_mode_switch"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    const-string v1, "EasyModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saved_value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,  mListView.getCheckedItemPosition() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/EasyModeSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    if-nez v1, :cond_2

    const-string v1, "EasyModeSettings"

    const-string v2, "onClick 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/EasyModeSettings;->dismissDialog()V

    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0914f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0914f7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/EasyModeSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/EasyModeSettings$3;-><init>(Lcom/android/settings/EasyModeSettings;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/EasyModeSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/EasyModeSettings$2;-><init>(Lcom/android/settings/EasyModeSettings;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_ConfigOpeartorHomeMode"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "teasymode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    const-string v1, "EasyModeSettings"

    const-string v2, "onClick 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/settings/EasyModeSettings;->dismissDialog()V

    :cond_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0914fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0914fc

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/EasyModeSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/EasyModeSettings$5;-><init>(Lcom/android/settings/EasyModeSettings;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/EasyModeSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/EasyModeSettings$4;-><init>(Lcom/android/settings/EasyModeSettings;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    :cond_4
    const-string v1, "EasyModeSettings"

    const-string v2, "onClick 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/settings/EasyModeSettings;->dismissDialog()V

    :cond_5
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0914f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0914f4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/EasyModeSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/EasyModeSettings$7;-><init>(Lcom/android/settings/EasyModeSettings;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/EasyModeSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings/EasyModeSettings$6;-><init>(Lcom/android/settings/EasyModeSettings;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0
.end method

.method private updateOptionsMenuIcon(Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f020177

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mMenuApply:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mMenuApply:Landroid/view/MenuItem;

    const v1, 0x7f02017b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method

.method private updateState()V
    .locals 6

    const/4 v5, 0x1

    const-string v2, "EasyModeSettings"

    const-string v3, "updateState()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_ConfigOpeartorHomeMode"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "teasymode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v3, "op_mode_switch"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v5, v2, :cond_0

    const/4 v0, 0x2

    :goto_0
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v1

    const-string v2, "EasyModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saved_value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , selected_value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mListView:Landroid/widget/ListView;

    if-ne v0, v1, :cond_2

    :goto_1
    invoke-virtual {v2, v0, v5}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v2

    iput v2, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v3, "easy_mode_switch"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v5, v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/EasyModeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/EasyModeSettings;->mClassName:Ljava/lang/String;

    const-string v0, "EasyModeSettings"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    const v4, 0x7f0901ba

    invoke-interface {p1, v3, v6, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/EasyModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/android/settings/EasyModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v4, p0, Lcom/android/settings/EasyModeSettings;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const-string v4, "com.android.settings.Settings$EasyModeLauncherActivity"

    iget-object v5, p0, Lcom/android/settings/EasyModeSettings;->mClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1, v6}, Landroid/view/Menu;->removeItem(I)V

    :cond_0
    const/4 v4, 0x3

    const v5, 0x7f090e2a

    invoke-interface {p1, v3, v4, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/EasyModeSettings;->mMenuApply:Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/android/settings/EasyModeSettings;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v4, p0, Lcom/android/settings/EasyModeSettings;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v6, :cond_2

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/settings/EasyModeSettings;->updateOptionsMenuIcon(Z)V

    :goto_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mMenuApply:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2}, Lcom/android/settings/EasyModeSettings;->updateOptionsMenuIcon(Z)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    const v7, 0x7f0914f2

    const v6, 0x7f0914de

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const v4, 0x7f0400a6

    invoke-virtual {p1, v4, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b01a5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/settings/EasyModeSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const v4, 0x7f0b00c9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/EasyModeSettings;->mImageView:Landroid/widget/ImageView;

    const v4, 0x7f0b00ca

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/EasyModeSettings;->mHelptext:Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Setting_ConfigOpeartorHomeMode"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "teasymode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    sput-object v4, Lcom/android/settings/EasyModeSettings;->mModeItem:[Ljava/lang/String;

    sget-object v4, Lcom/android/settings/EasyModeSettings;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    sget-object v4, Lcom/android/settings/EasyModeSettings;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    sget-object v4, Lcom/android/settings/EasyModeSettings;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0914fa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    :goto_0
    iget-object v4, p0, Lcom/android/settings/EasyModeSettings;->mListView:Landroid/widget/ListView;

    new-instance v5, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0400a7

    sget-object v8, Lcom/android/settings/EasyModeSettings;->mModeItem:[Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v4, p0, Lcom/android/settings/EasyModeSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v9}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "is_onConfigurationChange"

    invoke-virtual {v4, v5, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    invoke-virtual {v4, v9}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "easymode_spinner_value"

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Setting_ConfigOpeartorHomeMode"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "teasymode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    if-ne v11, v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/EasyModeSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v11, v10}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    iget-object v4, p0, Lcom/android/settings/EasyModeSettings;->mHelptext:Landroid/widget/TextView;

    const v5, 0x7f0914fb

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/android/settings/EasyModeSettings;->mImageView:Landroid/widget/ImageView;

    const v5, 0x7f0203fa

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_2
    iget-object v4, p0, Lcom/android/settings/EasyModeSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v4, p0, Lcom/android/settings/EasyModeSettings;->mListView:Landroid/widget/ListView;

    new-instance v5, Lcom/android/settings/EasyModeSettings$1;

    invoke-direct {v5, p0}, Lcom/android/settings/EasyModeSettings$1;-><init>(Lcom/android/settings/EasyModeSettings;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-object v3

    :cond_0
    new-array v4, v11, [Ljava/lang/String;

    sput-object v4, Lcom/android/settings/EasyModeSettings;->mModeItem:[Ljava/lang/String;

    sget-object v4, Lcom/android/settings/EasyModeSettings;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    sget-object v4, Lcom/android/settings/EasyModeSettings;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    goto/16 :goto_0

    :cond_1
    if-nez p3, :cond_4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Setting_ConfigOpeartorHomeMode"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "teasymode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v5, "op_mode_switch"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v10, v4, :cond_2

    iput v11, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v5, "easy_mode_switch"

    invoke-static {v4, v5, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v10, v4, :cond_3

    iput v9, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    goto/16 :goto_1

    :cond_3
    iput v10, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    goto/16 :goto_1

    :cond_4
    const-string v4, "easymode_spinner_value"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    goto/16 :goto_1

    :cond_5
    iget v4, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/EasyModeSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v9, v10}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    iget-object v4, p0, Lcom/android/settings/EasyModeSettings;->mHelptext:Landroid/widget/TextView;

    const v5, 0x7f0914f3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/android/settings/EasyModeSettings;->mImageView:Landroid/widget/ImageView;

    const v5, 0x7f0203ef

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    :cond_6
    iget-object v4, p0, Lcom/android/settings/EasyModeSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v10, v10}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    iget-object v4, p0, Lcom/android/settings/EasyModeSettings;->mHelptext:Landroid/widget/TextView;

    const v5, 0x7f0914f6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.android.widgetapp.diotek.smemo"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.android.app.snotebook"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-nez v0, :cond_7

    if-nez v1, :cond_7

    iget-object v4, p0, Lcom/android/settings/EasyModeSettings;->mImageView:Landroid/widget/ImageView;

    const v5, 0x7f0203f3

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    :cond_7
    iget-object v4, p0, Lcom/android/settings/EasyModeSettings;->mImageView:Landroid/widget/ImageView;

    const v5, 0x7f0203f2

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    packed-switch p3, :pswitch_data_0

    :cond_0
    :goto_0
    iput p3, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    iget v2, p0, Lcom/android/settings/EasyModeSettings;->mOlderPosition:I

    if-ne v2, p3, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/EasyModeSettings;->flag:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/EasyModeSettings;->flag:Z

    invoke-direct {p0}, Lcom/android/settings/EasyModeSettings;->positiveButtonClicked()V

    :cond_1
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mHelptext:Landroid/widget/TextView;

    const v3, 0x7f0914f3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mImageView:Landroid/widget/ImageView;

    const v3, 0x7f0203ef

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mHelptext:Landroid/widget/TextView;

    const v3, 0x7f0914f6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.android.widgetapp.diotek.smemo"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.android.app.snotebook"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mImageView:Landroid/widget/ImageView;

    const v3, 0x7f0203f3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mImageView:Landroid/widget/ImageView;

    const v3, 0x7f0203f2

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_ConfigOpeartorHomeMode"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "teasymode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mHelptext:Landroid/widget/TextView;

    const v3, 0x7f0914fb

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mImageView:Landroid/widget/ImageView;

    const v3, 0x7f0203fa

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_1
    const-string v0, "EasyModeSettings"

    const-string v1, "onOptionsItemSelected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/EasyModeSettings;->positiveButtonClicked()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/EasyModeSettings;->updateState()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "easymode_spinner_value"

    iget v1, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setDefaultLauncher(Z)V
    .locals 11

    const/4 v7, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.Settings$EasyModeLauncherActivity"

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/EasyModeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v0, v7, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    new-array v1, v7, [Landroid/content/ComponentName;

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.app.launcher"

    const-string v7, "com.android.launcher2.Launcher"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v1, v10

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.app.easylauncher"

    const-string v7, "com.sec.android.app.easylauncher.Launcher"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v1, v9

    new-instance v2, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.app.launcher"

    const-string v6, "com.android.launcher2.Launcher"

    invoke-direct {v2, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance v2, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.app.easylauncher"

    const-string v6, "com.sec.android.app.easylauncher.Launcher"

    invoke-direct {v2, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/high16 v6, 0x100000

    invoke-virtual {v5, v3, v6, v1, v2}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0907e1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v9, v10}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v4

    return-void
.end method
