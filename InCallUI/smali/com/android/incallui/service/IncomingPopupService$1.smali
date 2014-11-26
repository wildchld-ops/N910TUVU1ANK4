.class Lcom/android/incallui/service/IncomingPopupService$1;
.super Ljava/lang/Object;
.source "IncomingPopupService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/incallui/service/IncomingPopupService$1;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1    # Landroid/view/View;

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v3, p0, Lcom/android/incallui/service/IncomingPopupService$1;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick(View "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;Z)V
    invoke-static {v3, v4, v6}, Lcom/android/incallui/service/IncomingPopupService;->access$000(Lcom/android/incallui/service/IncomingPopupService;Ljava/lang/String;Z)V

    const-string v3, "flash_notification"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->stopFlashNotification()V

    :cond_0
    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const-string v3, "mini_popup_call_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/service/IncomingPopupService$1;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    # invokes: Lcom/android/incallui/service/IncomingPopupService;->answerThenGoCallScreen()V
    invoke-static {v3}, Lcom/android/incallui/service/IncomingPopupService;->access$100(Lcom/android/incallui/service/IncomingPopupService;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/service/IncomingPopupService$1;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    # invokes: Lcom/android/incallui/service/IncomingPopupService;->answerCallThenStayAsPopUp()V
    invoke-static {v3}, Lcom/android/incallui/service/IncomingPopupService;->access$200(Lcom/android/incallui/service/IncomingPopupService;)V

    goto :goto_0

    :sswitch_1
    iget-object v3, p0, Lcom/android/incallui/service/IncomingPopupService$1;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    # invokes: Lcom/android/incallui/service/IncomingPopupService;->answerCallThenStay()V
    invoke-static {v3}, Lcom/android/incallui/service/IncomingPopupService;->access$300(Lcom/android/incallui/service/IncomingPopupService;)V

    goto :goto_0

    :sswitch_2
    iget-object v3, p0, Lcom/android/incallui/service/IncomingPopupService$1;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    # invokes: Lcom/android/incallui/service/IncomingPopupService;->rejectCall()V
    invoke-static {v3}, Lcom/android/incallui/service/IncomingPopupService;->access$400(Lcom/android/incallui/service/IncomingPopupService;)V

    goto :goto_0

    :sswitch_3
    iget-object v3, p0, Lcom/android/incallui/service/IncomingPopupService$1;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    # invokes: Lcom/android/incallui/service/IncomingPopupService;->sendMessage()V
    invoke-static {v3}, Lcom/android/incallui/service/IncomingPopupService;->access$500(Lcom/android/incallui/service/IncomingPopupService;)V

    goto :goto_0

    :sswitch_4
    iget-object v3, p0, Lcom/android/incallui/service/IncomingPopupService$1;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    # invokes: Lcom/android/incallui/service/IncomingPopupService;->showInCallUI()V
    invoke-static {v3}, Lcom/android/incallui/service/IncomingPopupService;->access$600(Lcom/android/incallui/service/IncomingPopupService;)V

    iget-object v3, p0, Lcom/android/incallui/service/IncomingPopupService$1;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    invoke-virtual {v3}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    :sswitch_5
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/android/incallui/service/IncomingPopupService$1;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    const-string v4, "clipboardEx"

    invoke-virtual {v3, v4}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v2}, Landroid/sec/clipboard/ClipboardExManager;->hideUIFloatingIcon()V

    iget-object v3, p0, Lcom/android/incallui/service/IncomingPopupService$1;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    iget-object v3, v3, Lcom/android/incallui/service/MiniModeCallService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.feature.multiwindow.recentui"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.recent.multiwindow.SmartClipDragDrop"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    iget-object v3, p0, Lcom/android/incallui/service/IncomingPopupService$1;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    invoke-virtual {v3, v1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/incallui/service/IncomingPopupService$1;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    # setter for: Lcom/android/incallui/service/IncomingPopupService;->mIsContensShareMode:Z
    invoke-static {v3, v6}, Lcom/android/incallui/service/IncomingPopupService;->access$702(Lcom/android/incallui/service/IncomingPopupService;Z)Z

    iget-object v3, p0, Lcom/android/incallui/service/IncomingPopupService$1;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    iget-object v3, v3, Lcom/android/incallui/service/MiniModeCallService;->mContext:Landroid/content/Context;

    const-string v4, "com.android.phone"

    const-string v5, "DRAG"

    invoke-static {v3, v4, v5}, Lcom/android/incallui/utils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/incallui/service/IncomingPopupService$1;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    invoke-virtual {v3}, Lcom/android/incallui/service/IncomingPopupService;->updateCustomLayout()V

    goto :goto_0

    :cond_2
    const-string v3, "com.sec.android.app.FlashBarService"

    const-string v4, "com.sec.android.app.FlashBarService.SmartClipDragDrop"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :sswitch_6
    iget-object v3, p0, Lcom/android/incallui/service/IncomingPopupService$1;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    iget-object v4, p0, Lcom/android/incallui/service/IncomingPopupService$1;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    # getter for: Lcom/android/incallui/service/IncomingPopupService;->mSpeakerButton:Landroid/widget/ToggleButton;
    invoke-static {v4}, Lcom/android/incallui/service/IncomingPopupService;->access$800(Lcom/android/incallui/service/IncomingPopupService;)Landroid/widget/ToggleButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    # invokes: Lcom/android/incallui/service/IncomingPopupService;->toggleSpeaker(Z)V
    invoke-static {v3, v4}, Lcom/android/incallui/service/IncomingPopupService;->access$900(Lcom/android/incallui/service/IncomingPopupService;Z)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v3, p0, Lcom/android/incallui/service/IncomingPopupService$1;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    iget-object v4, p0, Lcom/android/incallui/service/IncomingPopupService$1;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    # getter for: Lcom/android/incallui/service/IncomingPopupService;->mMuteButton:Landroid/widget/ToggleButton;
    invoke-static {v4}, Lcom/android/incallui/service/IncomingPopupService;->access$1000(Lcom/android/incallui/service/IncomingPopupService;)Landroid/widget/ToggleButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    # invokes: Lcom/android/incallui/service/IncomingPopupService;->toggleMute(Z)V
    invoke-static {v3, v4}, Lcom/android/incallui/service/IncomingPopupService;->access$1100(Lcom/android/incallui/service/IncomingPopupService;Z)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v3, p0, Lcom/android/incallui/service/IncomingPopupService$1;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    # invokes: Lcom/android/incallui/service/IncomingPopupService;->endCall()V
    invoke-static {v3}, Lcom/android/incallui/service/IncomingPopupService;->access$1200(Lcom/android/incallui/service/IncomingPopupService;)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v3, p0, Lcom/android/incallui/service/IncomingPopupService$1;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    # invokes: Lcom/android/incallui/service/IncomingPopupService;->videoCallClicked()V
    invoke-static {v3}, Lcom/android/incallui/service/IncomingPopupService;->access$1300(Lcom/android/incallui/service/IncomingPopupService;)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v3, p0, Lcom/android/incallui/service/IncomingPopupService$1;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    # invokes: Lcom/android/incallui/service/IncomingPopupService;->voiceCallClicked()V
    invoke-static {v3}, Lcom/android/incallui/service/IncomingPopupService;->access$1400(Lcom/android/incallui/service/IncomingPopupService;)V

    goto/16 :goto_0

    :sswitch_b
    iget-object v3, p0, Lcom/android/incallui/service/IncomingPopupService$1;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    # invokes: Lcom/android/incallui/service/IncomingPopupService;->sendMessageClicked()V
    invoke-static {v3}, Lcom/android/incallui/service/IncomingPopupService;->access$1500(Lcom/android/incallui/service/IncomingPopupService;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e017e -> :sswitch_4
        0x7f0e0180 -> :sswitch_5
        0x7f0e0190 -> :sswitch_0
        0x7f0e0191 -> :sswitch_1
        0x7f0e0192 -> :sswitch_2
        0x7f0e0195 -> :sswitch_3
        0x7f0e01d7 -> :sswitch_6
        0x7f0e01d8 -> :sswitch_7
        0x7f0e01d9 -> :sswitch_8
        0x7f0e01db -> :sswitch_9
        0x7f0e01dd -> :sswitch_a
        0x7f0e01df -> :sswitch_9
        0x7f0e01e0 -> :sswitch_b
    .end sparse-switch
.end method
