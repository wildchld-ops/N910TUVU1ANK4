.class Lcom/android/phone/LGTNetworkAutoRebootPopup$1;
.super Landroid/telephony/PhoneStateListener;
.source "LGTNetworkAutoRebootPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LGTNetworkAutoRebootPopup;
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

    iput-object p1, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup$1;->this$0:Lcom/android/phone/LGTNetworkAutoRebootPopup;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1    # Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup$1;->this$0:Lcom/android/phone/LGTNetworkAutoRebootPopup;

    # getter for: Lcom/android/phone/LGTNetworkAutoRebootPopup;->isWaitRadioPowerOff:Z
    invoke-static {v0}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->access$000(Lcom/android/phone/LGTNetworkAutoRebootPopup;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LGTNetworkAutoRebootPopup "

    const-string v1, " ---> STATE_POWER_OFF state setAuto now! "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup$1;->this$0:Lcom/android/phone/LGTNetworkAutoRebootPopup;

    # invokes: Lcom/android/phone/LGTNetworkAutoRebootPopup;->setAuto()V
    invoke-static {v0}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->access$100(Lcom/android/phone/LGTNetworkAutoRebootPopup;)V

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup$1;->this$0:Lcom/android/phone/LGTNetworkAutoRebootPopup;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/LGTNetworkAutoRebootPopup;->isWaitRadioPowerOff:Z
    invoke-static {v0, v1}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->access$002(Lcom/android/phone/LGTNetworkAutoRebootPopup;Z)Z

    :cond_0
    return-void
.end method
