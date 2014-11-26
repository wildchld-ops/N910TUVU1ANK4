.class Lcom/samsung/android/airbutton/view/AirButtonBounceListView$1;
.super Ljava/lang/Object;
.source "AirButtonBounceListView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/airbutton/view/AirButtonBounceListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/airbutton/view/AirButtonBounceListView;


# direct methods
.method constructor <init>(Lcom/samsung/android/airbutton/view/AirButtonBounceListView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/airbutton/view/AirButtonBounceListView$1;->this$0:Lcom/samsung/android/airbutton/view/AirButtonBounceListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonBounceListView$1;->this$0:Lcom/samsung/android/airbutton/view/AirButtonBounceListView;

    # invokes: Lcom/samsung/android/airbutton/view/AirButtonBounceListView;->generateAndPlaySecondAnimation()V
    invoke-static {v0}, Lcom/samsung/android/airbutton/view/AirButtonBounceListView;->access$000(Lcom/samsung/android/airbutton/view/AirButtonBounceListView;)V

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
