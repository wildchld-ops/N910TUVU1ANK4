.class Lcom/android/phone/LGTUwaCallServiceMgr$1;
.super Landroid/os/Handler;
.source "LGTUwaCallServiceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LGTUwaCallServiceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LGTUwaCallServiceMgr;


# direct methods
.method constructor <init>(Lcom/android/phone/LGTUwaCallServiceMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/LGTUwaCallServiceMgr$1;->this$0:Lcom/android/phone/LGTUwaCallServiceMgr;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/LGTUwaCallServiceMgr$1;->this$0:Lcom/android/phone/LGTUwaCallServiceMgr;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    # invokes: Lcom/android/phone/LGTUwaCallServiceMgr;->onPhoneStateChanged(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/phone/LGTUwaCallServiceMgr;->access$000(Lcom/android/phone/LGTUwaCallServiceMgr;Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/LGTUwaCallServiceMgr$1;->this$0:Lcom/android/phone/LGTUwaCallServiceMgr;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    # invokes: Lcom/android/phone/LGTUwaCallServiceMgr;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/phone/LGTUwaCallServiceMgr;->access$100(Lcom/android/phone/LGTUwaCallServiceMgr;Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
