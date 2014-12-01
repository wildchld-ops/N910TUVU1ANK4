.class Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup$1;
.super Landroid/os/Handler;
.source "HwUmlautPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup$1;->this$0:Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

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
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME"

    const-string v1, "umlautPopup: MSG_NO_USER_INPUT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup$1;->this$0:Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;

    # invokes: Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;->sendSelectedCode()V
    invoke-static {v0}, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;->access$000(Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
