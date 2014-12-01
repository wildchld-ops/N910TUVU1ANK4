.class Lcom/android/mms/ui/MessageListItem$OnBodyTextTouchListener;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnBodyTextTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$OnBodyTextTouchListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageListItem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem$OnBodyTextTouchListener;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 16

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    move-object/from16 v8, p1

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    instance-of v10, v2, Landroid/text/Spannable;

    if-nez v10, :cond_0

    sget-object v10, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v8, v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_0
    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/MessageListItem$OnBodyTextTouchListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mLongClickHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$2300(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x3e8

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/MessageListItem$OnBodyTextTouchListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mLongClickHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$2300(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x3e8

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v12

    # getter for: Lcom/android/mms/ui/MessageListItem;->TAP_TIMEOUT:I
    invoke-static {}, Lcom/android/mms/ui/MessageListItem;->access$2400()I

    move-result v14

    int-to-long v14, v14

    add-long/2addr v12, v14

    # getter for: Lcom/android/mms/ui/MessageListItem;->LONGPRESS_TIMEOUT:I
    invoke-static {}, Lcom/android/mms/ui/MessageListItem;->access$2500()I

    move-result v14

    int-to-long v14, v14

    add-long/2addr v12, v14

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    const/4 v10, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setPressed(Z)V

    const/4 v10, 0x1

    :goto_0
    return v10

    :cond_1
    const/4 v10, 0x2

    if-ne v1, v10, :cond_2

    const/4 v10, 0x1

    goto :goto_0

    :cond_2
    const/4 v10, 0x1

    if-ne v1, v10, :cond_5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/MessageListItem$OnBodyTextTouchListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mLongClickHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$2300(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x3e8

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setPressed(Z)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/MessageListItem$OnBodyTextTouchListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mIsLongclickHandled:Z
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$2000(Lcom/android/mms/ui/MessageListItem;)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/MessageListItem$OnBodyTextTouchListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    const/4 v11, 0x0

    # setter for: Lcom/android/mms/ui/MessageListItem;->mIsLongclickHandled:Z
    invoke-static {v10, v11}, Lcom/android/mms/ui/MessageListItem;->access$2002(Lcom/android/mms/ui/MessageListItem;Z)Z

    :cond_3
    :goto_1
    const/4 v10, 0x1

    goto :goto_0

    :cond_4
    const/4 v10, 0x2

    new-array v5, v10, [I

    move-object/from16 v0, p2

    invoke-static {v8, v0, v5}, Lcom/android/mms/util/UIUtils;->getSelectedLinkText(Landroid/widget/TextView;Landroid/view/MotionEvent;[I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    move-object v10, v4

    check-cast v10, Landroid/text/Spanned;

    const/4 v11, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v12

    const-class v13, Landroid/text/style/URLSpan;

    invoke-interface {v10, v11, v12, v13}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/URLSpan;

    if-eqz v9, :cond_3

    array-length v10, v9

    if-lez v10, :cond_3

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    sget-object v10, Lcom/android/mms/util/UIUtils$OnLinkTouchListener;->SELECTED_URL_SPAN_COLOR:Landroid/text/style/ForegroundColorSpan;

    const/4 v11, 0x0

    aget v11, v5, v11

    const/4 v12, 0x1

    aget v12, v5, v12

    const/4 v13, 0x0

    invoke-interface {v3, v10, v11, v12, v13}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    sget-object v10, Lcom/android/mms/util/UIUtils$OnLinkTouchListener;->SELECTED_URL_SPAN_UNDERLINE:Landroid/text/style/UnderlineSpan;

    const/4 v11, 0x0

    aget v11, v5, v11

    const/4 v12, 0x1

    aget v12, v5, v12

    const/4 v13, 0x0

    invoke-interface {v3, v10, v11, v12, v13}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/MessageListItem$OnBodyTextTouchListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$2600(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;

    move-result-object v10

    new-instance v11, Lcom/android/mms/ui/MessageListItem$OnBodyTextTouchListener$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v3}, Lcom/android/mms/ui/MessageListItem$OnBodyTextTouchListener$1;-><init>(Lcom/android/mms/ui/MessageListItem$OnBodyTextTouchListener;Landroid/text/Spannable;)V

    const-wide/16 v12, 0xc8

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-virtual {v10}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/MessageListItem$OnBodyTextTouchListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$1900(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/LinearLayout;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->playSoundEffect(I)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/MessageListItem$OnBodyTextTouchListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$2600(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x3

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    const/4 v13, 0x1

    aput-object v6, v12, v13

    invoke-static {v10, v11, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/MessageListItem$OnBodyTextTouchListener;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mLongClickHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$2300(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x3e8

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v10, 0x0

    goto/16 :goto_0
.end method
