.class Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView$2;
.super Landroid/os/Handler;
.source "AbstractCandidateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView$2;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView$2;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    # invokes: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getFocussedCandidateView()Lcom/diotek/ime/framework/view/candidate/CandidateTextView;
    invoke-static {v1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->access$100(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;)Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-boolean v2, v0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    iput-boolean v2, v0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsInPressedState:Z

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView$2;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    # invokes: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->updateDrawableState(Lcom/diotek/ime/framework/view/candidate/CandidateTextView;)V
    invoke-static {v1, v0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->access$200(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;Lcom/diotek/ime/framework/view/candidate/CandidateTextView;)V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView$2;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    iget-object v1, v1, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->restoreKnobKeyFocus()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
