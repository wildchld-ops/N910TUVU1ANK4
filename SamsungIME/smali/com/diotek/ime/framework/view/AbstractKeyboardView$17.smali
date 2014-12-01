.class Lcom/diotek/ime/framework/view/AbstractKeyboardView$17;
.super Ljava/lang/Object;
.source "AbstractKeyboardView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/AbstractKeyboardView;->createAlertDialogForCarModeKeyboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$17;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$17;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$17;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setIsCurrentCarModeKnobSip(Z)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$17;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, v2}, Lcom/diotek/ime/framework/common/InputManager;->setIsCurrentCarModeTouchSip(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$17;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$17;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v1, v1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setInputView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$17;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$17;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v1, v1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$17;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->updateKeyboardView()V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$17;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateAll()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$17;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeTouchSIP()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$17;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setIsCurrentCarModeTouchSip(Z)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$17;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, v2}, Lcom/diotek/ime/framework/common/InputManager;->setIsCurrentCarModeKnobSip(Z)V

    goto :goto_0
.end method
