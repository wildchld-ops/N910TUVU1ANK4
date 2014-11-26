.class public Lcom/android/phone/GestureCallAcceptActivity;
.super Landroid/preference/PreferenceActivity;
.source "GestureCallAcceptActivity.java"


# instance fields
.field private actionBarSwitch:Landroid/widget/Switch;

.field private isClicked:Z

.field final mActivity:Landroid/app/Activity;

.field private mAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

.field private mContext:Landroid/content/Context;

.field private mGestureCallAcceptEnabler:Lcom/android/phone/GestureCallAcceptEnabler;

.field private mGestureImage:Landroid/widget/ImageView;

.field private mLearnAboutDialog:Landroid/app/AlertDialog;

.field private mTryBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-object p0, p0, Lcom/android/phone/GestureCallAcceptActivity;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/GestureCallAcceptActivity;->isClicked:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/GestureCallAcceptActivity;)Z
    .locals 1
    .param p0    # Lcom/android/phone/GestureCallAcceptActivity;

    iget-boolean v0, p0, Lcom/android/phone/GestureCallAcceptActivity;->isClicked:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/GestureCallAcceptActivity;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/GestureCallAcceptActivity;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/GestureCallAcceptActivity;->isClicked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/GestureCallAcceptActivity;)Lcom/android/phone/GestureCallAcceptEnabler;
    .locals 1
    .param p0    # Lcom/android/phone/GestureCallAcceptActivity;

    iget-object v0, p0, Lcom/android/phone/GestureCallAcceptActivity;->mGestureCallAcceptEnabler:Lcom/android/phone/GestureCallAcceptEnabler;

    return-object v0
.end method

