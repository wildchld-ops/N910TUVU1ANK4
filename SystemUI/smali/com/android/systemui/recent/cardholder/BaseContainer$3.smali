.class Lcom/android/systemui/recent/cardholder/BaseContainer$3;
.super Ljava/lang/Object;
.source "BaseContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/cardholder/BaseContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastY:I

.field final synthetic this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/cardholder/BaseContainer;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$3;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$3;->lastY:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$3;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget-object v1, v1, Lcom/android/systemui/recent/cardholder/BaseContainer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$3;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget-object v1, v1, Lcom/android/systemui/recent/cardholder/BaseContainer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    iput v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$3;->lastY:I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$3;->lastY:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$3;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget-object v1, v1, Lcom/android/systemui/recent/cardholder/BaseContainer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$3;->lastY:I

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$3;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget-object v1, v1, Lcom/android/systemui/recent/cardholder/BaseContainer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$3;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget v2, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$3;->lastY:I

    sub-int v2, v0, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recent/cardholder/BaseContainer;->doScroll(F)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$3;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget-object v1, v1, Lcom/android/systemui/recent/cardholder/BaseContainer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    iput v3, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$3;->lastY:I

    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$3;->lastY:I

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$3;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$3;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$3;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    iget-object v2, v2, Lcom/android/systemui/recent/cardholder/BaseContainer;->mover:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
