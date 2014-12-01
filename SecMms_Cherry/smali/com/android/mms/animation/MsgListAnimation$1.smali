.class Lcom/android/mms/animation/MsgListAnimation$1;
.super Ljava/lang/Object;
.source "MsgListAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/animation/MsgListAnimation;->createStatusAnimation(Landroid/view/View;)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/animation/MsgListAnimation;

.field final synthetic val$status:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/mms/animation/MsgListAnimation;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/animation/MsgListAnimation$1;->this$0:Lcom/android/mms/animation/MsgListAnimation;

    iput-object p2, p0, Lcom/android/mms/animation/MsgListAnimation$1;->val$status:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/animation/MsgListAnimation$1;->val$status:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/mms/animation/MsgListAnimation$1;->val$status:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

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
