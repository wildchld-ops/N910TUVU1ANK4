.class Lcom/samsung/android/airbutton/view/AirButtonListView$2;
.super Ljava/lang/Object;
.source "AirButtonListView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/airbutton/view/AirButtonListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/airbutton/view/AirButtonListView;


# direct methods
.method constructor <init>(Lcom/samsung/android/airbutton/view/AirButtonListView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView$2;->this$0:Lcom/samsung/android/airbutton/view/AirButtonListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1    # Landroid/animation/Animator;

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView$2;->this$0:Lcom/samsung/android/airbutton/view/AirButtonListView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->misFlickering:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1    # Landroid/animation/Animator;

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView$2;->this$0:Lcom/samsung/android/airbutton/view/AirButtonListView;

    iget v1, v0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalMovedDistance:F

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView$2;->this$0:Lcom/samsung/android/airbutton/view/AirButtonListView;

    iget v2, v2, Lcom/samsung/android/airbutton/view/AirButtonListView;->mCurrentMovedDistance:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalMovedDistance:F

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView$2;->this$0:Lcom/samsung/android/airbutton/view/AirButtonListView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->misFlickering:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;

    return-void
.end method
