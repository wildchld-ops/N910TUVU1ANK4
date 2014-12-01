.class Lcom/diotek/ime/framework/common/InputManagerImpl$6;
.super Landroid/os/Handler;
.source "InputManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/common/InputManagerImpl;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/common/InputManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$6;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$6;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # invokes: Lcom/diotek/ime/framework/common/InputManagerImpl;->updateAfterScreenUnlock()V
    invoke-static {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3100(Lcom/diotek/ime/framework/common/InputManagerImpl;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$6;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # invokes: Lcom/diotek/ime/framework/common/InputManagerImpl;->updateAfterScreenlock()V
    invoke-static {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$3200(Lcom/diotek/ime/framework/common/InputManagerImpl;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
