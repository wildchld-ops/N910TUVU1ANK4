.class Lcom/android/mms/animation/MsgListAnimation$4;
.super Ljava/lang/Object;
.source "MsgListAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/animation/MsgListAnimation;->createCheckBoxAnimation(Landroid/view/View;Z)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/animation/MsgListAnimation;

.field final synthetic val$checkbox:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/mms/animation/MsgListAnimation;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/animation/MsgListAnimation$4;->this$0:Lcom/android/mms/animation/MsgListAnimation;

    iput-object p2, p0, Lcom/android/mms/animation/MsgListAnimation$4;->val$checkbox:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1    # Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/mms/animation/MsgListAnimation$4;->this$0:Lcom/android/mms/animation/MsgListAnimation;

    iget-object v0, v0, Lcom/android/mms/animation/MsgBaseListAnimation;->mOnDelAnimListener:Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/animation/MsgListAnimation$4;->this$0:Lcom/android/mms/animation/MsgListAnimation;

    iget-object v0, v0, Lcom/android/mms/animation/MsgBaseListAnimation;->mOnDelAnimListener:Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;

    invoke-interface {v0}, Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;->onEndDeleteAnimation()V

    iget-object v0, p0, Lcom/android/mms/animation/MsgListAnimation$4;->this$0:Lcom/android/mms/animation/MsgListAnimation;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/mms/animation/MsgBaseListAnimation;->mIsAnimating:Z

    :cond_0
    iget-object v0, p0, Lcom/android/mms/animation/MsgListAnimation$4;->val$checkbox:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/mms/animation/MsgListAnimation$4;->val$checkbox:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/mms/animation/MsgListAnimation$4;->val$checkbox:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1    # Landroid/view/animation/Animation;

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1    # Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/mms/animation/MsgListAnimation$4;->this$0:Lcom/android/mms/animation/MsgListAnimation;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/mms/animation/MsgBaseListAnimation;->mIsAnimating:Z

    return-void
.end method
