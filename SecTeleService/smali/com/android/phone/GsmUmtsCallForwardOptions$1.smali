.class Lcom/android/phone/GsmUmtsCallForwardOptions$1;
.super Landroid/os/Handler;
.source "GsmUmtsCallForwardOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/GsmUmtsCallForwardOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GsmUmtsCallForwardOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/GsmUmtsCallForwardOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallForwardOptions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallForwardOptions;

    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallForwardOptions;

    # getter for: Lcom/android/phone/GsmUmtsCallForwardOptions;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;
    invoke-static {v1}, Lcom/android/phone/GsmUmtsCallForwardOptions;->access$000(Lcom/android/phone/GsmUmtsCallForwardOptions;)Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->isRegisteredOverWifi()Z

    move-result v1

    # invokes: Lcom/android/phone/GsmUmtsCallForwardOptions;->updatePreferenceScreen(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/GsmUmtsCallForwardOptions;->access$100(Lcom/android/phone/GsmUmtsCallForwardOptions;Z)V

    :cond_0
    return-void
.end method
