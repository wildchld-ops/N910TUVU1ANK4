.class Lcom/android/phone/NetworkQueryService2$1;
.super Landroid/os/Handler;
.source "NetworkQueryService2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkQueryService2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkQueryService2;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkQueryService2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkQueryService2$1;->this$0:Lcom/android/phone/NetworkQueryService2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService2$1;->this$0:Lcom/android/phone/NetworkQueryService2;

    const-string v1, "scan completed, broadcasting results"

    const/4 v2, 0x1

    # invokes: Lcom/android/phone/NetworkQueryService2;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/NetworkQueryService2;->access$100(Lcom/android/phone/NetworkQueryService2;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/phone/NetworkQueryService2$1;->this$0:Lcom/android/phone/NetworkQueryService2;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    # invokes: Lcom/android/phone/NetworkQueryService2;->broadcastQueryResults(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/phone/NetworkQueryService2;->access$200(Lcom/android/phone/NetworkQueryService2;Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
