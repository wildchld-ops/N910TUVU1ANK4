.class Lcom/android/phone/TPhoneService$TBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/TPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/TPhoneService;


# direct methods
.method private constructor <init>(Lcom/android/phone/TPhoneService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/TPhoneService;Lcom/android/phone/TPhoneService$1;)V
    .locals 0
    .param p1    # Lcom/android/phone/TPhoneService;
    .param p2    # Lcom/android/phone/TPhoneService$1;

    invoke-direct {p0, p1}, Lcom/android/phone/TPhoneService$TBroadcastReceiver;-><init>(Lcom/android/phone/TPhoneService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TBroadcastReceiver : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;Z)V
    invoke-static {v6, v7, v9}, Lcom/android/phone/TPhoneService;->access$700(Lcom/android/phone/TPhoneService;Ljava/lang/String;Z)V

    const-string v6, "com.skt.prod.phone.TPHONE_SERVICE_CONNECTED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    # setter for: Lcom/android/phone/TPhoneService;->mIsSKTReady:Ljava/lang/Boolean;
    invoke-static {v6, v7}, Lcom/android/phone/TPhoneService;->access$2702(Lcom/android/phone/TPhoneService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v6, "com.skt.prod.phone.TPHONE_SERVICE_DISCONNECTED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    # setter for: Lcom/android/phone/TPhoneService;->mIsSKTReady:Ljava/lang/Boolean;
    invoke-static {v6, v7}, Lcom/android/phone/TPhoneService;->access$2702(Lcom/android/phone/TPhoneService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    const-string v6, "com.skt.prod.dialer.CHANGE_TPHONE_MODE_SETTING"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isTPhoneMode()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v9}, Lcom/android/phone/TPhoneUtils;->setDefaultPhoneApp(I)V

    :goto_1
    iget-object v6, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;
    invoke-static {v6}, Lcom/android/phone/TPhoneService;->access$900(Lcom/android/phone/TPhoneService;)Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v6}, Lcom/android/phone/NotificationMgr;->cancelMissedCallNotification()V

    iget-object v6, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    # invokes: Lcom/android/phone/TPhoneService;->setCoverState()V
    invoke-static {v6}, Lcom/android/phone/TPhoneService;->access$2800(Lcom/android/phone/TPhoneService;)V

    goto :goto_0

    :cond_3
    invoke-static {v10}, Lcom/android/phone/TPhoneUtils;->setDefaultPhoneApp(I)V

    goto :goto_1

    :cond_4
    const-string v6, "com.skt.prod.phone.action.FINISH_CALLEND_ACTIVITY"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v6}, Lcom/android/phone/TPhoneService;->access$600(Lcom/android/phone/TPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "TPhoneService"

    const-string v7, "TBroadcastReceiver : isRinging call state don\'t finish InCallScreen"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v6, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/phone/TPhoneService;->access$2100(Lcom/android/phone/TPhoneService;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x3e9

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v6, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    const/4 v7, 0x0

    # setter for: Lcom/android/phone/TPhoneService;->mDisconnectingCall:Lcom/skt/prod/phone/TCall;
    invoke-static {v6, v7}, Lcom/android/phone/TPhoneService;->access$1002(Lcom/android/phone/TPhoneService;Lcom/skt/prod/phone/TCall;)Lcom/skt/prod/phone/TCall;

    iget-object v6, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;
    invoke-static {v6}, Lcom/android/phone/TPhoneService;->access$900(Lcom/android/phone/TPhoneService;)Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    goto :goto_0

    :cond_5
    const-string v6, "TPhoneService"

    const-string v7, "TBroadcastReceiver : finish InCallScreen"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.skt.prod.phone.action.FINISH_INCALLUI"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;
    invoke-static {v6}, Lcom/android/phone/TPhoneService;->access$900(Lcom/android/phone/TPhoneService;)Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    :cond_6
    const-string v6, "com.skt.prod.phone.TPHONE_CLEAR_LOCKSCREEN_NOTIFICATION"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isTPhoneMode()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;
    invoke-static {v6}, Lcom/android/phone/TPhoneService;->access$900(Lcom/android/phone/TPhoneService;)Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v6}, Lcom/android/phone/NotificationMgr;->cancelMissedCallNotifications()V

    goto/16 :goto_0

    :cond_7
    const-string v6, "com.skt.prod.dialer.TPHONE_UPDATE_REQUEST"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v6, "TPhoneService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TPhone]PhonePath ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "TPHONE_PATH"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "TPHONE_INTERNAL_PATH"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "TPhoneService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TPhone]PhonePath ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "TPhoneService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TPhone]DialPath ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_8

    if-nez v1, :cond_9

    :cond_8
    const-string v6, "TPhoneService"

    const-string v7, "[TPhone] INSTALL path is null!!"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    iget-object v6, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    invoke-virtual {v6, v1}, Lcom/android/phone/TPhoneService;->SetTPhonePath(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    invoke-virtual {v6, v0}, Lcom/android/phone/TPhoneService;->SetTDialPath(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    # invokes: Lcom/android/phone/TPhoneService;->InstallTPhonePkg()V
    invoke-static {v6}, Lcom/android/phone/TPhoneService;->access$2900(Lcom/android/phone/TPhoneService;)V

    goto/16 :goto_0

    :cond_a
    const-string v6, "android.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;
    invoke-static {v6}, Lcom/android/phone/TPhoneService;->access$900(Lcom/android/phone/TPhoneService;)Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v6}, Lcom/android/phone/NotificationMgr;->cancelMissedCallNotification()V

    goto/16 :goto_0
.end method
