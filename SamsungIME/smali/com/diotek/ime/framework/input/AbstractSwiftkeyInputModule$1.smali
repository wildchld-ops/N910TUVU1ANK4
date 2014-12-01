.class Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule$1;
.super Landroid/os/Handler;
.source "AbstractSwiftkeyInputModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->checkChineseSequence()V

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    :goto_1
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule$1;->this$0:Lcom/diotek/ime/framework/input/AbstractSwiftkeyInputModule;

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->updateSelectList()I

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x15 -> :sswitch_3
        0x26 -> :sswitch_4
        0x2b -> :sswitch_2
        0x2d -> :sswitch_1
    .end sparse-switch
.end method
