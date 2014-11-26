.class Lcom/android/phone/DTMFTonePlayer$1;
.super Landroid/os/Handler;
.source "DTMFTonePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DTMFTonePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DTMFTonePlayer;


# direct methods
.method constructor <init>(Lcom/android/phone/DTMFTonePlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/DTMFTonePlayer$1;->this$0:Lcom/android/phone/DTMFTonePlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "dtmf confirmation received from FW."

    # invokes: Lcom/android/phone/DTMFTonePlayer;->logD(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/DTMFTonePlayer;->access$000(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/DTMFTonePlayer$1;->this$0:Lcom/android/phone/DTMFTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTonePlayer;->handleBurstDtmfConfirmation()V

    goto :goto_0

    :pswitch_1
    const-string v0, "dtmf stop received"

    # invokes: Lcom/android/phone/DTMFTonePlayer;->logD(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/DTMFTonePlayer;->access$000(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/DTMFTonePlayer$1;->this$0:Lcom/android/phone/DTMFTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTonePlayer;->stopDtmfTone()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
