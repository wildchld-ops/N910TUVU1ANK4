.class Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView$1;
.super Ljava/lang/Object;
.source "AirButtonHoverAnimationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;


# direct methods
.method constructor <init>(Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView$1;->this$0:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView$1;->this$0:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    # getter for: Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mCurrentPoint:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->access$000(Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;)Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView$1;->this$0:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    # getter for: Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mOldPoint:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->access$100(Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;)Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView$1;->this$0:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    # getter for: Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mOldPoint:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->access$100(Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView$1;->this$0:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    # getter for: Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mCurrentPoint:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->access$000(Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView$1;->this$0:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    # getter for: Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mCurrentPoint:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->access$000(Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView$1;->this$0:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    # getter for: Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mCurrentPoint:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->access$000(Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ne v0, v1, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView$1;->this$0:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView$1;->this$0:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    # getter for: Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mCurrentPoint:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->access$000(Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;)Landroid/graphics/Point;

    move-result-object v1

    # setter for: Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mOldPoint:Landroid/graphics/Point;
    invoke-static {v0, v1}, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->access$102(Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView$1;->this$0:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mCurrentPoint:Landroid/graphics/Point;
    invoke-static {v0, v1}, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->access$002(Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;Landroid/graphics/Point;)Landroid/graphics/Point;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView$1;->this$0:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    # getter for: Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->access$400(Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView$1;->this$0:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    # getter for: Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mAnimator:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->access$300(Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView$1;->this$0:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    # getter for: Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mAnimationView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->access$200(Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView$1;->this$0:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    # getter for: Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mCurrentPoint:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->access$000(Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView$1;->this$0:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    # getter for: Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mAnimationView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->access$200(Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView$1;->this$0:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    # getter for: Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->mCurrentPoint:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->access$000(Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    goto :goto_0
.end method
