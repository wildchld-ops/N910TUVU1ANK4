.class Lcom/android/phone/LGTRoamingReceiver$1;
.super Landroid/os/Handler;
.source "LGTRoamingReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LGTRoamingReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LGTRoamingReceiver;


# direct methods
.method constructor <init>(Lcom/android/phone/LGTRoamingReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/LGTRoamingReceiver$1;->this$0:Lcom/android/phone/LGTRoamingReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1    # Landroid/os/Message;

    const/4 v3, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v2, "LGTRoamingReceiver"

    const-string v4, "setLteRoamingIMSI Done "

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "gsm.sim.roaming"

    iget-object v4, p0, Lcom/android/phone/LGTRoamingReceiver$1;->this$0:Lcom/android/phone/LGTRoamingReceiver;

    # getter for: Lcom/android/phone/LGTRoamingReceiver;->mEfRoaming:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/LGTRoamingReceiver;->access$000(Lcom/android/phone/LGTRoamingReceiver;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/LGTRoamingReceiver$1;->this$0:Lcom/android/phone/LGTRoamingReceiver;

    # getter for: Lcom/android/phone/LGTRoamingReceiver;->mcontext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/LGTRoamingReceiver;->access$100(Lcom/android/phone/LGTRoamingReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lte_roaming_mode_on"

    iget-object v2, p0, Lcom/android/phone/LGTRoamingReceiver$1;->this$0:Lcom/android/phone/LGTRoamingReceiver;

    # getter for: Lcom/android/phone/LGTRoamingReceiver;->enable:Z
    invoke-static {v2}, Lcom/android/phone/LGTRoamingReceiver;->access$200(Lcom/android/phone/LGTRoamingReceiver;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "LGTRoamingReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lte_roaming_mode_on enable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/LGTRoamingReceiver$1;->this$0:Lcom/android/phone/LGTRoamingReceiver;

    # getter for: Lcom/android/phone/LGTRoamingReceiver;->enable:Z
    invoke-static {v5}, Lcom/android/phone/LGTRoamingReceiver;->access$200(Lcom/android/phone/LGTRoamingReceiver;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "LGTRoamingReceiver"

    const-string v4, "setNetworkSelectionModeAutomatic"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/LGTRoamingReceiver$1;->this$0:Lcom/android/phone/LGTRoamingReceiver;

    # invokes: Lcom/android/phone/LGTRoamingReceiver;->sendImsiStatusChangeNotiForNoWait()V
    invoke-static {v2}, Lcom/android/phone/LGTRoamingReceiver;->access$300(Lcom/android/phone/LGTRoamingReceiver;)V

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/LGTRoamingReceiver$1;->this$0:Lcom/android/phone/LGTRoamingReceiver;

    # getter for: Lcom/android/phone/LGTRoamingReceiver;->mcontext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/LGTRoamingReceiver;->access$100(Lcom/android/phone/LGTRoamingReceiver;)Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0909f9

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
