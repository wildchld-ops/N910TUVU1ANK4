.class Lcom/android/mms/replyservice/QuickReplyService$6;
.super Ljava/lang/Object;
.source "QuickReplyService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/replyservice/QuickReplyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/replyservice/QuickReplyService;


# direct methods
.method constructor <init>(Lcom/android/mms/replyservice/QuickReplyService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/replyservice/QuickReplyService$6;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const-wide/16 v3, 0x1f4

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService$6;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    const/4 v1, 0x1

    # setter for: Lcom/android/mms/replyservice/QuickReplyService;->mReplyClicked:Z
    invoke-static {v0, v1}, Lcom/android/mms/replyservice/QuickReplyService;->access$2002(Lcom/android/mms/replyservice/QuickReplyService;Z)Z

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService$6;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    # getter for: Lcom/android/mms/replyservice/QuickReplyService;->mReplyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mms/replyservice/QuickReplyService;->access$2100(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService$6;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    # getter for: Lcom/android/mms/replyservice/QuickReplyService;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/replyservice/QuickReplyService;->access$400(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService$6;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    const/16 v1, 0xfa

    # invokes: Lcom/android/mms/replyservice/QuickReplyService;->showSipDelayed(I)V
    invoke-static {v0, v1}, Lcom/android/mms/replyservice/QuickReplyService;->access$2200(Lcom/android/mms/replyservice/QuickReplyService;I)V

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService$6;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/replyservice/QuickReplyService;->mOffset:F
    invoke-static {v0, v1}, Lcom/android/mms/replyservice/QuickReplyService;->access$2302(Lcom/android/mms/replyservice/QuickReplyService;F)F

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService$6;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    # getter for: Lcom/android/mms/replyservice/QuickReplyService;->DIALOG_SCROLLVIEW_HEIGHT_PX:F
    invoke-static {}, Lcom/android/mms/replyservice/QuickReplyService;->access$2400()F

    move-result v1

    # setter for: Lcom/android/mms/replyservice/QuickReplyService;->mOffset:F
    invoke-static {v0, v1}, Lcom/android/mms/replyservice/QuickReplyService;->access$2302(Lcom/android/mms/replyservice/QuickReplyService;F)F

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService$6;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    iget-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService$6;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    # getter for: Lcom/android/mms/replyservice/QuickReplyService;->mPopupCenter:Landroid/view/View;
    invoke-static {v1}, Lcom/android/mms/replyservice/QuickReplyService;->access$2600(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    # setter for: Lcom/android/mms/replyservice/QuickReplyService;->mCenterAnimator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v0, v1}, Lcom/android/mms/replyservice/QuickReplyService;->access$2502(Lcom/android/mms/replyservice/QuickReplyService;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService$6;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    # getter for: Lcom/android/mms/replyservice/QuickReplyService;->mCenterAnimator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v0}, Lcom/android/mms/replyservice/QuickReplyService;->access$2500(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    # getter for: Lcom/android/mms/replyservice/QuickReplyService;->DIALOG_SCROLLVIEW_HEIGHT_PX:F
    invoke-static {}, Lcom/android/mms/replyservice/QuickReplyService;->access$2400()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/mms/animation/easing/SineInOut80;

    invoke-direct {v1}, Lcom/android/mms/animation/easing/SineInOut80;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService$6;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    iget-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService$6;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    # getter for: Lcom/android/mms/replyservice/QuickReplyService;->mPopupBottom:Landroid/view/View;
    invoke-static {v1}, Lcom/android/mms/replyservice/QuickReplyService;->access$2800(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    # setter for: Lcom/android/mms/replyservice/QuickReplyService;->mBottomAnimator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v0, v1}, Lcom/android/mms/replyservice/QuickReplyService;->access$2702(Lcom/android/mms/replyservice/QuickReplyService;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService$6;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    # getter for: Lcom/android/mms/replyservice/QuickReplyService;->mBottomAnimator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v0}, Lcom/android/mms/replyservice/QuickReplyService;->access$2700(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    # getter for: Lcom/android/mms/replyservice/QuickReplyService;->ANIMATION_PANEL_Y_END:F
    invoke-static {}, Lcom/android/mms/replyservice/QuickReplyService;->access$3100()F

    move-result v1

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService$6;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    # getter for: Lcom/android/mms/replyservice/QuickReplyService;->mOffset:F
    invoke-static {v2}, Lcom/android/mms/replyservice/QuickReplyService;->access$2300(Lcom/android/mms/replyservice/QuickReplyService;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/mms/animation/easing/SineInOut80;

    invoke-direct {v1}, Lcom/android/mms/animation/easing/SineInOut80;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/mms/replyservice/QuickReplyService$6$1;

    invoke-direct {v1, p0}, Lcom/android/mms/replyservice/QuickReplyService$6$1;-><init>(Lcom/android/mms/replyservice/QuickReplyService$6;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
