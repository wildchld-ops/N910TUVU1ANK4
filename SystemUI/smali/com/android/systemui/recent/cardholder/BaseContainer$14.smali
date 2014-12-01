.class Lcom/android/systemui/recent/cardholder/BaseContainer$14;
.super Ljava/lang/Object;
.source "BaseContainer.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/cardholder/BaseContainer;->scrollUp(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/cardholder/BaseContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$14;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$14;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/recent/cardholder/BaseContainer;->mChildDismissScrollAnimating:Z
    invoke-static {v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->access$202(Lcom/android/systemui/recent/cardholder/BaseContainer;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$14;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/recent/cardholder/BaseContainer;->mChildDismissScrollAnimating:Z
    invoke-static {v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->access$202(Lcom/android/systemui/recent/cardholder/BaseContainer;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$14;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    const/4 v1, 0x1

    # setter for: Lcom/android/systemui/recent/cardholder/BaseContainer;->mChildDismissScrollAnimating:Z
    invoke-static {v0, v1}, Lcom/android/systemui/recent/cardholder/BaseContainer;->access$202(Lcom/android/systemui/recent/cardholder/BaseContainer;Z)Z

    return-void
.end method
