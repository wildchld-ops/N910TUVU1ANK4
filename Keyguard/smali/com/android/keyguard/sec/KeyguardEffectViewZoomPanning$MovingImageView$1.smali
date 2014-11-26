.class Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$1;
.super Ljava/lang/Object;
.source "KeyguardEffectViewZoomPanning.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->sortFaceListClockwise()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/secvision/face/Face;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

.field final synthetic val$degreeFace:[F


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;[F)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$1;->this$1:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    iput-object p2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$1;->val$degreeFace:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/secvision/face/Face;Lcom/sec/android/secvision/face/Face;)I
    .locals 4
    .param p1    # Lcom/sec/android/secvision/face/Face;
    .param p2    # Lcom/sec/android/secvision/face/Face;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$1;->this$1:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDetectedFaceList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->access$600(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$1;->this$1:Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->mDetectedFaceList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;->access$600(Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$1;->val$degreeFace:[F

    aget v2, v2, v1

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$1;->val$degreeFace:[F

    aget v3, v3, v0

    sub-float/2addr v2, v3

    float-to-int v2, v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;

    check-cast p1, Lcom/sec/android/secvision/face/Face;

    check-cast p2, Lcom/sec/android/secvision/face/Face;

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning$MovingImageView$1;->compare(Lcom/sec/android/secvision/face/Face;Lcom/sec/android/secvision/face/Face;)I

    move-result v0

    return v0
.end method
