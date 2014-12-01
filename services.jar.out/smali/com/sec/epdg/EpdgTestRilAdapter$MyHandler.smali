.class Lcom/sec/epdg/EpdgTestRilAdapter$MyHandler;
.super Landroid/os/Handler;
.source "EpdgTestRilAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgTestRilAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgTestRilAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/EpdgTestRilAdapter;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/epdg/EpdgTestRilAdapter$MyHandler;->this$0:Lcom/sec/epdg/EpdgTestRilAdapter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "[TESTRILADAPTER]"

    const-string v1, "Got reply for Config"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "[TESTRILADAPTER]"

    const-string v1, "Got reply for Init"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
