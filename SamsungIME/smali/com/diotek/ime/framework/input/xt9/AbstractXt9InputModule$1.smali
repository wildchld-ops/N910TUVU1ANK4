.class Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule$1;
.super Lcom/diotek/ime/framework/input/InputModule$Timer;
.source "AbstractXt9InputModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule$1;->this$0:Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;

    invoke-direct {p0}, Lcom/diotek/ime/framework/input/InputModule$Timer;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule$1;->this$0:Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;

    iget-object v1, v1, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule$1;->this$0:Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;

    iget v1, v1, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputLanguage:I

    const/high16 v2, 0x6b6f0000

    if-ne v1, v2, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule$1;->this$0:Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->finishComposing(Z)V

    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule$1;->this$0:Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->initComposingBuffer()V

    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule$1;->this$0:Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;

    iget-object v1, v1, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule$1;->this$0:Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;

    iget-object v1, v1, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule$1;->this$0:Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;

    iget-object v2, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule$1;->this$0:Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;

    iget-object v2, v2, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {v1, v2}, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    iget-object v1, p0, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule$1;->this$0:Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;

    const/4 v2, -0x1

    iput v2, v1, Lcom/diotek/ime/framework/input/xt9/AbstractXt9InputModule;->mLastKeyCode:I

    :cond_2
    return-void
.end method
