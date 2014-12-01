.class Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$3;
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

    iput-object p1, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$3;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$3;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    const v2, -0x3b6f6000

    iget-object v3, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$3;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    # getter for: Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->patternHeight:I
    invoke-static {v3}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->access$1700(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)I

    move-result v3

    add-int/lit16 v3, v3, 0x485

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    # setter for: Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->twinklePos:F
    invoke-static {v1, v2}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->access$1802(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;F)F

    iget-object v1, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$3;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    iget-object v2, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$3;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    # getter for: Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->patternWidth:I
    invoke-static {v2}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->access$1600(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$3;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    # getter for: Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->patternHeight:I
    invoke-static {v3}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->access$1700(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    return-void
.end method
