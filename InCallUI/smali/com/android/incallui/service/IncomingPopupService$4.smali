.class Lcom/android/incallui/service/IncomingPopupService$4;
.super Landroid/os/Handler;
.source "IncomingPopupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/IncomingPopupService;->onCreate()V
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

    iput-object p1, p0, Lcom/android/incallui/service/IncomingPopupService$4;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService$4;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message received: what = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v4}, Lcom/android/incallui/service/IncomingPopupService;->access$000(Lcom/android/incallui/service/IncomingPopupService;Ljava/lang/String;Z)V

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService$4;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    const/4 v2, 0x0

    # setter for: Lcom/android/incallui/service/IncomingPopupService;->showingRejectMessage:Z
    invoke-static {v1, v2}, Lcom/android/incallui/service/IncomingPopupService;->access$2002(Lcom/android/incallui/service/IncomingPopupService;Z)Z

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService$4;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    const/4 v2, 0x0

    # setter for: Lcom/android/incallui/service/IncomingPopupService;->mRejectcall:Lcom/android/services/telephony/common/Call;
    invoke-static {v1, v2}, Lcom/android/incallui/service/IncomingPopupService;->access$2102(Lcom/android/incallui/service/IncomingPopupService;Lcom/android/services/telephony/common/Call;)Lcom/android/services/telephony/common/Call;

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService$4;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    invoke-virtual {v1}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService$4;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    # invokes: Lcom/android/incallui/service/IncomingPopupService;->showInCallUI()V
    invoke-static {v1}, Lcom/android/incallui/service/IncomingPopupService;->access$600(Lcom/android/incallui/service/IncomingPopupService;)V

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService$4;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    invoke-virtual {v1}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    :pswitch_2
    const-string v1, "mini_popup_call_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService$4;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    invoke-virtual {v1}, Lcom/android/incallui/service/IncomingPopupService;->showCallEndBlink()V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService$4;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    # getter for: Lcom/android/incallui/service/IncomingPopupService;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v1}, Lcom/android/incallui/service/IncomingPopupService;->access$2200(Lcom/android/incallui/service/IncomingPopupService;)Landroid/app/StatusBarManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService$4;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    # getter for: Lcom/android/incallui/service/IncomingPopupService;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v1}, Lcom/android/incallui/service/IncomingPopupService;->access$2200(Lcom/android/incallui/service/IncomingPopupService;)Landroid/app/StatusBarManager;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->setCallBackground(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/service/IncomingPopupService$4;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    # getter for: Lcom/android/incallui/service/IncomingPopupService;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v1}, Lcom/android/incallui/service/IncomingPopupService;->access$2200(Lcom/android/incallui/service/IncomingPopupService;)Landroid/app/StatusBarManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/StatusBarManager;->setCallBackground(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
