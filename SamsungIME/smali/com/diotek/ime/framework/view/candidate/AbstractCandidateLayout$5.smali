.class Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$5;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "AbstractCandidateLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->initGestureDetector()V
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

    iput-object p1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$5;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # Landroid/view/MotionEvent;
    .param p3    # F
    .param p4    # F

    const/4 v1, 0x1

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$5;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    # setter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->misLeftScrolled:Z
    invoke-static {v0, v1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->access$202(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;Z)Z

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$5;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    # setter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->misRightScrolled:Z
    invoke-static {v0, v1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->access$302(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;Z)Z

    goto :goto_0
.end method
