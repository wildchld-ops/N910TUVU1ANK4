.class Lcom/android/mms/animation/MsgBaseListAnimation$3;
.super Ljava/lang/Object;
.source "MsgBaseListAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/animation/MsgBaseListAnimation;->showCheckBoxAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/animation/MsgBaseListAnimation;

.field final synthetic val$checkboxView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/mms/animation/MsgBaseListAnimation;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/animation/MsgBaseListAnimation$3;->this$0:Lcom/android/mms/animation/MsgBaseListAnimation;

    iput-object p2, p0, Lcom/android/mms/animation/MsgBaseListAnimation$3;->val$checkboxView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1    # Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation$3;->val$checkboxView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation$3;->val$checkboxView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation$3;->this$0:Lcom/android/mms/animation/MsgBaseListAnimation;

    invoke-virtual {v0}, Lcom/android/mms/animation/MsgBaseListAnimation;->setListItemSlideEffectDone()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1    # Landroid/view/animation/Animation;

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1    # Landroid/view/animation/Animation;

    return-void
.end method
