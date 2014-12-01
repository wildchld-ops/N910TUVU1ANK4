.class Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$2;
.super Ljava/lang/Object;
.source "PatternEffect.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->setAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;


# direct methods
.method constructor <init>(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$2;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10

    const/4 v9, 0x0

    const-wide v7, 0x3fb999999999999aL

    iget-object v3, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$2;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    # getter for: Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->leadPoint:F
    invoke-static {v3}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->access$100(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$2;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    # getter for: Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->followPointForBg:F
    invoke-static {v4}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->access$600(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)F

    move-result v4

    sub-float/2addr v3, v4

    const v4, 0x3e99999a

    mul-float v0, v3, v4

    iget-object v3, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$2;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    # getter for: Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->leadPoint:F
    invoke-static {v3}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->access$100(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$2;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    # getter for: Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->followPointForMask:F
    invoke-static {v4}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->access$700(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)F

    move-result v4

    sub-float/2addr v3, v4

    const v4, 0x3e19999a

    mul-float v1, v3, v4

    const/high16 v2, 0x43c80000

    iget-object v3, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$2;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    iget-object v4, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$2;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    # getter for: Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->animationValue:F
    invoke-static {v4}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->access$000(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$2;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    # getter for: Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->BRIGHTNESS_VALUE:I
    invoke-static {v5}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->access$900(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    # setter for: Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->brightnessValue:F
    invoke-static {v3, v4}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->access$802(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;F)F

    iget-object v3, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$2;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    const/high16 v4, 0x3f800000

    iget-object v5, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$2;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    # getter for: Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->followPointForBg:F
    invoke-static {v5}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->access$600(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)F

    move-result v5

    div-float/2addr v5, v2

    iget-object v6, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$2;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    # getter for: Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->SCALE_BACKGROUND_VALUE:F
    invoke-static {v6}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->access$1100(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)F

    move-result v6

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float/2addr v4, v5

    # setter for: Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->scaleValue:F
    invoke-static {v3, v4}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->access$1002(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;F)F

    iget-object v3, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$2;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    iget-object v4, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$2;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    # getter for: Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->cm:Landroid/graphics/ColorMatrix;
    invoke-static {v4}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->access$1200(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)Landroid/graphics/ColorMatrix;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$2;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    # getter for: Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->brightnessValue:F
    invoke-static {v5}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->access$800(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)F

    move-result v5

    # invokes: Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->setBrightness(Landroid/graphics/ColorMatrix;F)V
    invoke-static {v3, v4, v5}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->access$1300(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;Landroid/graphics/ColorMatrix;F)V

    iget-object v3, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$2;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    # getter for: Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->paintBrightness:Landroid/graphics/Paint;
    invoke-static {v3}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->access$1400(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)Landroid/graphics/Paint;

    move-result-object v3

    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v5, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$2;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    # getter for: Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->cm:Landroid/graphics/ColorMatrix;
    invoke-static {v5}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->access$1200(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)Landroid/graphics/ColorMatrix;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    cmpg-double v3, v3, v7

    if-gez v3, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    cmpg-double v3, v3, v7

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$2;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    # invokes: Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->stopAnimator()V
    invoke-static {v3}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->access$1500(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)V

    :goto_0
    iget-object v3, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$2;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    iget-object v4, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$2;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    # getter for: Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->patternWidth:I
    invoke-static {v4}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->access$1600(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$2;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    # getter for: Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->patternHeight:I
    invoke-static {v5}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->access$1700(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)I

    move-result v5

    invoke-virtual {v3, v9, v9, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$2;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    # += operator for: Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->followPointForBg:F
    invoke-static {v3, v0}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->access$616(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;F)F

    iget-object v3, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$2;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    # += operator for: Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->followPointForMask:F
    invoke-static {v3, v1}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->access$716(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;F)F

    goto :goto_0
.end method
