.class Lcom/android/phone/NetworkSetting$6;
.super Lcom/android/phone/INetworkQueryServiceCallback2$Stub;
.source "NetworkSetting.java"


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

    iput-object p1, p0, Lcom/android/phone/NetworkSetting$6;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Lcom/android/phone/INetworkQueryServiceCallback2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(Ljava/util/List;I)V
    .locals 4
    .param p2    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;I)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/phone/NetworkSetting$6;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v2, "notifying message loop of query completion."

    # invokes: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NetworkSetting;->access$2800(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/NetworkSetting$6;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$400(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
