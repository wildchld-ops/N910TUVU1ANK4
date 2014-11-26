.class final Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;
.super Landroid/os/Handler;
.source "LedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/LedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LedCoverControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/LedCoverController;


# direct methods
.method public constructor <init>(Lcom/android/server/cover/LedCoverController;Landroid/os/Looper;)V
    .locals 2
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->this$0:Lcom/android/server/cover/LedCoverController;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_2

    iget-object v0, p0, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->this$0:Lcom/android/server/cover/LedCoverController;

    # setter for: Lcom/android/server/cover/LedCoverController;->mIsLedOn:Z
    invoke-static {v0, v1}, Lcom/android/server/cover/LedCoverController;->access$002(Lcom/android/server/cover/LedCoverController;Z)Z

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->this$0:Lcom/android/server/cover/LedCoverController;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    # invokes: Lcom/android/server/cover/LedCoverController;->handleSendDataToLedCover(I[B)V
    invoke-static {v1, v2, v0}, Lcom/android/server/cover/LedCoverController;->access$100(Lcom/android/server/cover/LedCoverController;I[B)V

    goto :goto_0

    :cond_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->this$0:Lcom/android/server/cover/LedCoverController;

    # setter for: Lcom/android/server/cover/LedCoverController;->mIsLedOn:Z
    invoke-static {v1, v0}, Lcom/android/server/cover/LedCoverController;->access$002(Lcom/android/server/cover/LedCoverController;Z)Z

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->this$0:Lcom/android/server/cover/LedCoverController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_3

    :goto_2
    # invokes: Lcom/android/server/cover/LedCoverController;->handleUpdateLedCoverAttachState(Z)V
    invoke-static {v2, v0}, Lcom/android/server/cover/LedCoverController;->access$200(Lcom/android/server/cover/LedCoverController;Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->this$0:Lcom/android/server/cover/LedCoverController;

    # setter for: Lcom/android/server/cover/LedCoverController;->mIsLedOn:Z
    invoke-static {v0, v1}, Lcom/android/server/cover/LedCoverController;->access$002(Lcom/android/server/cover/LedCoverController;Z)Z

    iget-object v0, p0, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->this$0:Lcom/android/server/cover/LedCoverController;

    # getter for: Lcom/android/server/cover/LedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/cover/LedCoverController;->access$300(Lcom/android/server/cover/LedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->this$0:Lcom/android/server/cover/LedCoverController;

    # getter for: Lcom/android/server/cover/LedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/cover/LedCoverController;->access$300(Lcom/android/server/cover/LedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
