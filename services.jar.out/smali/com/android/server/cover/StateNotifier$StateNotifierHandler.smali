.class final Lcom/android/server/cover/StateNotifier$StateNotifierHandler;
.super Landroid/os/Handler;
.source "StateNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/StateNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StateNotifierHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/StateNotifier;


# direct methods
.method public constructor <init>(Lcom/android/server/cover/StateNotifier;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/cover/StateNotifier$StateNotifierHandler;->this$0:Lcom/android/server/cover/StateNotifier;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier$StateNotifierHandler;->this$0:Lcom/android/server/cover/StateNotifier;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/cover/CoverState;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_0

    :goto_1
    # invokes: Lcom/android/server/cover/StateNotifier;->handleSendCoverSwitchState(Lcom/samsung/android/cover/CoverState;Z)V
    invoke-static {v3, v0, v1}, Lcom/android/server/cover/StateNotifier;->access$000(Lcom/android/server/cover/StateNotifier;Lcom/samsung/android/cover/CoverState;Z)V

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier$StateNotifierHandler;->this$0:Lcom/android/server/cover/StateNotifier;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_1

    :goto_2
    # invokes: Lcom/android/server/cover/StateNotifier;->handleSendCoverAttachState(Z)V
    invoke-static {v0, v1}, Lcom/android/server/cover/StateNotifier;->access$100(Lcom/android/server/cover/StateNotifier;Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_2

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/cover/StateNotifier$StateNotifierHandler;->this$0:Lcom/android/server/cover/StateNotifier;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/cover/CoverState;

    # invokes: Lcom/android/server/cover/StateNotifier;->handleUpdateSViewCoverService(Lcom/samsung/android/cover/CoverState;)V
    invoke-static {v1, v0}, Lcom/android/server/cover/StateNotifier;->access$200(Lcom/android/server/cover/StateNotifier;Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
