.class Lcom/diotek/ime/framework/input/HwrInputModule$1;
.super Landroid/os/Handler;
.source "HwrInputModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/input/HwrInputModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/input/HwrInputModule;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/input/HwrInputModule;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/input/HwrInputModule$1;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/HwrInputModule$1;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    # invokes: Lcom/diotek/ime/framework/input/HwrInputModule;->runRecognizeThread()V
    invoke-static {v0}, Lcom/diotek/ime/framework/input/HwrInputModule;->access$000(Lcom/diotek/ime/framework/input/HwrInputModule;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/diotek/ime/framework/input/HwrInputModule$1;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    # invokes: Lcom/diotek/ime/framework/input/HwrInputModule;->handleRecognizeSuccess()V
    invoke-static {v0}, Lcom/diotek/ime/framework/input/HwrInputModule;->access$100(Lcom/diotek/ime/framework/input/HwrInputModule;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/diotek/ime/framework/input/HwrInputModule$1;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/HwrInputModule;->handleRecognizeFail()V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/diotek/ime/framework/input/HwrInputModule$1;->this$0:Lcom/diotek/ime/framework/input/HwrInputModule;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/HwrInputModule;->handleRecognizeGesture()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xc -> :sswitch_1
        0xd -> :sswitch_2
        0x14 -> :sswitch_3
    .end sparse-switch
.end method
