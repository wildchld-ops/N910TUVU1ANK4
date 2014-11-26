.class Lcom/android/phone/callsettings/CallPopUp$1;
.super Landroid/os/Handler;
.source "CallPopUp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/CallPopUp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/CallPopUp;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/CallPopUp;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/CallPopUp$1;->this$0:Lcom/android/phone/callsettings/CallPopUp;

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

    iget-object v1, p0, Lcom/android/phone/callsettings/CallPopUp$1;->this$0:Lcom/android/phone/callsettings/CallPopUp;

    iget-object v0, p0, Lcom/android/phone/callsettings/CallPopUp$1;->this$0:Lcom/android/phone/callsettings/CallPopUp;

    # getter for: Lcom/android/phone/callsettings/CallPopUp;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;
    invoke-static {v0}, Lcom/android/phone/callsettings/CallPopUp;->access$000(Lcom/android/phone/callsettings/CallPopUp;)Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->isRegisteredOverWifi()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/android/phone/callsettings/CallPopUp;->updateIncoimgPopupForWFC(Z)V
    invoke-static {v1, v0}, Lcom/android/phone/callsettings/CallPopUp;->access$100(Lcom/android/phone/callsettings/CallPopUp;Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
