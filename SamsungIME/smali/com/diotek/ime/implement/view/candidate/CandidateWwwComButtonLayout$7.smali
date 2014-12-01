.class Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$7;
.super Ljava/lang/Object;
.source "CandidateWwwComButtonLayout.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    iput-object p1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$7;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$7;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;

    # invokes: Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;->showPopupWindow(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;->access$1500(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;Landroid/view/View;)V

    const/4 v0, 0x1

    return v0
.end method
