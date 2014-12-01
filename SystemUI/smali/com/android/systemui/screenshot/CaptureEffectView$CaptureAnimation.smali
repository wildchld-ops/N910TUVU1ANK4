.class Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;
.super Landroid/view/animation/Animation;
.source "CaptureEffectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/CaptureEffectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureAnimation"
.end annotation


# instance fields
.field final MODE_ALPHA:I

.field final MODE_TRANSLATE:I

.field mMode:I

.field final synthetic this$0:Lcom/android/systemui/screenshot/CaptureEffectView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/CaptureEffectView;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->this$0:Lcom/android/systemui/screenshot/CaptureEffectView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->MODE_TRANSLATE:I

    iput v2, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->MODE_ALPHA:I

    iput v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->mMode:I

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000

    const/16 v2, 0xff

    const-string v0, "CaptureEffectView"

    const-string v1, "applyTransformation start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->mMode:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    cmpl-float v0, p1, v3

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->mMode:I

    :cond_0
    invoke-virtual {p0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->this$0:Lcom/android/systemui/screenshot/CaptureEffectView;

    # invokes: Lcom/android/systemui/screenshot/CaptureEffectView;->clearCaptureBitmap()V
    invoke-static {v0}, Lcom/android/systemui/screenshot/CaptureEffectView;->access$300(Lcom/android/systemui/screenshot/CaptureEffectView;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->this$0:Lcom/android/systemui/screenshot/CaptureEffectView;

    # getter for: Lcom/android/systemui/screenshot/CaptureEffectView;->isFirst:Z
    invoke-static {v0}, Lcom/android/systemui/screenshot/CaptureEffectView;->access$400(Lcom/android/systemui/screenshot/CaptureEffectView;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "CaptureEffectView"

    const-string v1, "isFirst true"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->this$0:Lcom/android/systemui/screenshot/CaptureEffectView;

    # setter for: Lcom/android/systemui/screenshot/CaptureEffectView;->isFirst:Z
    invoke-static {v0, v4}, Lcom/android/systemui/screenshot/CaptureEffectView;->access$402(Lcom/android/systemui/screenshot/CaptureEffectView;Z)Z

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->this$0:Lcom/android/systemui/screenshot/CaptureEffectView;

    # getter for: Lcom/android/systemui/screenshot/CaptureEffectView;->mDirection:I
    invoke-static {v0}, Lcom/android/systemui/screenshot/CaptureEffectView;->access$000(Lcom/android/systemui/screenshot/CaptureEffectView;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->this$0:Lcom/android/systemui/screenshot/CaptureEffectView;

    # setter for: Lcom/android/systemui/screenshot/CaptureEffectView;->mTranslateOffset:F
    invoke-static {v0, p1}, Lcom/android/systemui/screenshot/CaptureEffectView;->access$102(Lcom/android/systemui/screenshot/CaptureEffectView;F)F

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->this$0:Lcom/android/systemui/screenshot/CaptureEffectView;

    sub-float v1, v3, p1

    # setter for: Lcom/android/systemui/screenshot/CaptureEffectView;->mTranslateOffset:F
    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/CaptureEffectView;->access$102(Lcom/android/systemui/screenshot/CaptureEffectView;F)F

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->this$0:Lcom/android/systemui/screenshot/CaptureEffectView;

    const/high16 v1, 0x434c0000

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    # setter for: Lcom/android/systemui/screenshot/CaptureEffectView;->mGradientColor2:I
    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/CaptureEffectView;->access$202(Lcom/android/systemui/screenshot/CaptureEffectView;I)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->this$0:Lcom/android/systemui/screenshot/CaptureEffectView;

    # getter for: Lcom/android/systemui/screenshot/CaptureEffectView;->mCaptureAnimationListener:Lcom/android/systemui/screenshot/CaptureEffectView$OnCaptureAnimationListener;
    invoke-static {v0}, Lcom/android/systemui/screenshot/CaptureEffectView;->access$500(Lcom/android/systemui/screenshot/CaptureEffectView;)Lcom/android/systemui/screenshot/CaptureEffectView$OnCaptureAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->this$0:Lcom/android/systemui/screenshot/CaptureEffectView;

    # setter for: Lcom/android/systemui/screenshot/CaptureEffectView;->isFirst:Z
    invoke-static {v0, v4}, Lcom/android/systemui/screenshot/CaptureEffectView;->access$402(Lcom/android/systemui/screenshot/CaptureEffectView;Z)Z

    const-string v0, "CaptureEffectView"

    const-string v1, "onFinish called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectView$CaptureAnimation;->this$0:Lcom/android/systemui/screenshot/CaptureEffectView;

    # getter for: Lcom/android/systemui/screenshot/CaptureEffectView;->mCaptureAnimationListener:Lcom/android/systemui/screenshot/CaptureEffectView$OnCaptureAnimationListener;
    invoke-static {v0}, Lcom/android/systemui/screenshot/CaptureEffectView;->access$500(Lcom/android/systemui/screenshot/CaptureEffectView;)Lcom/android/systemui/screenshot/CaptureEffectView$OnCaptureAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/screenshot/CaptureEffectView$OnCaptureAnimationListener;->onFinish()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
