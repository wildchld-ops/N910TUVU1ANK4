.class Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout$4;
.super Ljava/lang/Object;
.source "CandidatePrevNextButtonLayout.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout;->setButtonListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout$4;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v2

    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->setAction(I)V

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
