.class Lcom/android/mms/ui/ConversationListItem$3;
.super Ljava/lang/Object;
.source "ConversationListItem.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListItem;->SetHPWListenerForPenHover(Landroid/content/Context;Lcom/android/mms/data/Conversation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListItem;

.field final synthetic val$conversation:Lcom/android/mms/data/Conversation;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListItem;Lcom/android/mms/data/Conversation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListItem$3;->this$0:Lcom/android/mms/ui/ConversationListItem;

    iput-object p2, p0, Lcom/android/mms/ui/ConversationListItem$3;->val$conversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v7, 0x0

    return v7

    :pswitch_1
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem$3;->this$0:Lcom/android/mms/ui/ConversationListItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    # setter for: Lcom/android/mms/ui/ConversationListItem;->mHoverEnterTime:J
    invoke-static {v7, v8, v9}, Lcom/android/mms/ui/ConversationListItem;->access$302(Lcom/android/mms/ui/ConversationListItem;J)J

    goto :goto_0

    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem$3;->this$0:Lcom/android/mms/ui/ConversationListItem;

    # getter for: Lcom/android/mms/ui/ConversationListItem;->mHoverEnterTime:J
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListItem;->access$300(Lcom/android/mms/ui/ConversationListItem;)J

    move-result-wide v7

    sub-long v7, v1, v7

    const-wide/16 v9, 0xc8

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem$3;->this$0:Lcom/android/mms/ui/ConversationListItem;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListItem$3;->val$conversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v9}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v9

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/mms/ui/ConversationListItem;->IsMMS(Landroid/content/Context;J)Z

    move-result v0

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem$3;->this$0:Lcom/android/mms/ui/ConversationListItem;

    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem$3;->this$0:Lcom/android/mms/ui/ConversationListItem;

    # getter for: Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/mms/ui/ConversationListItem;->access$500(Lcom/android/mms/ui/ConversationListItem;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v8

    # setter for: Lcom/android/mms/ui/ConversationListItem;->subjectViewHpw:Landroid/widget/HoverPopupWindow;
    invoke-static {v7, v8}, Lcom/android/mms/ui/ConversationListItem;->access$402(Lcom/android/mms/ui/ConversationListItem;Landroid/widget/HoverPopupWindow;)Landroid/widget/HoverPopupWindow;

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem$3;->this$0:Lcom/android/mms/ui/ConversationListItem;

    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem$3;->this$0:Lcom/android/mms/ui/ConversationListItem;

    # getter for: Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/mms/ui/ConversationListItem;->access$500(Lcom/android/mms/ui/ConversationListItem;)Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->getHoverPopupWindow(I)Landroid/widget/HoverPopupWindow;

    move-result-object v8

    # setter for: Lcom/android/mms/ui/ConversationListItem;->subjectViewHpw:Landroid/widget/HoverPopupWindow;
    invoke-static {v7, v8}, Lcom/android/mms/ui/ConversationListItem;->access$402(Lcom/android/mms/ui/ConversationListItem;Landroid/widget/HoverPopupWindow;)Landroid/widget/HoverPopupWindow;

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem$3;->this$0:Lcom/android/mms/ui/ConversationListItem;

    # getter for: Lcom/android/mms/ui/ConversationListItem;->subjectViewHpw:Landroid/widget/HoverPopupWindow;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListItem;->access$400(Lcom/android/mms/ui/ConversationListItem;)Landroid/widget/HoverPopupWindow;

    move-result-object v7

    const/16 v8, 0x3031

    invoke-virtual {v7, v8}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem$3;->this$0:Lcom/android/mms/ui/ConversationListItem;

    # getter for: Lcom/android/mms/ui/ConversationListItem;->subjectViewHpw:Landroid/widget/HoverPopupWindow;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListItem;->access$400(Lcom/android/mms/ui/ConversationListItem;)Landroid/widget/HoverPopupWindow;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/HoverPopupWindow;->setFHGuideLineEnabled(Z)V

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem$3;->this$0:Lcom/android/mms/ui/ConversationListItem;

    # getter for: Lcom/android/mms/ui/ConversationListItem;->subjectViewHpw:Landroid/widget/HoverPopupWindow;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListItem;->access$400(Lcom/android/mms/ui/ConversationListItem;)Landroid/widget/HoverPopupWindow;

    move-result-object v7

    const/16 v8, 0x190

    invoke-virtual {v7, v8}, Landroid/widget/HoverPopupWindow;->setHoverDetectTime(I)V

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem$3;->this$0:Lcom/android/mms/ui/ConversationListItem;

    # getter for: Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListItem;->access$500(Lcom/android/mms/ui/ConversationListItem;)Landroid/widget/TextView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setHoverPopupType(I)V

    const/4 v7, 0x1

    if-ne v0, v7, :cond_4

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem$3;->this$0:Lcom/android/mms/ui/ConversationListItem;

    # getter for: Lcom/android/mms/ui/ConversationListItem;->subjectViewHpw:Landroid/widget/HoverPopupWindow;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListItem;->access$400(Lcom/android/mms/ui/ConversationListItem;)Landroid/widget/HoverPopupWindow;

    move-result-object v7

    if-eqz v7, :cond_1

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v7, ""

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem$3;->this$0:Lcom/android/mms/ui/ConversationListItem;

    # getter for: Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListItem;->access$100(Lcom/android/mms/ui/ConversationListItem;)Lcom/android/mms/data/Conversation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem$3;->this$0:Lcom/android/mms/ui/ConversationListItem;

    # getter for: Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListItem;->access$500(Lcom/android/mms/ui/ConversationListItem;)Landroid/widget/TextView;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/view/View;->setHoverPopupType(I)V

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem$3;->this$0:Lcom/android/mms/ui/ConversationListItem;

    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem$3;->this$0:Lcom/android/mms/ui/ConversationListItem;

    # getter for: Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/mms/ui/ConversationListItem;->access$500(Lcom/android/mms/ui/ConversationListItem;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v5, v6}, Lcom/android/mms/ui/ConversationListItem;->getbodyFromMMS(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem$3;->this$0:Lcom/android/mms/ui/ConversationListItem;

    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem$3;->this$0:Lcom/android/mms/ui/ConversationListItem;

    # getter for: Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/mms/ui/ConversationListItem;->access$500(Lcom/android/mms/ui/ConversationListItem;)Landroid/widget/TextView;

    move-result-object v8

    # invokes: Lcom/android/mms/ui/ConversationListItem;->makeHoverText(Landroid/widget/TextView;Ljava/lang/String;)Ljava/lang/StringBuffer;
    invoke-static {v7, v8, v3}, Lcom/android/mms/ui/ConversationListItem;->access$600(Lcom/android/mms/ui/ConversationListItem;Landroid/widget/TextView;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem$3;->this$0:Lcom/android/mms/ui/ConversationListItem;

    # getter for: Lcom/android/mms/ui/ConversationListItem;->subjectViewHpw:Landroid/widget/HoverPopupWindow;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListItem;->access$400(Lcom/android/mms/ui/ConversationListItem;)Landroid/widget/HoverPopupWindow;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem$3;->this$0:Lcom/android/mms/ui/ConversationListItem;

    const-wide/16 v8, -0x1

    # setter for: Lcom/android/mms/ui/ConversationListItem;->mHoverEnterTime:J
    invoke-static {v7, v8, v9}, Lcom/android/mms/ui/ConversationListItem;->access$302(Lcom/android/mms/ui/ConversationListItem;J)J

    goto/16 :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem$3;->this$0:Lcom/android/mms/ui/ConversationListItem;

    # getter for: Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListItem;->access$500(Lcom/android/mms/ui/ConversationListItem;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem$3;->this$0:Lcom/android/mms/ui/ConversationListItem;

    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem$3;->this$0:Lcom/android/mms/ui/ConversationListItem;

    # getter for: Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/mms/ui/ConversationListItem;->access$500(Lcom/android/mms/ui/ConversationListItem;)Landroid/widget/TextView;

    move-result-object v8

    # invokes: Lcom/android/mms/ui/ConversationListItem;->makeHoverText(Landroid/widget/TextView;Ljava/lang/String;)Ljava/lang/StringBuffer;
    invoke-static {v7, v8, v3}, Lcom/android/mms/ui/ConversationListItem;->access$600(Lcom/android/mms/ui/ConversationListItem;Landroid/widget/TextView;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem$3;->this$0:Lcom/android/mms/ui/ConversationListItem;

    # getter for: Lcom/android/mms/ui/ConversationListItem;->subjectViewHpw:Landroid/widget/HoverPopupWindow;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListItem;->access$400(Lcom/android/mms/ui/ConversationListItem;)Landroid/widget/HoverPopupWindow;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem$3;->this$0:Lcom/android/mms/ui/ConversationListItem;

    # getter for: Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListItem;->access$500(Lcom/android/mms/ui/ConversationListItem;)Landroid/widget/TextView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setHoverPopupType(I)V

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem$3;->this$0:Lcom/android/mms/ui/ConversationListItem;

    # getter for: Lcom/android/mms/ui/ConversationListItem;->subjectViewHpw:Landroid/widget/HoverPopupWindow;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListItem;->access$400(Lcom/android/mms/ui/ConversationListItem;)Landroid/widget/HoverPopupWindow;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem$3;->this$0:Lcom/android/mms/ui/ConversationListItem;

    # getter for: Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListItem;->access$500(Lcom/android/mms/ui/ConversationListItem;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem$3;->this$0:Lcom/android/mms/ui/ConversationListItem;

    # getter for: Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListItem;->access$500(Lcom/android/mms/ui/ConversationListItem;)Landroid/widget/TextView;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/view/View;->setHoverPopupType(I)V

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem$3;->this$0:Lcom/android/mms/ui/ConversationListItem;

    # getter for: Lcom/android/mms/ui/ConversationListItem;->subjectViewHpw:Landroid/widget/HoverPopupWindow;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListItem;->access$400(Lcom/android/mms/ui/ConversationListItem;)Landroid/widget/HoverPopupWindow;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem$3;->this$0:Lcom/android/mms/ui/ConversationListItem;

    # getter for: Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/mms/ui/ConversationListItem;->access$500(Lcom/android/mms/ui/ConversationListItem;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem$3;->this$0:Lcom/android/mms/ui/ConversationListItem;

    # getter for: Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListItem;->access$500(Lcom/android/mms/ui/ConversationListItem;)Landroid/widget/TextView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setHoverPopupType(I)V

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem$3;->this$0:Lcom/android/mms/ui/ConversationListItem;

    # getter for: Lcom/android/mms/ui/ConversationListItem;->subjectViewHpw:Landroid/widget/HoverPopupWindow;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListItem;->access$400(Lcom/android/mms/ui/ConversationListItem;)Landroid/widget/HoverPopupWindow;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_3
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem$3;->this$0:Lcom/android/mms/ui/ConversationListItem;

    const-wide/16 v8, -0x1

    # setter for: Lcom/android/mms/ui/ConversationListItem;->mHoverEnterTime:J
    invoke-static {v7, v8, v9}, Lcom/android/mms/ui/ConversationListItem;->access$302(Lcom/android/mms/ui/ConversationListItem;J)J

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
