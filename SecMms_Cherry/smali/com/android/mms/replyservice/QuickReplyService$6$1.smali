.class Lcom/android/mms/replyservice/QuickReplyService$6$1;
.super Ljava/lang/Object;
.source "QuickReplyService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/replyservice/QuickReplyService$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/replyservice/QuickReplyService$6;


# direct methods
.method constructor <init>(Lcom/android/mms/replyservice/QuickReplyService$6;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/replyservice/QuickReplyService$6$1;->this$1:Lcom/android/mms/replyservice/QuickReplyService$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/16 v2, 0x8

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService$6$1;->this$1:Lcom/android/mms/replyservice/QuickReplyService$6;

    iget-object v0, v0, Lcom/android/mms/replyservice/QuickReplyService$6;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    # getter for: Lcom/android/mms/replyservice/QuickReplyService;->mPopupCenter:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/replyservice/QuickReplyService;->access$2600(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService$6$1;->this$1:Lcom/android/mms/replyservice/QuickReplyService$6;

    iget-object v0, v0, Lcom/android/mms/replyservice/QuickReplyService$6;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    # getter for: Lcom/android/mms/replyservice/QuickReplyService;->mComposerLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/replyservice/QuickReplyService;->access$2900(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService$6$1;->this$1:Lcom/android/mms/replyservice/QuickReplyService$6;

    iget-object v0, v0, Lcom/android/mms/replyservice/QuickReplyService$6;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    # getter for: Lcom/android/mms/replyservice/QuickReplyService;->mButtonPanel:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/replyservice/QuickReplyService;->access$3000(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService$6$1;->this$1:Lcom/android/mms/replyservice/QuickReplyService$6;

    iget-object v0, v0, Lcom/android/mms/replyservice/QuickReplyService$6;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    # getter for: Lcom/android/mms/replyservice/QuickReplyService;->mPopupBottom:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/replyservice/QuickReplyService;->access$2800(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/view/View;

    move-result-object v0

    # getter for: Lcom/android/mms/replyservice/QuickReplyService;->ANIMATION_PANEL_Y_END:F
    invoke-static {}, Lcom/android/mms/replyservice/QuickReplyService;->access$3100()F

    move-result v1

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService$6$1;->this$1:Lcom/android/mms/replyservice/QuickReplyService$6;

    iget-object v2, v2, Lcom/android/mms/replyservice/QuickReplyService$6;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    # getter for: Lcom/android/mms/replyservice/QuickReplyService;->mOffset:F
    invoke-static {v2}, Lcom/android/mms/replyservice/QuickReplyService;->access$2300(Lcom/android/mms/replyservice/QuickReplyService;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService$6$1;->this$1:Lcom/android/mms/replyservice/QuickReplyService$6;

    iget-object v0, v0, Lcom/android/mms/replyservice/QuickReplyService$6;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    # getter for: Lcom/android/mms/replyservice/QuickReplyService;->mBottomAnimator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v0}, Lcom/android/mms/replyservice/QuickReplyService;->access$2700(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService$6$1;->this$1:Lcom/android/mms/replyservice/QuickReplyService$6;

    iget-object v2, v2, Lcom/android/mms/replyservice/QuickReplyService$6;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    # getter for: Lcom/android/mms/replyservice/QuickReplyService;->mOffset:F
    invoke-static {v2}, Lcom/android/mms/replyservice/QuickReplyService;->access$2300(Lcom/android/mms/replyservice/QuickReplyService;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/mms/animation/easing/SineInOut80;

    invoke-direct {v1}, Lcom/android/mms/animation/easing/SineInOut80;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
