.class Lcom/android/mms/ui/MessageListItem$11;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$11;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 35

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    move-object/from16 v27, p1

    check-cast v27, Landroid/widget/TextView;

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    instance-of v3, v11, Landroid/text/Spannable;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    move-object v4, v11

    check-cast v4, Landroid/text/Spannable;

    if-eqz v10, :cond_1

    const/4 v3, 0x2

    if-ne v10, v3, :cond_10

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    move/from16 v29, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v0, v3

    move/from16 v30, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v5

    sub-int/2addr v3, v5

    add-int v29, v29, v3

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getScrollY()I

    move-result v3

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v5

    sub-int/2addr v3, v5

    add-int v30, v30, v3

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v13

    if-nez v13, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    move/from16 v0, v30

    invoke-virtual {v13, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v14

    move/from16 v0, v29

    int-to-float v3, v0

    invoke-virtual {v13, v14, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v18

    const-class v3, Landroid/text/style/ClickableSpan;

    move/from16 v0, v18

    move/from16 v1, v18

    invoke-interface {v4, v0, v1, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Landroid/text/style/ClickableSpan;

    if-eqz v17, :cond_11

    move-object/from16 v0, v17

    array-length v3, v0

    if-lez v3, :cond_11

    invoke-virtual/range {v27 .. v27}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v26

    invoke-virtual {v13, v14}, Landroid/text/Layout;->getLineStart(I)I

    move-result v16

    invoke-virtual {v13, v14}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v15

    const/4 v3, 0x0

    aget-object v3, v17, v3

    invoke-interface {v4, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    const/4 v3, 0x0

    aget-object v3, v17, v3

    invoke-interface {v4, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/4 v9, 0x0

    const/16 v23, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePoi()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    aget-object v3, v17, v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v22

    const-string v3, "Mms/MessageListItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mOnBodyTextTouchListener, onTouch, classname= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "POIURLSpan"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v10, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$11;->this$0:Lcom/android/mms/ui/MessageListItem;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "POI:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4, v7, v8}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v7, v8}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/mms/ui/MessageListItem;->setTextLink(Landroid/text/Spannable;Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static/range {v3 .. v8}, Lcom/android/mms/ui/MessageListItem;->access$2200(Lcom/android/mms/ui/MessageListItem;Landroid/text/Spannable;Ljava/lang/String;Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$11;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mLongClickHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$2300(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0x3e8

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$11;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mLongClickHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$2300(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0x3e8

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v31

    # getter for: Lcom/android/mms/ui/MessageListItem;->TAP_TIMEOUT:I
    invoke-static {}, Lcom/android/mms/ui/MessageListItem;->access$2400()I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v33, v0

    add-long v31, v31, v33

    # getter for: Lcom/android/mms/ui/MessageListItem;->LONGPRESS_TIMEOUT:I
    invoke-static {}, Lcom/android/mms/ui/MessageListItem;->access$2500()I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v33, v0

    add-long v31, v31, v33

    move-wide/from16 v0, v31

    invoke-virtual {v3, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$11;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$1900(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->playSoundEffect(I)V

    :cond_3
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_4
    if-gez v16, :cond_5

    const/16 v16, 0x0

    :cond_5
    if-gez v15, :cond_6

    const/4 v15, 0x0

    :cond_6
    :try_start_0
    move/from16 v0, v16

    invoke-interface {v4, v0, v15}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v20

    :goto_1
    invoke-interface {v4, v7, v8}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v21

    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v13, v14, v0}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    invoke-static {v11}, Lcom/android/mms/ui/MessageUtils;->isTextRTL(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    :try_start_1
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v0, v3

    move/from16 v25, v0

    sub-int v9, v24, v25

    const/16 v23, 0x0

    move/from16 v0, v16

    if-lt v7, v0, :cond_c

    if-lez v14, :cond_a

    if-le v8, v15, :cond_8

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-interface {v0, v1, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v0, v3

    move/from16 v23, v0

    :goto_2
    add-int v3, v9, v23

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    move-object/from16 v0, v19

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_11

    move-object/from16 v3, v21

    check-cast v3, Landroid/text/Spanned;

    const/4 v5, 0x0

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const-class v31, Landroid/text/style/URLSpan;

    move-object/from16 v0, v31

    invoke-interface {v3, v5, v6, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v28

    check-cast v28, [Landroid/text/style/URLSpan;

    if-eqz v28, :cond_11

    move-object/from16 v0, v28

    array-length v3, v0

    if-lez v3, :cond_11

    if-nez v10, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$11;->this$0:Lcom/android/mms/ui/MessageListItem;

    const/4 v5, 0x0

    aget-object v5, v28, v5

    invoke-virtual {v5}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/android/mms/ui/MessageListItem;->mSelectedUrl:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/android/mms/ui/MessageListItem;->access$1802(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$11;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSelectedUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$1800(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "tel:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$11;->this$0:Lcom/android/mms/ui/MessageListItem;

    const/4 v5, 0x0

    aget-object v5, v28, v5

    invoke-virtual {v5}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageListItem$11;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSelectedUrl:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$1800(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;

    move-result-object v6

    const/16 v31, 0x4

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/mms/ui/MessageListItem;->setTextLink(Landroid/text/Spannable;Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static/range {v3 .. v8}, Lcom/android/mms/ui/MessageListItem;->access$2200(Lcom/android/mms/ui/MessageListItem;Landroid/text/Spannable;Ljava/lang/String;Ljava/lang/String;II)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$11;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mLongClickHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$2300(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0x3e8

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$11;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mLongClickHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$2300(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0x3e8

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v31

    # getter for: Lcom/android/mms/ui/MessageListItem;->TAP_TIMEOUT:I
    invoke-static {}, Lcom/android/mms/ui/MessageListItem;->access$2400()I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v33, v0

    add-long v31, v31, v33

    # getter for: Lcom/android/mms/ui/MessageListItem;->LONGPRESS_TIMEOUT:I
    invoke-static {}, Lcom/android/mms/ui/MessageListItem;->access$2500()I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v33, v0

    add-long v31, v31, v33

    move-wide/from16 v0, v31

    invoke-virtual {v3, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$11;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$1900(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->playSoundEffect(I)V

    :cond_7
    const/4 v3, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v12

    const-string v3, "Mms/MessageListItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StringIndexOutOfBoundsException!! lineStart= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lineEnd= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", spanStart= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", spanEnd= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    goto/16 :goto_1

    :cond_8
    :try_start_2
    invoke-virtual {v13, v14}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_9

    sub-int v3, v8, v16

    sub-int v5, v15, v16

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v0, v3

    move/from16 v23, v0

    goto/16 :goto_2

    :cond_9
    const/4 v9, 0x0

    const/4 v3, 0x0

    sub-int v5, v7, v16

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v0, v3

    move/from16 v23, v0

    goto/16 :goto_2

    :cond_a
    if-le v8, v15, :cond_b

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v15}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    sub-int v23, v24, v3

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, v20

    invoke-interface {v0, v8, v15}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v0, v3

    move/from16 v23, v0

    goto/16 :goto_2

    :cond_c
    sub-int v3, v8, v16

    sub-int v5, v15, v16

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v0, v3

    move/from16 v23, v0

    add-int v3, v9, v23

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I
    :try_end_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v3

    goto/16 :goto_3

    :cond_d
    move/from16 v0, v16

    if-lt v7, v0, :cond_e

    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x0

    sub-int v6, v7, v16

    move-object/from16 v0, v20

    invoke-interface {v0, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v5, v16, v7

    sub-int v6, v8, v7

    move-object/from16 v0, v21

    invoke-interface {v0, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$11;->this$0:Lcom/android/mms/ui/MessageListItem;

    const/4 v5, 0x0

    aget-object v5, v28, v5

    invoke-virtual {v5}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/mms/ui/MessageListItem;->setTextLink(Landroid/text/Spannable;Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static/range {v3 .. v8}, Lcom/android/mms/ui/MessageListItem;->access$2200(Lcom/android/mms/ui/MessageListItem;Landroid/text/Spannable;Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_4

    :cond_10
    const/4 v3, 0x1

    if-ne v10, v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$11;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSelectedUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$1800(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$11;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$2600(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;

    move-result-object v3

    const/4 v5, 0x3

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$11;->this$0:Lcom/android/mms/ui/MessageListItem;

    move-object/from16 v32, v0

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSelectedUrl:Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Lcom/android/mms/ui/MessageListItem;->access$1800(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v6, v31

    const/16 v31, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$11;->this$0:Lcom/android/mms/ui/MessageListItem;

    move-object/from16 v32, v0

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSelectedText:Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Lcom/android/mms/ui/MessageListItem;->access$2700(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v6, v31

    invoke-static {v3, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$11;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mLongClickHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$2300(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0x3e8

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$11;->this$0:Lcom/android/mms/ui/MessageListItem;

    const-string v5, ""

    # setter for: Lcom/android/mms/ui/MessageListItem;->mSelectedUrl:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/android/mms/ui/MessageListItem;->access$1802(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListItem$11;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;
    invoke-static {v3}, Lcom/android/mms/ui/MessageListItem;->access$2800(Lcom/android/mms/ui/MessageListItem;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v3

    invoke-interface {v4, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    const/4 v3, 0x0

    goto/16 :goto_0
.end method
