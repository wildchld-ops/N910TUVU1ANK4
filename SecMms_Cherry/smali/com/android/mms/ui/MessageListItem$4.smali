.class Lcom/android/mms/ui/MessageListItem$4;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$4;->this$0:Lcom/android/mms/ui/MessageListItem;

    iput p2, p0, Lcom/android/mms/ui/MessageListItem$4;->val$width:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    const/4 v0, 0x0

    # setter for: Lcom/android/mms/ui/MessageListItem;->isAnimationPlaying:Z
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$302(Z)Z

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$4;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$400(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/MessageListItem$4;->val$width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
