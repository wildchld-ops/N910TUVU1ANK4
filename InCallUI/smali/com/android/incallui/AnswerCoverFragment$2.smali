.class Lcom/android/incallui/AnswerCoverFragment$2;
.super Ljava/lang/Object;
.source "AnswerCoverFragment.java"

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/AnswerCoverFragment;->onFinishInflate(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/AnswerCoverFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/AnswerCoverFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/AnswerCoverFragment$2;->this$0:Lcom/android/incallui/AnswerCoverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/incallui/AnswerCoverFragment$2;->this$0:Lcom/android/incallui/AnswerCoverFragment;

    # getter for: Lcom/android/incallui/AnswerCoverFragment;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/AnswerCoverFragment;->access$000(Lcom/android/incallui/AnswerCoverFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/AnswerCoverFragment$2;->this$0:Lcom/android/incallui/AnswerCoverFragment;

    # getter for: Lcom/android/incallui/AnswerCoverFragment;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/AnswerCoverFragment;->access$000(Lcom/android/incallui/AnswerCoverFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020371

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/AnswerCoverFragment$2;->this$0:Lcom/android/incallui/AnswerCoverFragment;

    const-string v1, "onDrawerClosed"

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/AnswerCoverFragment$2;->this$0:Lcom/android/incallui/AnswerCoverFragment;

    # invokes: Lcom/android/incallui/AnswerCoverFragment;->setDrawerDescription(Z)V
    invoke-static {v0, v2}, Lcom/android/incallui/AnswerCoverFragment;->access$100(Lcom/android/incallui/AnswerCoverFragment;Z)V

    return-void
.end method
