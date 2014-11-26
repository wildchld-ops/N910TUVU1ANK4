.class Lcom/android/phone/OutgoingCallBroadcaster$9;
.super Ljava/lang/Object;
.source "OutgoingCallBroadcaster.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/OutgoingCallBroadcaster;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OutgoingCallBroadcaster;

.field final synthetic val$mTelephonyService:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method constructor <init>(Lcom/android/phone/OutgoingCallBroadcaster;Lcom/android/internal/telephony/ITelephony;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    iput-object p2, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->val$mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v3, 0x1

    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->val$mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->val$mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDefaultSimForVoiceCalls()I

    move-result v0

    if-eq p2, v0, :cond_0

    sput v0, Lcom/android/phone/CallNotifier;->prevSIMslot:I

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/phone/CallNotifier;->isChangeSimSlot:Z

    :cond_0
    if-nez p2, :cond_3

    iget-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->val$mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->setDefaultSimForVoiceCallsDuringCall(I)V

    iget-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v2}, Lcom/android/phone/OutgoingCallBroadcaster;->onStop()V

    iget-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    # getter for: Lcom/android/phone/OutgoingCallBroadcaster;->callIntentForPreferredSim:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1300(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/android/phone/OutgoingCallBroadcaster;->EXTRA_SIM_ID:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    # getter for: Lcom/android/phone/OutgoingCallBroadcaster;->callIntentForPreferredSim:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1300(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ipcall"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    iget-object v3, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    iget-object v4, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    # getter for: Lcom/android/phone/OutgoingCallBroadcaster;->numberForPreferredSim:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1400(Lcom/android/phone/OutgoingCallBroadcaster;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/OutgoingCallBroadcaster;->makeIpCallNum(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/phone/OutgoingCallBroadcaster;->numberForPreferredSim:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1402(Lcom/android/phone/OutgoingCallBroadcaster;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    iget-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    iget-object v3, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    # getter for: Lcom/android/phone/OutgoingCallBroadcaster;->callIntentForPreferredSim:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1300(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    # getter for: Lcom/android/phone/OutgoingCallBroadcaster;->numberForPreferredSim:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1400(Lcom/android/phone/OutgoingCallBroadcaster;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/phone/OutgoingCallBroadcaster;->startSendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1200(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/content/Intent;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-ne p2, v3, :cond_5

    iget-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->val$mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->setDefaultSimForVoiceCallsDuringCall(I)V

    iget-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v2}, Lcom/android/phone/OutgoingCallBroadcaster;->onStop()V

    iget-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    # getter for: Lcom/android/phone/OutgoingCallBroadcaster;->callIntentForPreferredSim:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1300(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/android/phone/OutgoingCallBroadcaster;->EXTRA_SIM_ID:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    # getter for: Lcom/android/phone/OutgoingCallBroadcaster;->callIntentForPreferredSim:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1300(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ipcall"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    iget-object v3, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    iget-object v4, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    # getter for: Lcom/android/phone/OutgoingCallBroadcaster;->numberForPreferredSim:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1400(Lcom/android/phone/OutgoingCallBroadcaster;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/OutgoingCallBroadcaster;->makeIpCallNum(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/phone/OutgoingCallBroadcaster;->numberForPreferredSim:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1402(Lcom/android/phone/OutgoingCallBroadcaster;Ljava/lang/String;)Ljava/lang/String;

    :cond_4
    iget-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    iget-object v3, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    # getter for: Lcom/android/phone/OutgoingCallBroadcaster;->callIntentForPreferredSim:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1300(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    # getter for: Lcom/android/phone/OutgoingCallBroadcaster;->numberForPreferredSim:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1400(Lcom/android/phone/OutgoingCallBroadcaster;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/phone/OutgoingCallBroadcaster;->startSendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1200(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "OutgoingCallBroadcaster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ITelephony threw RemoteException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->val$mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->setDefaultSimForVoiceCallsDuringCall(I)V

    iget-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v2}, Lcom/android/phone/OutgoingCallBroadcaster;->onStop()V

    iget-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    # getter for: Lcom/android/phone/OutgoingCallBroadcaster;->callIntentForPreferredSim:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1300(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/android/phone/OutgoingCallBroadcaster;->EXTRA_SIM_ID:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    # getter for: Lcom/android/phone/OutgoingCallBroadcaster;->callIntentForPreferredSim:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1300(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ipcall"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    iget-object v3, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    iget-object v4, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    # getter for: Lcom/android/phone/OutgoingCallBroadcaster;->numberForPreferredSim:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1400(Lcom/android/phone/OutgoingCallBroadcaster;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/OutgoingCallBroadcaster;->makeIpCallNum(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/phone/OutgoingCallBroadcaster;->numberForPreferredSim:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1402(Lcom/android/phone/OutgoingCallBroadcaster;Ljava/lang/String;)Ljava/lang/String;

    :cond_6
    iget-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    iget-object v3, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    # getter for: Lcom/android/phone/OutgoingCallBroadcaster;->callIntentForPreferredSim:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1300(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    # getter for: Lcom/android/phone/OutgoingCallBroadcaster;->numberForPreferredSim:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1400(Lcom/android/phone/OutgoingCallBroadcaster;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/phone/OutgoingCallBroadcaster;->startSendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1200(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
