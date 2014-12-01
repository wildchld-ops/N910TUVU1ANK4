.class Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$1;
.super Ljava/lang/Object;
.source "PatternEffect.java"

# interfaces
.implements Lcom/sec/android/visualeffect/expressme/common/TiltManager$TiltChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->setTiltManager()V
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

    iput-object p1, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$1;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTiltChanged(F)V
    .locals 5

    const/high16 v4, -0x3ce00000

    const/high16 v3, 0x43200000

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$1;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    neg-float v1, p1

    # setter for: Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->animationValue:F
    invoke-static {v0, v1}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->access$002(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;F)F

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$1;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    iget-object v1, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$1;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    # getter for: Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->animationValue:F
    invoke-static {v1}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->access$000(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)F

    move-result v1

    mul-float/2addr v1, v3

    const/high16 v2, 0x40200000

    mul-float/2addr v1, v2

    # setter for: Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->leadPoint:F
    invoke-static {v0, v1}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->access$102(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;F)F

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$1;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    # getter for: Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->leadPoint:F
    invoke-static {v0}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->access$100(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$1;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    # setter for: Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->leadPoint:F
    invoke-static {v0, v3}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->access$102(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;F)F

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$1;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    # getter for: Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->stopTiltValue:F
    invoke-static {v0}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->access$200(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$1;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    # getter for: Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->animationValue:F
    invoke-static {v1}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->access$000(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f847ae147ae147bL

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$1;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    # invokes: Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->startAnimator()V
    invoke-static {v0}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->access$300(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$1;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    # getter for: Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->isTwinkle:Z
    invoke-static {v0}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->access$400(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$1;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    const-wide/16 v1, 0x2710

    # invokes: Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->checkTwinkle(J)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->access$500(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;J)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$1;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    # getter for: Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->leadPoint:F
    invoke-static {v0}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->access$100(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$1;->this$0:Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;

    # setter for: Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->leadPoint:F
    invoke-static {v0, v4}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->access$102(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;F)F

    goto :goto_0
.end method
