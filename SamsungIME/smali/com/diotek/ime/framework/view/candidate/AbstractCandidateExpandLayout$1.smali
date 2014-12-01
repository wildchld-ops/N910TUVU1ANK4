.class Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout$1;
.super Ljava/lang/Object;
.source "AbstractCandidateExpandLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->setCandidates(Ljava/util/ArrayList;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout$1;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout$1;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    # setter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIgnorePick:Z
    invoke-static {v1, v2}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->access$002(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;Z)Z

    :cond_0
    return v2
.end method
