.class Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$3;
.super Landroid/os/Handler;
.source "DHWRWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$3;->this$0:Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$3;->this$0:Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    # getter for: Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v1}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->access$800(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
