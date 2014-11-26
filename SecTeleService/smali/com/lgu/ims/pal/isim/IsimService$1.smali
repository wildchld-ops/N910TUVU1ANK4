.class Lcom/lgu/ims/pal/isim/IsimService$1;
.super Landroid/os/Handler;
.source "IsimService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgu/ims/pal/isim/IsimService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lgu/ims/pal/isim/IsimService;


# direct methods
.method constructor <init>(Lcom/lgu/ims/pal/isim/IsimService;)V
    .locals 0

    iput-object p1, p0, Lcom/lgu/ims/pal/isim/IsimService$1;->this$0:Lcom/lgu/ims/pal/isim/IsimService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;

    iget-object v1, p0, Lcom/lgu/ims/pal/isim/IsimService$1;->this$0:Lcom/lgu/ims/pal/isim/IsimService;

    iget-object v1, v1, Lcom/lgu/ims/pal/isim/IsimService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lgu/ims/pal/isim/IsimService$1;->this$0:Lcom/lgu/ims/pal/isim/IsimService;

    invoke-virtual {v1, v0}, Lcom/lgu/ims/pal/isim/IsimService;->handleIsimResponse([B)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/lgu/ims/pal/isim/IsimService$1;->this$0:Lcom/lgu/ims/pal/isim/IsimService;

    iget-object v1, v1, Lcom/lgu/ims/pal/isim/IsimService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error Scenario !!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
