.class Lcom/android/phone/Enhanced4GLTE$4;
.super Ljava/lang/Object;
.source "Enhanced4GLTE.java"

# interfaces
.implements Lcom/samsung/commonimsinterface/imscommon/IIMSListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Enhanced4GLTE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Enhanced4GLTE;


# direct methods
.method constructor <init>(Lcom/android/phone/Enhanced4GLTE;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/Enhanced4GLTE$4;->this$0:Lcom/android/phone/Enhanced4GLTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onDataDisabled(I)V
    .locals 3
    .param p1    # I

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/Enhanced4GLTE$4;->this$0:Lcom/android/phone/Enhanced4GLTE;

    # getter for: Lcom/android/phone/Enhanced4GLTE;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/Enhanced4GLTE;->access$600(Lcom/android/phone/Enhanced4GLTE;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "Enhanced4GLTE"

    const-string v1, "registration failed..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/Enhanced4GLTE$4;->this$0:Lcom/android/phone/Enhanced4GLTE;

    # getter for: Lcom/android/phone/Enhanced4GLTE;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/Enhanced4GLTE;->access$600(Lcom/android/phone/Enhanced4GLTE;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/Enhanced4GLTE$4;->this$0:Lcom/android/phone/Enhanced4GLTE;

    # getter for: Lcom/android/phone/Enhanced4GLTE;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/Enhanced4GLTE;->access$600(Lcom/android/phone/Enhanced4GLTE;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private onRegistrationDone(Lcom/samsung/commonimsinterface/imscommon/IMSRegistrationInfo;)V
    .locals 3
    .param p1    # Lcom/samsung/commonimsinterface/imscommon/IMSRegistrationInfo;

    const-string v0, "Enhanced4GLTE"

    const-string v1, "registered on IMS..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/Enhanced4GLTE$4;->this$0:Lcom/android/phone/Enhanced4GLTE;

    # getter for: Lcom/android/phone/Enhanced4GLTE;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/Enhanced4GLTE;->access$600(Lcom/android/phone/Enhanced4GLTE;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/phone/Enhanced4GLTE$4;->this$0:Lcom/android/phone/Enhanced4GLTE;

    # getter for: Lcom/android/phone/Enhanced4GLTE;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/Enhanced4GLTE;->access$600(Lcom/android/phone/Enhanced4GLTE;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/Enhanced4GLTE$4;->this$0:Lcom/android/phone/Enhanced4GLTE;

    # getter for: Lcom/android/phone/Enhanced4GLTE;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/Enhanced4GLTE;->access$600(Lcom/android/phone/Enhanced4GLTE;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public onReceive(IILcom/samsung/commonimsinterface/imscommon/IMSParameter;)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # Lcom/samsung/commonimsinterface/imscommon/IMSParameter;

    sparse-switch p2, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const-string v0, "registrationinfo"

    invoke-virtual {p3, v0}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getParcelable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imscommon/IMSRegistrationInfo;

    invoke-direct {p0, v0}, Lcom/android/phone/Enhanced4GLTE$4;->onRegistrationDone(Lcom/samsung/commonimsinterface/imscommon/IMSRegistrationInfo;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "networktype"

    invoke-virtual {p3, v0}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/Enhanced4GLTE$4;->onDataDisabled(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3ec -> :sswitch_0
        0x3f5 -> :sswitch_1
    .end sparse-switch
.end method
