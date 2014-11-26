.class Lcom/android/incallui/cover/CoverCall$1;
.super Landroid/os/Handler;
.source "CoverCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/cover/CoverCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/cover/CoverCall;


# direct methods
.method constructor <init>(Lcom/android/incallui/cover/CoverCall;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/cover/CoverCall$1;->this$0:Lcom/android/incallui/cover/CoverCall;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;

    const/16 v1, 0x6e

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    const-string v0, "CoverCall"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandler: unexpected message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall$1;->this$0:Lcom/android/incallui/cover/CoverCall;

    invoke-virtual {v0}, Lcom/android/incallui/cover/CoverCall;->startCallEndTimeBlink()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall$1;->this$0:Lcom/android/incallui/cover/CoverCall;

    iget-object v0, v0, Lcom/android/incallui/cover/CoverCall;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall$1;->this$0:Lcom/android/incallui/cover/CoverCall;

    iget-object v0, v0, Lcom/android/incallui/cover/CoverCall;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall$1;->this$0:Lcom/android/incallui/cover/CoverCall;

    # invokes: Lcom/android/incallui/cover/CoverCall;->dismissPopupWindow()V
    invoke-static {v0}, Lcom/android/incallui/cover/CoverCall;->access$000(Lcom/android/incallui/cover/CoverCall;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x6e -> :sswitch_1
    .end sparse-switch
.end method
