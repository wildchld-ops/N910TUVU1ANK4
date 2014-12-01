.class Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$1;
.super Ljava/lang/Object;
.source "AbstractCandidateLayout.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->setCandidates(Ljava/util/ArrayList;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$1;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$1;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$1;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->releaseAllKeyPressed()V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$1;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v1, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getIndex()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/diotek/ime/framework/common/InputManager;->showSwiftkeyRemoveTermDialog(Ljava/lang/String;I)V

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$1;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    # setter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIgnorePick:Z
    invoke-static {v0, v3}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->access$002(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;Z)Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
