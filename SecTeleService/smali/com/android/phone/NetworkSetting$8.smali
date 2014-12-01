.class Lcom/android/phone/NetworkSetting$8;
.super Ljava/lang/Object;
.source "NetworkSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkSetting$8;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$8;->this$0:Lcom/android/phone/NetworkSetting;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/phone/NetworkSetting;->showDialog(I)V

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$8;->this$0:Lcom/android/phone/NetworkSetting;

    const/4 v1, 0x0

    # invokes: Lcom/android/phone/NetworkSetting;->setMobileDataEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/NetworkSetting;->access$3600(Lcom/android/phone/NetworkSetting;Z)V

    const-string v0, "network_selection_delay"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$8;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/NetworkSetting;->access$400(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkSetting$8;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$400(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xbb9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$8;->this$0:Lcom/android/phone/NetworkSetting;

    const/16 v1, -0x2711

    # setter for: Lcom/android/phone/NetworkSetting;->ActionType:I
    invoke-static {v0, v1}, Lcom/android/phone/NetworkSetting;->access$2902(Lcom/android/phone/NetworkSetting;I)I

    return-void
.end method
