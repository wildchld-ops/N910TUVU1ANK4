.class Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$2;
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

    iput-object p1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$2;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$2;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v1, v1, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$2;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v1, v1, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$2;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v1, v1, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "XT9_DLM_ENABLE"

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$2;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v1, v1, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->releaseAllKeyPressed()V

    move-object v1, p1

    check-cast v1, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getIndex()I

    move-result v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$2;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v2, v1, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$2;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v1, v1, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Lcom/diotek/ime/framework/common/InputManager;->showXt9_9RemoveTermDialog(Ljava/lang/String;I)V

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$2;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    # setter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIgnorePick:Z
    invoke-static {v1, v3}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->access$002(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;Z)Z

    :cond_0
    const/4 v1, 0x0

    return v1
.end method
