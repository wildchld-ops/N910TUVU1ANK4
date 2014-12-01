.class Lcom/android/mms/ui/MmsRichContainer$11;
.super Ljava/lang/Object;
.source "MmsRichContainer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsRichContainer;->setDeleteAnimation(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsRichContainer;

.field final synthetic val$slideIndex:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsRichContainer;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer$11;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iput p2, p0, Lcom/android/mms/ui/MmsRichContainer$11;->val$slideIndex:I

    iput p3, p0, Lcom/android/mms/ui/MmsRichContainer$11;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6

    iget-object v1, p0, Lcom/android/mms/ui/MmsRichContainer$11;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    # getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MmsRichContainer$11;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    # getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/mms/ui/MmsRichContainer$11;->val$slideIndex:I

    iget v4, p0, Lcom/android/mms/ui/MmsRichContainer$11;->val$type:I

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
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
