.class public Lcom/android/phone/LGTRoamingDualClockSetting;
.super Landroid/preference/PreferenceActivity;
.source "LGTRoamingDualClockSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;
    }
.end annotation


# static fields
.field private static mSelect:I


# instance fields
.field private dualclock_manual_select:Landroid/preference/PreferenceScreen;

.field final handler:Landroid/os/Handler;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field progressThread:Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;

.field private use_dualclock:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/phone/LGTRoamingDualClockSetting;->mSelect:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-instance v0, Lcom/android/phone/LGTRoamingDualClockSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/LGTRoamingDualClockSetting$1;-><init>(Lcom/android/phone/LGTRoamingDualClockSetting;)V

    iput-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->handler:Landroid/os/Handler;

    return-void
.end method

.method private getSelectedMode()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "roaming_dual_clock_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f06003e

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    const-string v0, "use_dualclock_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->use_dualclock:Landroid/preference/CheckBoxPreference;

    const-string v0, "dualclock_manual_select_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->dualclock_manual_select:Landroid/preference/PreferenceScreen;

    sget v0, Lcom/android/phone/LGTRoamingDualClockSetting;->mSelect:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->use_dualclock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->use_dualclock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1    # I

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f090604

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    new-instance v0, Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;

    iget-object v1, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;-><init>(Lcom/android/phone/LGTRoamingDualClockSetting;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->progressThread:Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;

    iget-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->progressThread:Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->use_dualclock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    sput v5, Lcom/android/phone/LGTRoamingDualClockSetting;->mSelect:I

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v6, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->use_dualclock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->use_dualclock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "roaming_dual_clock_enabled"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const v6, 0x7f0905fd

    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :goto_0
    return v4

    :cond_0
    iget-object v6, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->use_dualclock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "roaming_dual_clock_enabled"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const v6, 0x7f0905fe

    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->dualclock_manual_select:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x2

    sput v5, Lcom/android/phone/LGTRoamingDualClockSetting;->mSelect:I

    const-string v0, "com.android.settings.DateTimeSettings"

    const-string v3, "com.android.settings"

    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.DateTimeSettings"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/phone/LGTRoamingDualClockSetting;->use_dualclock:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/phone/LGTRoamingDualClockSetting;->getSelectedMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
