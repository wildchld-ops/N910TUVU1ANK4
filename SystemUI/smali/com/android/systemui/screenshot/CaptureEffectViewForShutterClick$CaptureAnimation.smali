.class Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$CaptureAnimation;
.super Landroid/view/animation/AlphaAnimation;
.source "CaptureEffectViewForShutterClick.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;FF)V
    .locals 3

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$CaptureAnimation;->this$0:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;

    invoke-direct {p0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/animation/AlphaAnimation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$CaptureAnimation;->this$0:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    iput v1, v0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->alpha:F

    return-void
.end method
