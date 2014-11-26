.class Lcom/android/phone/PhoneInterfaceManager$UiccOperation$1;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/PhoneInterfaceManager$UiccOperation;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneInterfaceManager$UiccOperation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation$1;->this$1:Lcom/android/phone/PhoneInterfaceManager$UiccOperation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1    # Landroid/os/Message;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UICC operation complete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation$1;->this$1:Lcom/android/phone/PhoneInterfaceManager$UiccOperation;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation$1;->this$1:Lcom/android/phone/PhoneInterfaceManager$UiccOperation;

    const/4 v3, 0x1

    # setter for: Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mDone:Z
    invoke-static {v1, v3}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->access$1302(Lcom/android/phone/PhoneInterfaceManager$UiccOperation;Z)Z

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation$1;->this$1:Lcom/android/phone/PhoneInterfaceManager$UiccOperation;

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    # setter for: Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mResult:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->access$1402(Lcom/android/phone/PhoneInterfaceManager$UiccOperation;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    const-string v1, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation$1;->this$1:Lcom/android/phone/PhoneInterfaceManager$UiccOperation;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
