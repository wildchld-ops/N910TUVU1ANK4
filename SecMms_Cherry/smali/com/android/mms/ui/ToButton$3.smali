.class Lcom/android/mms/ui/ToButton$3;
.super Ljava/lang/Object;
.source "ToButton.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ToButton;->delete(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ToButton;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ToButton;Landroid/os/Handler;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ToButton$3;->this$0:Lcom/android/mms/ui/ToButton;

    iput-object p2, p0, Lcom/android/mms/ui/ToButton$3;->val$handler:Landroid/os/Handler;

    iput p3, p0, Lcom/android/mms/ui/ToButton$3;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1    # Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/mms/ui/ToButton$3;->val$handler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/mms/ui/ToButton$3;->val$id:I

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

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
