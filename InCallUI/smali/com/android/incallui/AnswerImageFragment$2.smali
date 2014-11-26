.class Lcom/android/incallui/AnswerImageFragment$2;
.super Ljava/lang/Object;
.source "AnswerImageFragment.java"

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/AnswerImageFragment;->onFinishInflate(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/AnswerImageFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/AnswerImageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/AnswerImageFragment$2;->this$0:Lcom/android/incallui/AnswerImageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/incallui/AnswerImageFragment$2;->this$0:Lcom/android/incallui/AnswerImageFragment;

    # getter for: Lcom/android/incallui/AnswerImageFragment;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/AnswerImageFragment;->access$000(Lcom/android/incallui/AnswerImageFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/AnswerImageFragment$2;->this$0:Lcom/android/incallui/AnswerImageFragment;

    # getter for: Lcom/android/incallui/AnswerImageFragment;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/AnswerImageFragment;->access$000(Lcom/android/incallui/AnswerImageFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020371

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/AnswerImageFragment$2;->this$0:Lcom/android/incallui/AnswerImageFragment;

    const-string v1, "onDrawerClosed"

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/AnswerImageFragment$2;->this$0:Lcom/android/incallui/AnswerImageFragment;

    # getter for: Lcom/android/incallui/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/RejectCallWithMessageDrawer;
    invoke-static {v0}, Lcom/android/incallui/AnswerImageFragment;->access$100(Lcom/android/incallui/AnswerImageFragment;)Lcom/android/incallui/widget/incomingwidget/RejectCallWithMessageDrawer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/AnswerImageFragment$2;->this$0:Lcom/android/incallui/AnswerImageFragment;

    iget-object v1, p0, Lcom/android/incallui/AnswerImageFragment$2;->this$0:Lcom/android/incallui/AnswerImageFragment;

    # getter for: Lcom/android/incallui/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/RejectCallWithMessageDrawer;
    invoke-static {v1}, Lcom/android/incallui/AnswerImageFragment;->access$100(Lcom/android/incallui/AnswerImageFragment;)Lcom/android/incallui/widget/incomingwidget/RejectCallWithMessageDrawer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v1

    # invokes: Lcom/android/incallui/AnswerImageFragment;->setDescription(Landroid/view/View;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/incallui/AnswerImageFragment;->access$200(Lcom/android/incallui/AnswerImageFragment;Landroid/view/View;Z)V

    :cond_1
    return-void
.end method
