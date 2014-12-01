.class public Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DirectAccessReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDirectAccessActions:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public deActiveStatusBar()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_0
    return-void
.end method

.method isDeviceProvisioned()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isNegativeColorEnabled()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "powersaving_switch"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "blackgrey_powersaving_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    :goto_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    :goto_1
    return v2

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object p1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mDirectAccessActions:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    if-nez v10, :cond_0

    new-instance v10, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    invoke-direct {v10, p1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mDirectAccessActions:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    :cond_0
    const-string v10, "com.samsung.action.HOME_TRIPLE_CLICK"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "DirectAccessReceiver"

    const-string v11, "Intent Receive"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->isDeviceProvisioned()Z

    move-result v3

    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "direct_access"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_1

    const-string v10, "DirectAccessReceiver"

    const-string v11, "direct access switch state : on"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "keyguard"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/KeyguardManager;

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "access_control_enabled"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_2

    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "direct_access_control"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_2

    iget-object v8, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mDirectAccessActions:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    iget-object v9, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->callAccessControlMode(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "direct_accessibility"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_7

    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "direct_talkback"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_7

    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "direct_negative"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_7

    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "direct_access_control"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_7

    move v4, v8

    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "direct_accessibility"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_3

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    :cond_3
    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "direct_talkback"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_4

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    :cond_4
    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "direct_negative"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->isNegativeColorEnabled()Z

    move-result v10

    if-eqz v10, :cond_5

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x3

    :cond_5
    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "direct_access_control"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_6

    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "access_control_use"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_6

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x4

    :cond_6
    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "access_control_enabled"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_8

    const-string v8, "DirectAccessReceiver"

    const-string v9, "Access control is now working"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const/4 v2, 0x4

    goto/16 :goto_0

    :cond_7
    move v4, v9

    goto :goto_1

    :cond_8
    if-nez v4, :cond_9

    if-le v1, v8, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->deActiveStatusBar()V

    iget-object v8, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mDirectAccessActions:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    invoke-virtual {v8, v5, v3}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->showDialog(ZZ)V

    const-string v8, "DirectAccessReceiver"

    const-string v9, "Show Dialog"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    if-ne v1, v8, :cond_1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v8, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mDirectAccessActions:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    iget-object v9, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->callAccessibilitySettings(Landroid/content/Context;)V

    const-string v8, "DirectAccessReceiver"

    const-string v9, "Action accessibility"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_1
    iget-object v8, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mDirectAccessActions:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    invoke-virtual {v8}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->onTalkbackModeChanged()V

    const-string v8, "DirectAccessReceiver"

    const-string v9, "Action talkback"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2
    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "high_contrast"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_a

    move v7, v8

    :goto_2
    iget-object v10, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mDirectAccessActions:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    if-nez v7, :cond_b

    :goto_3
    invoke-virtual {v10, v8}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->changeNegativeModeSystemSetting(Z)V

    const-string v8, "DirectAccessReceiver"

    const-string v9, "Action negative color"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    move v7, v9

    goto :goto_2

    :cond_b
    move v8, v9

    goto :goto_3

    :pswitch_3
    iget-object v8, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mDirectAccessActions:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    iget-object v9, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->callAccessControlMode(Landroid/content/Context;)V

    const-string v8, "DirectAccessReceiver"

    const-string v9, "Action interaction control"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
