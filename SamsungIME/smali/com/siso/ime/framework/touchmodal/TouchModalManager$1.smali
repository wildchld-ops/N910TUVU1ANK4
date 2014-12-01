.class Lcom/siso/ime/framework/touchmodal/TouchModalManager$1;
.super Landroid/os/Handler;
.source "TouchModalManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/siso/ime/framework/touchmodal/TouchModalManager;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/siso/ime/framework/touchmodal/TouchModalManager;


# direct methods
.method constructor <init>(Lcom/siso/ime/framework/touchmodal/TouchModalManager;)V
    .locals 0

    iput-object p1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager$1;->this$0:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    const/4 v13, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v11

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager$1;->this$0:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    iget-object v0, v0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->data:Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    const-string v2, "WindowWidth"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "KeyboardLanguage"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "KeyboardMode"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "LayoutType"

    invoke-virtual {v11, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "KeyboardWidth"

    invoke-virtual {v11, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "KeyboardHeight"

    invoke-virtual {v11, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "orientation"

    invoke-virtual {v11, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "keyboardnkeys"

    invoke-virtual {v11, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual/range {v0 .. v9}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->initialize(Lcom/diotek/ime/framework/view/DefaultKeyboard;IIIIIIZI)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager$1;->this$0:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    const-string v1, "KeyboardMode"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/siso/ime/framework/touchmodal/TouchModalManager;->grid_mode:I
    invoke-static {v0, v1}, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->access$002(Lcom/siso/ime/framework/touchmodal/TouchModalManager;I)I

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager$1;->this$0:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    const-string v1, "LayoutType"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/siso/ime/framework/touchmodal/TouchModalManager;->grid_layoutType:I
    invoke-static {v0, v1}, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->access$102(Lcom/siso/ime/framework/touchmodal/TouchModalManager;I)I

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager$1;->this$0:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    const-string v1, "KeyboardLanguage"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/siso/ime/framework/touchmodal/TouchModalManager;->grid_lang:I
    invoke-static {v0, v1}, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->access$202(Lcom/siso/ime/framework/touchmodal/TouchModalManager;I)I

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager$1;->this$0:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    const-string v1, "keyboardnkeys"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/siso/ime/framework/touchmodal/TouchModalManager;->grid_nKeys:I
    invoke-static {v0, v1}, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->access$302(Lcom/siso/ime/framework/touchmodal/TouchModalManager;I)I

    :goto_1
    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager$1;->this$0:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    # setter for: Lcom/siso/ime/framework/touchmodal/TouchModalManager;->isGridInvalidated:Z
    invoke-static {v0, v13}, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->access$502(Lcom/siso/ime/framework/touchmodal/TouchModalManager;Z)Z

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager$1;->this$0:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    # getter for: Lcom/siso/ime/framework/touchmodal/TouchModalManager;->isGridReady:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->access$600(Lcom/siso/ime/framework/touchmodal/TouchModalManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager$1;->this$0:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    iget-object v0, v0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->data:Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

    iget-object v0, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->initGridCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    goto/16 :goto_0

    :cond_0
    # getter for: Lcom/siso/ime/framework/touchmodal/TouchModalManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "!@INIT_GRID, grid is not initialized, became null "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager$1;->this$0:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    # getter for: Lcom/siso/ime/framework/touchmodal/TouchModalManager;->isGridInvalidated:Z
    invoke-static {v0}, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->access$500(Lcom/siso/ime/framework/touchmodal/TouchModalManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v11

    const-string v0, "KeyboardWidth"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    const-string v0, "KeyboardHeight"

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-lez v12, :cond_1

    if-lez v10, :cond_1

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager$1;->this$0:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    iget-object v0, v0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->data:Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

    iget-object v0, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager$1;->this$0:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    iget-object v0, v0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->data:Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

    iget-object v0, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    array-length v0, v0

    if-ne v0, v12, :cond_1

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager$1;->this$0:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    iget-object v0, v0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->data:Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

    iget-object v0, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, v13

    array-length v0, v0

    if-ne v0, v10, :cond_1

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager$1;->this$0:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    # getter for: Lcom/siso/ime/framework/touchmodal/TouchModalManager;->grid_mode:I
    invoke-static {v0}, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->access$000(Lcom/siso/ime/framework/touchmodal/TouchModalManager;)I

    move-result v0

    const-string v1, "KeyboardMode"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager$1;->this$0:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    # getter for: Lcom/siso/ime/framework/touchmodal/TouchModalManager;->grid_layoutType:I
    invoke-static {v0}, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->access$100(Lcom/siso/ime/framework/touchmodal/TouchModalManager;)I

    move-result v0

    const-string v1, "LayoutType"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager$1;->this$0:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    # getter for: Lcom/siso/ime/framework/touchmodal/TouchModalManager;->grid_lang:I
    invoke-static {v0}, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->access$200(Lcom/siso/ime/framework/touchmodal/TouchModalManager;)I

    move-result v0

    const-string v1, "KeyboardLanguage"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager$1;->this$0:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    # getter for: Lcom/siso/ime/framework/touchmodal/TouchModalManager;->grid_nKeys:I
    invoke-static {v0}, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->access$300(Lcom/siso/ime/framework/touchmodal/TouchModalManager;)I

    move-result v0

    const-string v1, "keyboardnkeys"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager$1;->this$0:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    iget-object v0, v0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->data:Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

    const-string v1, "orientation"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "KeyboardLanguage"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "KeyboardMode"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "LayoutType"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "KeyboardWidth"

    invoke-virtual {v11, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "KeyboardHeight"

    invoke-virtual {v11, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "keyboardnkeys"

    invoke-virtual {v11, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iget-object v8, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager$1;->this$0:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    iget-object v8, v8, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->data:Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

    iget-object v8, v8, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    invoke-virtual/range {v0 .. v8}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->dump(ZIIIIII[[I)V

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager$1;->this$0:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    # setter for: Lcom/siso/ime/framework/touchmodal/TouchModalManager;->isGridInvalidated:Z
    invoke-static {v0, v13}, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->access$502(Lcom/siso/ime/framework/touchmodal/TouchModalManager;Z)Z

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager$1;->this$0:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    # getter for: Lcom/siso/ime/framework/touchmodal/TouchModalManager;->isGridReady:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->access$600(Lcom/siso/ime/framework/touchmodal/TouchModalManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    goto/16 :goto_0

    :cond_2
    # getter for: Lcom/siso/ime/framework/touchmodal/TouchModalManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@dump has not happened, isGridReady:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager$1;->this$0:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    # getter for: Lcom/siso/ime/framework/touchmodal/TouchModalManager;->isGridReady:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v2}, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->access$600(Lcom/siso/ime/framework/touchmodal/TouchModalManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_2
    # getter for: Lcom/siso/ime/framework/touchmodal/TouchModalManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@[updateGrid]isGridInvalidated.get() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager$1;->this$0:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    # getter for: Lcom/siso/ime/framework/touchmodal/TouchModalManager;->isGridInvalidated:Z
    invoke-static {v2}, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->access$500(Lcom/siso/ime/framework/touchmodal/TouchModalManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager$1;->this$0:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    const/4 v1, 0x1

    # setter for: Lcom/siso/ime/framework/touchmodal/TouchModalManager;->isGridInvalidated:Z
    invoke-static {v0, v1}, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->access$502(Lcom/siso/ime/framework/touchmodal/TouchModalManager;Z)Z

    iget-object v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager$1;->this$0:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->updateGrid(III)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager$1;->this$0:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    iget-object v0, v0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->data:Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->restore(II)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager$1;->this$0:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    iget-object v1, v0, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->data:Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

    const/4 v0, 0x0

    check-cast v0, [[I

    iput-object v0, v1, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager$1;->this$0:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    # setter for: Lcom/siso/ime/framework/touchmodal/TouchModalManager;->isGridInvalidated:Z
    invoke-static {v0, v13}, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->access$502(Lcom/siso/ime/framework/touchmodal/TouchModalManager;Z)Z

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalManager$1;->this$0:Lcom/siso/ime/framework/touchmodal/TouchModalManager;

    # getter for: Lcom/siso/ime/framework/touchmodal/TouchModalManager;->isGridReady:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/siso/ime/framework/touchmodal/TouchModalManager;->access$600(Lcom/siso/ime/framework/touchmodal/TouchModalManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
