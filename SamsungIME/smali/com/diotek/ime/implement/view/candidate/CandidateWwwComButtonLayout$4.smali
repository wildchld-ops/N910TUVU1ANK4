.class Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$4;
.super Ljava/lang/Object;
.source "CandidateWwwComButtonLayout.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


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

    iput-object p1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$4;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v3, p0, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$4;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;

    # getter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;->access$700(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isPopupWindowShown()Z

    move-result v3

    if-eqz v3, :cond_1

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$4;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;

    # getter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;->access$800(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3, v7}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    int-to-float v3, v2

    int-to-float v4, v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v3, v4

    int-to-float v4, v2

    invoke-virtual {p2, v3, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$4;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;

    # getter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;->access$900(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3, v7}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    :goto_1
    return v7

    :pswitch_1
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_1
    packed-switch v0, :pswitch_data_1

    :pswitch_4
    goto :goto_1

    :pswitch_5
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->setAction(I)V

    const/16 v3, 0x80

    invoke-virtual {p1, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    :cond_2
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
