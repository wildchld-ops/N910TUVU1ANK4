.class Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;
.super Ljava/lang/Object;
.source "PanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MotionEventCopy"
.end annotation


# instance fields
.field public t:J

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(FFJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;->x:F

    iput p2, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;->y:F

    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;->t:J

    return-void
.end method
