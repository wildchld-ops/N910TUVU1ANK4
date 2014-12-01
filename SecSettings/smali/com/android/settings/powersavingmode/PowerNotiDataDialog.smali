.class public Lcom/android/settings/powersavingmode/PowerNotiDataDialog;
.super Landroid/app/Activity;
.source "PowerNotiDataDialog.java"


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mPowerNotiDataReceiver:Landroid/content/BroadcastReceiver;

.field mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/powersavingmode/PowerNotiDataDialog$1;-><init>(Lcom/android/settings/powersavingmode/PowerNotiDataDialog;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mPowerNotiDataReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    sput-object p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const v6, 0x7f091b44

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "PowerNotiDataDialog"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ultra_powersaving_mode"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "BgDataChanged"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "limit_bgdata"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_2
    new-instance v0, Landroid/app/ProgressDialog;

    sget-object v3, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    if-ne v1, v5, :cond_5

    const-string v0, "PowerSaving"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_3
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/settings/powersavingmode/PowerNotiService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    const-string v0, "PowerSaving"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f091b49

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f091b45

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 3

    const-string v1, "PowerNotiDataDialog"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->dismissDialog()V

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mPowerNotiDataReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mPowerNotiDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mPowerNotiDataReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    const-string v1, "PowerNotiDataDialog"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.settings.POWERSAVING_DATA_SERVICE_DONE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;->mPowerNotiDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "PowerNotiDataDialog"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
