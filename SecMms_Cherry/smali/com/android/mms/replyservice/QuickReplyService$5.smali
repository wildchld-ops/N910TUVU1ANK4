.class Lcom/android/mms/replyservice/QuickReplyService$5;
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

    iput-object p1, p0, Lcom/android/mms/replyservice/QuickReplyService$5;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService$5;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    # getter for: Lcom/android/mms/replyservice/QuickReplyService;->mCancelButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mms/replyservice/QuickReplyService;->access$1900(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService$5;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    iget-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService$5;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    # getter for: Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/replyservice/QuickReplyService;->access$700(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/android/mms/replyservice/QuickReplyService;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0, v1}, Lcom/android/mms/replyservice/QuickReplyService;->access$1500(Lcom/android/mms/replyservice/QuickReplyService;Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService$5;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    iget-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService$5;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    # getter for: Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;
    invoke-static {v1}, Lcom/android/mms/replyservice/QuickReplyService;->access$100(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    # invokes: Lcom/android/mms/replyservice/QuickReplyService;->setPopupSlideAnimation(Landroid/view/View;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/replyservice/QuickReplyService;->access$200(Lcom/android/mms/replyservice/QuickReplyService;Landroid/view/View;Z)V

    return-void
.end method