.method private showLearnAboutDialog()V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x0

    iget-object v9, p0, Lcom/android/phone/GestureCallAcceptActivity;->mLearnAboutDialog:Landroid/app/AlertDialog;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/phone/GestureCallAcceptActivity;->mLearnAboutDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->dismiss()V

    iput-object v12, p0, Lcom/android/phone/GestureCallAcceptActivity;->mLearnAboutDialog:Landroid/app/AlertDialog;

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/phone/GestureCallAcceptActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/android/phone/GestureCallAcceptActivity;->mActivity:Landroid/app/Activity;

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v9, 0x7f040041

    invoke-virtual {v4, v9, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v9, 0x7f0a0107

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090a00

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020007

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-virtual {v1, v11, v11, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v8, Landroid/text/style/ImageSpan;

    invoke-direct {v8, v1, v11}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const-string v9, "%s"

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v9, v2, 0x2

    const/16 v10, 0x11

    invoke-virtual {v3, v8, v2, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    if-eqz v6, :cond_1

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0909ff

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v9, 0x104000a

    new-instance v10, Lcom/android/phone/GestureCallAcceptActivity$5;

    invoke-direct {v10, p0}, Lcom/android/phone/GestureCallAcceptActivity$5;-><init>(Lcom/android/phone/GestureCallAcceptActivity;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/GestureCallAcceptActivity;->mLearnAboutDialog:Landroid/app/AlertDialog;

    iget-object v9, p0, Lcom/android/phone/GestureCallAcceptActivity;->mLearnAboutDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public onClickEnableSettingsButtonCancel()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/GestureCallAcceptActivity;->isClicked:Z

    return-void
.end method

.method public onClickEnableSettingsButtonOK()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/GestureCallAcceptActivity;->mGestureCallAcceptEnabler:Lcom/android/phone/GestureCallAcceptEnabler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/GestureCallAcceptEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    invoke-virtual {p0}, Lcom/android/phone/GestureCallAcceptActivity;->startTutorial()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1    # Landroid/os/Bundle;

    const/4 v11, 0x0

    const/16 v7, 0x10

    const/4 v10, -0x2

    const/4 v9, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/GestureCallAcceptActivity;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/phone/GestureCallAcceptActivity;->actionBarSwitch:Landroid/widget/Switch;

    iget-object v5, p0, Lcom/android/phone/GestureCallAcceptActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e001b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v5, p0, Lcom/android/phone/GestureCallAcceptActivity;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v9, v9, v3, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v5, p0, Lcom/android/phone/GestureCallAcceptActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v5, p0, Lcom/android/phone/GestureCallAcceptActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/GestureCallAcceptActivity;->actionBarSwitch:Landroid/widget/Switch;

    new-instance v7, Landroid/app/ActionBar$LayoutParams;

    const/16 v8, 0x15

    invoke-direct {v7, v10, v10, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v6, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    new-instance v5, Lcom/android/phone/GestureCallAcceptEnabler;

    iget-object v6, p0, Lcom/android/phone/GestureCallAcceptActivity;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/phone/GestureCallAcceptActivity;->actionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v5, v6, v7}, Lcom/android/phone/GestureCallAcceptEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v5, p0, Lcom/android/phone/GestureCallAcceptActivity;->mGestureCallAcceptEnabler:Lcom/android/phone/GestureCallAcceptEnabler;

    const v5, 0x7f060021

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    const-string v5, "auto_start_speaker_pref_key"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/phone/GestureCallAcceptActivity;->mAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v5, 0x7f040040

    invoke-virtual {v2, v5, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a0102

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/phone/GestureCallAcceptActivity;->mGestureImage:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/phone/GestureCallAcceptActivity;->mGestureImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_1
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v4, v11, v9}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    const v5, 0x7f0a0104

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/phone/GestureCallAcceptActivity;->mTryBtn:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/phone/GestureCallAcceptActivity;->mTryBtn:Landroid/widget/Button;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/GestureCallAcceptActivity;->mTryBtn:Landroid/widget/Button;

    new-instance v6, Lcom/android/phone/GestureCallAcceptActivity$1;

    invoke-direct {v6, p0}, Lcom/android/phone/GestureCallAcceptActivity$1;-><init>(Lcom/android/phone/GestureCallAcceptActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
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
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/phone/GestureCallAcceptActivity;->mGestureCallAcceptEnabler:Lcom/android/phone/GestureCallAcceptEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/GestureCallAcceptActivity;->mGestureCallAcceptEnabler:Lcom/android/phone/GestureCallAcceptEnabler;

    invoke-virtual {v0}, Lcom/android/phone/GestureCallAcceptEnabler;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/GestureCallAcceptActivity;->mLearnAboutDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/GestureCallAcceptActivity;->mLearnAboutDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/GestureCallAcceptActivity;->mLearnAboutDialog:Landroid/app/AlertDialog;

    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "learn_about_pref_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/GestureCallAcceptActivity;->showLearnAboutDialog()V

    :goto_0
    return v2

    :cond_0
    const-string v1, "auto_start_speaker_pref_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/GestureCallAcceptActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_start_speaker_enabled"

    iget-object v1, p0, Lcom/android/phone/GestureCallAcceptActivity;->mAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/phone/GestureCallAcceptActivity;->mGestureCallAcceptEnabler:Lcom/android/phone/GestureCallAcceptEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/GestureCallAcceptActivity;->mGestureCallAcceptEnabler:Lcom/android/phone/GestureCallAcceptEnabler;

    invoke-virtual {v0}, Lcom/android/phone/GestureCallAcceptEnabler;->resume()V

    :cond_0
    return-void
.end method

.method protected final showEnableSettingDialog(II)V
    .locals 5
    .param p1    # I
    .param p2    # I

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/GestureCallAcceptActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0902d0

    new-instance v4, Lcom/android/phone/GestureCallAcceptActivity$4;

    invoke-direct {v4, p0}, Lcom/android/phone/GestureCallAcceptActivity$4;-><init>(Lcom/android/phone/GestureCallAcceptActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0902d1

    new-instance v4, Lcom/android/phone/GestureCallAcceptActivity$3;

    invoke-direct {v4, p0}, Lcom/android/phone/GestureCallAcceptActivity$3;-><init>(Lcom/android/phone/GestureCallAcceptActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/GestureCallAcceptActivity$2;

    invoke-direct {v3, p0}, Lcom/android/phone/GestureCallAcceptActivity$2;-><init>(Lcom/android/phone/GestureCallAcceptActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected startTutorial()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.incallui"

    const-string v2, "com.android.incallui.help.AirMotionTutorialIncallScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
