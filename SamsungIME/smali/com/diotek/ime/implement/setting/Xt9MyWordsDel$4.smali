.class Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$4;
.super Ljava/lang/Object;
.source "Xt9MyWordsDel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->getSelectAllViewTouchListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$4;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$4;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectallview:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$600(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$4;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
