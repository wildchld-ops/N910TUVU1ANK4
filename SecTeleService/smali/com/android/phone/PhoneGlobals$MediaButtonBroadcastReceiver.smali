.class Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaButtonBroadcastReceiver"
.end annotation


# instance fields
.field private isLongPress:Z

.field final synthetic this$0:Lcom/android/phone/PhoneGlobals;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 1

    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;->isLongPress:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/PhoneGlobals$1;)V
    .locals 0
    .param p1    # Lcom/android/phone/PhoneGlobals;
    .param p2    # Lcom/android/phone/PhoneGlobals$1;

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;-><init>(Lcom/android/phone/PhoneGlobals;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/16 v10, 0x4f

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v8, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    const-string v8, "PhoneApp"

    const-string v9, "MediaButtonBroadcastReceiver.onReceive()...  event = "

    invoke-static {v8, v9, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v8, "feature_skt_tphone"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isTPhoneMode()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneRelaxMode()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v6, "PhoneApp"

    const-string v7, "TPhone RelaxMode : we ignore MediaButtonBroadcastReceiver events"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    if-ne v8, v10, :cond_3

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v8, v9, :cond_3

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-lez v8, :cond_2

    const-string v8, "PhoneApp"

    const-string v9, "MediaButtonBroadcastReceiver.onReceive()... Long pressed "

    invoke-static {v8, v9, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iput-boolean v6, p0, Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;->isLongPress:Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;->abortBroadcast()V

    :cond_3
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    if-ne v8, v10, :cond_0

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-ne v8, v6, :cond_0

    const-string v8, "feature_chn_duos"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getForegroundPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    :goto_1
    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v5, v8, :cond_4

    const/4 v0, 0x0

    const-string v8, "feature_chn_duos"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getForegroundPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v8

    if-nez v8, :cond_6

    move v2, v6

    :goto_2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v8

    if-nez v8, :cond_7

    move v3, v6

    :goto_3
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v8

    if-nez v8, :cond_8

    move v4, v6

    :goto_4
    iget-object v6, p0, Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->getForegroundPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    :goto_5
    iget-boolean v6, p0, Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;->isLongPress:Z

    if-eqz v6, :cond_11

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v5, v6, :cond_10

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    :goto_6
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;->abortBroadcast()V

    :cond_4
    iput-boolean v7, p0, Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;->isLongPress:Z

    goto/16 :goto_0

    :cond_5
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    goto :goto_1

    :cond_6
    move v2, v7

    goto :goto_2

    :cond_7
    move v3, v7

    goto :goto_3

    :cond_8
    move v4, v7

    goto :goto_4

    :cond_9
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v8

    if-nez v8, :cond_a

    move v2, v6

    :goto_7
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v8

    if-nez v8, :cond_b

    move v3, v6

    :goto_8
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v8

    if-nez v8, :cond_c

    move v4, v6

    :goto_9
    if-eqz v4, :cond_d

    iget-object v6, p0, Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    :goto_a
    goto :goto_5

    :cond_a
    move v2, v7

    goto :goto_7

    :cond_b
    move v3, v7

    goto :goto_8

    :cond_c
    move v4, v7

    goto :goto_9

    :cond_d
    if-eqz v2, :cond_e

    iget-object v6, p0, Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_a

    :cond_e
    if-eqz v3, :cond_f

    iget-object v6, p0, Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_a

    :cond_f
    iget-object v6, p0, Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v6, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    goto :goto_a

    :cond_10
    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->handleHeadsetHook(Lcom/android/internal/telephony/Phone;Landroid/view/KeyEvent;)Z

    goto :goto_6

    :cond_11
    if-nez v4, :cond_12

    if-eqz v2, :cond_12

    if-eqz v3, :cond_12

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    goto :goto_6

    :cond_12
    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->handleHeadsetHook(Lcom/android/internal/telephony/Phone;Landroid/view/KeyEvent;)Z

    goto/16 :goto_6
.end method
