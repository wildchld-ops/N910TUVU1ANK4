.class Lcom/android/incallui/service/OverlayPopupService$2;
.super Landroid/os/Handler;
.source "OverlayPopupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/OverlayPopupService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/OverlayPopupService;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/OverlayPopupService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/OverlayPopupService$2;->this$0:Lcom/android/incallui/service/OverlayPopupService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1    # Landroid/os/Message;

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService$2;->this$0:Lcom/android/incallui/service/OverlayPopupService;

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

    # invokes: Lcom/android/incallui/service/OverlayPopupService;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v4}, Lcom/android/incallui/service/OverlayPopupService;->access$500(Lcom/android/incallui/service/OverlayPopupService;Ljava/lang/String;Z)V

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService$2;->this$0:Lcom/android/incallui/service/OverlayPopupService;

    # getter for: Lcom/android/incallui/service/OverlayPopupService;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v1}, Lcom/android/incallui/service/OverlayPopupService;->access$600(Lcom/android/incallui/service/OverlayPopupService;)Landroid/app/StatusBarManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "ims_ui_for_kor"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService$2;->this$0:Lcom/android/incallui/service/OverlayPopupService;

    # getter for: Lcom/android/incallui/service/OverlayPopupService;->mState:Lcom/android/incallui/InCallPresenter$InCallState;
    invoke-static {v1}, Lcom/android/incallui/service/OverlayPopupService;->access$700(Lcom/android/incallui/service/OverlayPopupService;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v1, v2, :cond_1

    const-string v1, "OverlayPopupService"

    const-string v2, "state == InCallState.NO_CALLS "

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService$2;->this$0:Lcom/android/incallui/service/OverlayPopupService;

    # getter for: Lcom/android/incallui/service/OverlayPopupService;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v1}, Lcom/android/incallui/service/OverlayPopupService;->access$600(Lcom/android/incallui/service/OverlayPopupService;)Landroid/app/StatusBarManager;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->setCallBackground(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService$2;->this$0:Lcom/android/incallui/service/OverlayPopupService;

    # getter for: Lcom/android/incallui/service/OverlayPopupService;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v1}, Lcom/android/incallui/service/OverlayPopupService;->access$600(Lcom/android/incallui/service/OverlayPopupService;)Landroid/app/StatusBarManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/StatusBarManager;->setCallBackground(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService$2;->this$0:Lcom/android/incallui/service/OverlayPopupService;

    invoke-virtual {v1}, Lcom/android/incallui/service/OverlayPopupService;->showCallEndBlink()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
