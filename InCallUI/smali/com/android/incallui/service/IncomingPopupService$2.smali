.class Lcom/android/incallui/service/IncomingPopupService$2;
.super Landroid/content/BroadcastReceiver;
.source "IncomingPopupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/IncomingPopupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/IncomingPopupService;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/IncomingPopupService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/IncomingPopupService$2;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/16 v8, 0x64

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/incallui/service/IncomingPopupService$2;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive with intent : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/incallui/service/IncomingPopupService;->access$1600(Lcom/android/incallui/service/IncomingPopupService;Ljava/lang/String;)V

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    const-string v4, "mini_popup_call_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/incallui/CallCommandClient;->setSystemBarNavigationEnabled(Z)V

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/service/IncomingPopupService$2;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    # invokes: Lcom/android/incallui/service/IncomingPopupService;->showInCallUI()V
    invoke-static {v4}, Lcom/android/incallui/service/IncomingPopupService;->access$600(Lcom/android/incallui/service/IncomingPopupService;)V

    iget-object v4, p0, Lcom/android/incallui/service/IncomingPopupService$2;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    invoke-virtual {v4}, Landroid/app/Service;->stopSelf()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/incallui/service/IncomingPopupService$2;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    # invokes: Lcom/android/incallui/service/IncomingPopupService;->showInCallUI()V
    invoke-static {v4}, Lcom/android/incallui/service/IncomingPopupService;->access$600(Lcom/android/incallui/service/IncomingPopupService;)V

    iget-object v4, p0, Lcom/android/incallui/service/IncomingPopupService$2;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    invoke-virtual {v4}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    :cond_3
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/service/IncomingPopupService$2;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    # invokes: Lcom/android/incallui/service/IncomingPopupService;->checkAudioMode()V
    invoke-static {v4}, Lcom/android/incallui/service/IncomingPopupService;->access$1700(Lcom/android/incallui/service/IncomingPopupService;)V

    goto :goto_0

    :cond_4
    const-string v4, "answer_ringing_call"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "mini_popup_call_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/service/IncomingPopupService$2;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    # invokes: Lcom/android/incallui/service/IncomingPopupService;->answerThenGoCallScreen()V
    invoke-static {v4}, Lcom/android/incallui/service/IncomingPopupService;->access$100(Lcom/android/incallui/service/IncomingPopupService;)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/incallui/service/IncomingPopupService$2;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    # invokes: Lcom/android/incallui/service/IncomingPopupService;->answerCallThenStayAsPopUp()V
    invoke-static {v4}, Lcom/android/incallui/service/IncomingPopupService;->access$200(Lcom/android/incallui/service/IncomingPopupService;)V

    goto :goto_0

    :cond_6
    const-string v4, "com.sec.android.action.NOTIFY_STOP_DRAG_MODE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "mini_popup_call_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/incallui/service/IncomingPopupService$2;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    # setter for: Lcom/android/incallui/service/IncomingPopupService;->mIsContensShareMode:Z
    invoke-static {v4, v7}, Lcom/android/incallui/service/IncomingPopupService;->access$702(Lcom/android/incallui/service/IncomingPopupService;Z)Z

    :cond_7
    iget-object v4, p0, Lcom/android/incallui/service/IncomingPopupService$2;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    invoke-virtual {v4}, Lcom/android/incallui/service/IncomingPopupService;->updateCustomLayout()V

    goto :goto_0

    :cond_8
    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "android.intent.extra.user_handle"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-lt v3, v8, :cond_9

    iget-object v4, p0, Lcom/android/incallui/service/IncomingPopupService$2;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    # getter for: Lcom/android/incallui/service/IncomingPopupService;->mDrageModeBtn:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/android/incallui/service/IncomingPopupService;->access$1800(Lcom/android/incallui/service/IncomingPopupService;)Landroid/widget/ImageButton;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_9
    if-ge v3, v8, :cond_1

    iget-object v4, p0, Lcom/android/incallui/service/IncomingPopupService$2;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    # getter for: Lcom/android/incallui/service/IncomingPopupService;->mDrageModeBtn:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/android/incallui/service/IncomingPopupService;->access$1800(Lcom/android/incallui/service/IncomingPopupService;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
