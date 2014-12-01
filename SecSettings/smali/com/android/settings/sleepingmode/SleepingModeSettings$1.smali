.class Lcom/android/settings/sleepingmode/SleepingModeSettings$1;
.super Landroid/database/ContentObserver;
.source "SleepingModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sleepingmode/SleepingModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sleepingmode/SleepingModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/sleepingmode/SleepingModeSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings$1;->this$0:Lcom/android/settings/sleepingmode/SleepingModeSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    const-string v2, "SleepingmodeSettings"

    const-string v3, "onChange() SLEEPINGMODE_SWITCH_CHANGED"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings$1;->this$0:Lcom/android/settings/sleepingmode/SleepingModeSettings;

    # getter for: Lcom/android/settings/sleepingmode/SleepingModeSettings;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/sleepingmode/SleepingModeSettings;->access$000(Lcom/android/settings/sleepingmode/SleepingModeSettings;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sleepingmode_switch_onoff"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings$1;->this$0:Lcom/android/settings/sleepingmode/SleepingModeSettings;

    invoke-virtual {v2}, Lcom/android/settings/sleepingmode/SleepingModeSettings;->updateSleepingModePage()V

    const-string v2, "SleepingmodeSettings"

    const-string v3, "Broadcast intent : android.settings.SLEEPINGMODE_SWITCH_CHANGED"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.SLEEPINGMODE_SWITCH_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings$1;->this$0:Lcom/android/settings/sleepingmode/SleepingModeSettings;

    # getter for: Lcom/android/settings/sleepingmode/SleepingModeSettings;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/sleepingmode/SleepingModeSettings;->access$000(Lcom/android/settings/sleepingmode/SleepingModeSettings;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
