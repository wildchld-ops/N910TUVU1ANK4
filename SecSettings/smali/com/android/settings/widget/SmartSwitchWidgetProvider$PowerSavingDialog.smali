.class public Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;
.super Landroid/app/AlertDialog;
.source "SmartSwitchWidgetProvider.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SmartSwitchWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PowerSavingDialog"
.end annotation


# instance fields
.field private iBackgroundColor:I

.field private iCpuPowerSaving:I

.field private iDisplayPowerSaving:I

.field private iOffHapticFeedback:I

.field private iPowerSaving:I

.field private mBackgroundColor:Landroid/widget/CheckedTextView;

.field private mContext:Landroid/content/Context;

.field private mCpuPowerSaving:Landroid/widget/CheckedTextView;

.field private mDisplayPowerSaving:Landroid/widget/CheckedTextView;

.field private mOffHapticFeedback:Landroid/widget/CheckedTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f0401b6

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0446

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    iput-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mCpuPowerSaving:Landroid/widget/CheckedTextView;

    const v2, 0x7f0b0447

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    iput-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mDisplayPowerSaving:Landroid/widget/CheckedTextView;

    const v2, 0x7f0b0448

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    iput-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mBackgroundColor:Landroid/widget/CheckedTextView;

    const v2, 0x7f0b0449

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    iput-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mOffHapticFeedback:Landroid/widget/CheckedTextView;

    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mCpuPowerSaving:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mDisplayPowerSaving:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mBackgroundColor:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mOffHapticFeedback:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "psm_switch"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iPowerSaving:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "psm_cpu_clock"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iCpuPowerSaving:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "psm_display"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iDisplayPowerSaving:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "psm_background_colour"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iBackgroundColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "psm_haptic_feedback"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iOffHapticFeedback:I

    iget-object v5, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mCpuPowerSaving:Landroid/widget/CheckedTextView;

    iget v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iCpuPowerSaving:I

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mDisplayPowerSaving:Landroid/widget/CheckedTextView;

    iget v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iDisplayPowerSaving:I

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mBackgroundColor:Landroid/widget/CheckedTextView;

    iget v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iBackgroundColor:I

    if-eqz v2, :cond_3

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mOffHapticFeedback:Landroid/widget/CheckedTextView;

    iget v5, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iOffHapticFeedback:I

    if-eqz v5, :cond_4

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->Disable_PSM_Browser()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mBackgroundColor:Landroid/widget/CheckedTextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_background_colour"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    const v2, 0x7f090e89

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setTitle(I)V

    const/4 v2, -0x3

    const v3, 0x104000a

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_3
.end method


# virtual methods
.method public isAllOptionDisabled()Z
    .locals 11

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "psm_switch"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iget-object v6, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "psm_cpu_clock"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v6, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "psm_display"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v6, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "psm_background_colour"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v6, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "psm_haptic_feedback"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const-string v6, "SmartSwitchWidgetProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isAllOptionDisabled(), powersavingState : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", cpu : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", display : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", back : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", haptic : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    move v5, v7

    :goto_0
    iget-object v6, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    const-string v9, "vibrator"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Vibrator;

    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_VIBETONZ"

    invoke-static {v6}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v5, :cond_2

    if-nez v3, :cond_2

    move v5, v7

    :cond_0
    :goto_1
    if-eqz v5, :cond_3

    if-nez v0, :cond_3

    move v5, v7

    :goto_2
    return v5

    :cond_1
    move v5, v8

    goto :goto_0

    :cond_2
    move v5, v8

    goto :goto_1

    :cond_3
    move v5, v8

    goto :goto_2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "psm_cpu_clock"

    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mCpuPowerSaving:Landroid/widget/CheckedTextView;

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v5, "psm_display"

    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mDisplayPowerSaving:Landroid/widget/CheckedTextView;

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v5, "psm_background_colour"

    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mBackgroundColor:Landroid/widget/CheckedTextView;

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_2
    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v5, "psm_haptic_feedback"

    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mOffHapticFeedback:Landroid/widget/CheckedTextView;

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_3
    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->isAllOptionDisabled()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "psm_switch"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f09148e

    invoke-static {v2, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_4
    iget v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iPowerSaving:I

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "psm_switch"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iCpuPowerSaving:I

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "psm_cpu_clock"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iDisplayPowerSaving:I

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "psm_display"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iBackgroundColor:I

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "psm_background_colour"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iOffHapticFeedback:I

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "psm_haptic_feedback"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v2, v3, :cond_1

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.POWERSAVING_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "changed"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void

    :cond_2
    move v2, v4

    goto/16 :goto_0

    :cond_3
    move v2, v4

    goto/16 :goto_1

    :cond_4
    move v2, v4

    goto/16 :goto_2

    :cond_5
    move v2, v4

    goto/16 :goto_3

    :cond_6
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "psm_switch"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mCpuPowerSaving:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mCpuPowerSaving:Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mCpuPowerSaving:Landroid/widget/CheckedTextView;

    invoke-virtual {v3}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mDisplayPowerSaving:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mDisplayPowerSaving:Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mDisplayPowerSaving:Landroid/widget/CheckedTextView;

    invoke-virtual {v3}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mBackgroundColor:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mBackgroundColor:Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mBackgroundColor:Landroid/widget/CheckedTextView;

    invoke-virtual {v3}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v3

    if-nez v3, :cond_5

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mOffHapticFeedback:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mOffHapticFeedback:Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mOffHapticFeedback:Landroid/widget/CheckedTextView;

    invoke-virtual {v3}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v3

    if-nez v3, :cond_7

    :goto_4
    invoke-virtual {v2, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_4
.end method
