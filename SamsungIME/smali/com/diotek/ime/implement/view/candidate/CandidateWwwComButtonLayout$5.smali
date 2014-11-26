.class Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$5;
.super Ljava/lang/Object;
.source "CandidateWwwComButtonLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;->setButtonListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$5;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    :pswitch_0
    iget-object v1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$5;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;

    # getter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static {v1}, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;->access$1000(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$5;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;

    # getter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v1}, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;->access$1100(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isMiniKeyboardOnScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$5;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;

    # getter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v1}, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;->access$1200(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
