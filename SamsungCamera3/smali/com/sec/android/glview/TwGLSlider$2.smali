.class Lcom/sec/android/glview/TwGLSlider$2;
.super Ljava/lang/Object;
.source "TwGLSlider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/glview/TwGLSlider;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/glview/TwGLSlider;

.field final synthetic val$nearestId:I


# direct methods
.method constructor <init>(Lcom/sec/android/glview/TwGLSlider;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/glview/TwGLSlider$2;->this$0:Lcom/sec/android/glview/TwGLSlider;

    iput p2, p0, Lcom/sec/android/glview/TwGLSlider$2;->val$nearestId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const v5, 0x3dcccccd

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider$2;->this$0:Lcom/sec/android/glview/TwGLSlider;

    # getter for: Lcom/sec/android/glview/TwGLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;
    invoke-static {v0}, Lcom/sec/android/glview/TwGLSlider;->access$000(Lcom/sec/android/glview/TwGLSlider;)Landroid/graphics/PointF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider$2;->this$0:Lcom/sec/android/glview/TwGLSlider;

    # getter for: Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;
    invoke-static {v0}, Lcom/sec/android/glview/TwGLSlider;->access$100(Lcom/sec/android/glview/TwGLSlider;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLSlider$2;->this$0:Lcom/sec/android/glview/TwGLSlider;

    iget v3, p0, Lcom/sec/android/glview/TwGLSlider$2;->val$nearestId:I

    # invokes: Lcom/sec/android/glview/TwGLSlider;->translateStepByOrdering(I)I
    invoke-static {v2, v3}, Lcom/sec/android/glview/TwGLSlider;->access$500(Lcom/sec/android/glview/TwGLSlider;I)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider$2;->this$0:Lcom/sec/android/glview/TwGLSlider;

    # getter for: Lcom/sec/android/glview/TwGLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;
    invoke-static {v0}, Lcom/sec/android/glview/TwGLSlider;->access$000(Lcom/sec/android/glview/TwGLSlider;)Landroid/graphics/PointF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider$2;->this$0:Lcom/sec/android/glview/TwGLSlider;

    # getter for: Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;
    invoke-static {v0}, Lcom/sec/android/glview/TwGLSlider;->access$100(Lcom/sec/android/glview/TwGLSlider;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/glview/TwGLSlider$2;->val$nearestId:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider$2;->this$0:Lcom/sec/android/glview/TwGLSlider;

    # getter for: Lcom/sec/android/glview/TwGLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;
    invoke-static {v0}, Lcom/sec/android/glview/TwGLSlider;->access$000(Lcom/sec/android/glview/TwGLSlider;)Landroid/graphics/PointF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v5

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider$2;->this$0:Lcom/sec/android/glview/TwGLSlider;

    # getter for: Lcom/sec/android/glview/TwGLSlider;->mGaugeMarker:Lcom/sec/android/glview/TwGLButton;
    invoke-static {v0}, Lcom/sec/android/glview/TwGLSlider;->access$200(Lcom/sec/android/glview/TwGLSlider;)Lcom/sec/android/glview/TwGLButton;

    move-result-object v0

    const v1, -0x42333333

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider$2;->this$0:Lcom/sec/android/glview/TwGLSlider;

    # getter for: Lcom/sec/android/glview/TwGLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;
    invoke-static {v0}, Lcom/sec/android/glview/TwGLSlider;->access$000(Lcom/sec/android/glview/TwGLSlider;)Landroid/graphics/PointF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider$2;->this$0:Lcom/sec/android/glview/TwGLSlider;

    # getter for: Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;
    invoke-static {v0}, Lcom/sec/android/glview/TwGLSlider;->access$100(Lcom/sec/android/glview/TwGLSlider;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/glview/TwGLSlider$2;->val$nearestId:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider$2;->this$0:Lcom/sec/android/glview/TwGLSlider;

    # getter for: Lcom/sec/android/glview/TwGLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;
    invoke-static {v0}, Lcom/sec/android/glview/TwGLSlider;->access$000(Lcom/sec/android/glview/TwGLSlider;)Landroid/graphics/PointF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v5

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider$2;->this$0:Lcom/sec/android/glview/TwGLSlider;

    # getter for: Lcom/sec/android/glview/TwGLSlider;->mGaugeMarker:Lcom/sec/android/glview/TwGLButton;
    invoke-static {v0}, Lcom/sec/android/glview/TwGLSlider;->access$200(Lcom/sec/android/glview/TwGLSlider;)Lcom/sec/android/glview/TwGLButton;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider$2;->this$0:Lcom/sec/android/glview/TwGLSlider;

    # getter for: Lcom/sec/android/glview/TwGLSlider;->mGaugeMarker:Lcom/sec/android/glview/TwGLButton;
    invoke-static {v0}, Lcom/sec/android/glview/TwGLSlider;->access$200(Lcom/sec/android/glview/TwGLSlider;)Lcom/sec/android/glview/TwGLButton;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider$2;->this$0:Lcom/sec/android/glview/TwGLSlider;

    # getter for: Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;
    invoke-static {v0}, Lcom/sec/android/glview/TwGLSlider;->access$100(Lcom/sec/android/glview/TwGLSlider;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLSlider$2;->this$0:Lcom/sec/android/glview/TwGLSlider;

    # getter for: Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I
    invoke-static {v2}, Lcom/sec/android/glview/TwGLSlider;->access$400(Lcom/sec/android/glview/TwGLSlider;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLSlider$2;->this$0:Lcom/sec/android/glview/TwGLSlider;

    # getter for: Lcom/sec/android/glview/TwGLSlider;->mGaugeMarker:Lcom/sec/android/glview/TwGLButton;
    invoke-static {v2}, Lcom/sec/android/glview/TwGLSlider;->access$200(Lcom/sec/android/glview/TwGLSlider;)Lcom/sec/android/glview/TwGLButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {v1, v4, v0}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider$2;->this$0:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLSlider;->setGaugeBarSize()V

    return-void
.end method
