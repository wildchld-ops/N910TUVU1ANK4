.class public Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InCallApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationBroadcastReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Broadcast from Notification: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "com.android.incallui.ACTION_HANG_UP_ONGOING_CALL"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "com.android.incallui.ACTION_CALL_END"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/android/incallui/InCallPresenter;->hangUpOngoingCall(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v10, "com.android.incallui.ACTION_CALL_REJECT"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/android/incallui/InCallPresenter;->rejectCall(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const-string v10, "com.android.incallui.ACTION_SHOW_CALL_SCREEN"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    # setter for: Lcom/android/incallui/InCallApp;->mIsFromNoti:Z
    invoke-static {v10}, Lcom/android/incallui/InCallApp;->access$002(Z)Z

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(Z)Landroid/content/Intent;

    move-result-object v9

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    const/16 v11, 0x64

    if-lt v10, v11, :cond_4

    const-string v10, "persona"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PersonaManager;

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v9}, Landroid/os/PersonaManager;->switchPersonaAndLaunch(ILandroid/content/Intent;)Z

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/InCallPresenter;->checkDrivelink()V

    if-eqz v9, :cond_1

    invoke-virtual {p1, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v10, "support_second_screen"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->doClose()V

    goto :goto_0

    :cond_5
    const-string v10, "com.android.incallui.ACTION_CALL_MUTE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v10, "EXTRA_CALL_MUTE"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v8, 0x1

    :goto_1
    if-nez v6, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/android/incallui/InCallPresenter;->muteClicked(Z)V

    goto :goto_0

    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    :cond_7
    const/4 v10, 0x2

    if-ne v6, v10, :cond_8

    const/4 v10, 0x1

    if-ne v4, v10, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/incallui/InCallPresenter;->muteClicked(Z)V

    goto/16 :goto_0

    :cond_8
    const/4 v10, 0x1

    if-ne v6, v10, :cond_1

    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/incallui/InCallPresenter;->muteClicked(Z)V

    goto/16 :goto_0

    :cond_9
    const-string v10, "com.android.incallui.ACTION_CALL_SPEAKER"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/InCallPresenter;->toggleSpeakerphone()V

    goto/16 :goto_0

    :cond_a
    const-string v10, "com.android.incallui.ACTION_CALL_UNHOLD"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/incallui/InCallPresenter;->holdClicked(Z)V

    goto/16 :goto_0

    :cond_b
    const-string v10, "com.android.incallui.ACTION_CALL_ACCEPT"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v2

    :cond_c
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/android/incallui/CallCommandClient;->answerCall(I)V

    goto/16 :goto_0

    :cond_d
    const-string v10, "com.android.incallui.ACTION_CALL_DRAG_MODE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.sec.feature.multiwindow.recentui"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    const-string v10, "com.android.systemui"

    const-string v11, "com.android.systemui.recent.multiwindow.SmartClipDragDrop"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    invoke-virtual {p1, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v10, "support_second_screen"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/incallui/InCallPresenter;->setDragModeViewVisible(Z)V

    goto/16 :goto_0

    :cond_e
    const-string v10, "com.sec.android.app.FlashBarService"

    const-string v11, "com.sec.android.app.FlashBarService.SmartClipDragDrop"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method
