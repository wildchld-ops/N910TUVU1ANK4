.class Lcom/android/phone/LGTNetworkAutoRebootPopup$2;
.super Ljava/lang/Object;
.source "LGTNetworkAutoRebootPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LGTNetworkAutoRebootPopup;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LGTNetworkAutoRebootPopup;


# direct methods
.method constructor <init>(Lcom/android/phone/LGTNetworkAutoRebootPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup$2;->this$0:Lcom/android/phone/LGTNetworkAutoRebootPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const-string v1, "LGTNetworkAutoRebootPopup "

    const-string v2, " show LGTNetworkAutoRebootPopup on CLick reboot "

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup$2;->this$0:Lcom/android/phone/LGTNetworkAutoRebootPopup;

    # getter for: Lcom/android/phone/LGTNetworkAutoRebootPopup;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->access$200(Lcom/android/phone/LGTNetworkAutoRebootPopup;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const-string v1, "LGTNetworkAutoRebootPopup "

    const-string v2, "already POWER_OFF state setAuto now! "

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup$2;->this$0:Lcom/android/phone/LGTNetworkAutoRebootPopup;

    # invokes: Lcom/android/phone/LGTNetworkAutoRebootPopup;->setAuto()V
    invoke-static {v1}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->access$100(Lcom/android/phone/LGTNetworkAutoRebootPopup;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup$2;->this$0:Lcom/android/phone/LGTNetworkAutoRebootPopup;

    const/4 v2, 0x1

    # setter for: Lcom/android/phone/LGTNetworkAutoRebootPopup;->isWaitRadioPowerOff:Z
    invoke-static {v1, v2}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->access$002(Lcom/android/phone/LGTNetworkAutoRebootPopup;Z)Z

    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup$2;->this$0:Lcom/android/phone/LGTNetworkAutoRebootPopup;

    # getter for: Lcom/android/phone/LGTNetworkAutoRebootPopup;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->access$200(Lcom/android/phone/LGTNetworkAutoRebootPopup;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    const-string v1, "LGTNetworkAutoRebootPopup "

    const-string v2, "request set RadioPower off ---> "

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
