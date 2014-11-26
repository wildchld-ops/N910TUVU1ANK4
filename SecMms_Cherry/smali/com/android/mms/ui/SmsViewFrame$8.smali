.class Lcom/android/mms/ui/SmsViewFrame$8;
.super Ljava/lang/Object;
.source "SmsViewFrame.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SmsViewFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SmsViewFrame;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SmsViewFrame;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SmsViewFrame$8;->this$0:Lcom/android/mms/ui/SmsViewFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 25
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    move-object/from16 v17, p1

    check-cast v17, Landroid/widget/TextView;

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    instance-of v0, v3, Landroid/text/Spannable;

    move/from16 v21, v0

    if-nez v21, :cond_0

    const/16 v21, 0x0

    :goto_0
    return v21

    :cond_0
    move-object v15, v3

    check-cast v15, Landroid/text/Spannable;

    if-eqz v2, :cond_1

    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v2, v0, :cond_5

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v21

    if-nez v21, :cond_2

    const/16 v21, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getScrollX()I

    move-result v21

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v22

    sub-int v21, v21, v22

    add-int v19, v19, v21

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getScrollY()I

    move-result v21

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v22

    sub-int v21, v21, v22

    add-int v20, v20, v21

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v5

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v4, v5, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v9

    const-class v21, Landroid/text/style/ClickableSpan;

    move-object/from16 v0, v21

    invoke-interface {v15, v9, v9, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/ClickableSpan;

    if-eqz v8, :cond_6

    array-length v0, v8

    move/from16 v21, v0

    if-lez v21, :cond_6

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v16

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    const/16 v21, 0x0

    aget-object v21, v8, v21

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    const/16 v21, 0x0

    aget-object v21, v8, v21

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    invoke-interface {v15, v7, v6}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v15, v14, v13}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v4, v5, v10}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    if-lt v14, v7, :cond_4

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    const/16 v22, 0x0

    sub-int v23, v14, v7

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v11, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v0, v21

    iput v0, v10, Landroid/graphics/Rect;->left:I

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v0, v21

    iput v0, v10, Landroid/graphics/Rect;->right:I

    :goto_1
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v21

    if-eqz v21, :cond_6

    move-object/from16 v21, v12

    check-cast v21, Landroid/text/Spanned;

    const/16 v22, 0x0

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v23

    const-class v24, Landroid/text/style/URLSpan;

    invoke-interface/range {v21 .. v24}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Landroid/text/style/URLSpan;

    if-eqz v18, :cond_6

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_6

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsViewFrame$8;->this$0:Lcom/android/mms/ui/SmsViewFrame;

    move-object/from16 v21, v0

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    # setter for: Lcom/android/mms/ui/SmsViewFrame;->mSelectedText:Ljava/lang/String;
    invoke-static/range {v21 .. v22}, Lcom/android/mms/ui/SmsViewFrame;->access$402(Lcom/android/mms/ui/SmsViewFrame;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsViewFrame$8;->this$0:Lcom/android/mms/ui/SmsViewFrame;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v22, v18, v22

    invoke-virtual/range {v22 .. v22}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v22

    # setter for: Lcom/android/mms/ui/SmsViewFrame;->mSelectedUrl:Ljava/lang/String;
    invoke-static/range {v21 .. v22}, Lcom/android/mms/ui/SmsViewFrame;->access$502(Lcom/android/mms/ui/SmsViewFrame;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsViewFrame$8;->this$0:Lcom/android/mms/ui/SmsViewFrame;

    move-object/from16 v21, v0

    # getter for: Lcom/android/mms/ui/SmsViewFrame;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;
    invoke-static/range {v21 .. v21}, Lcom/android/mms/ui/SmsViewFrame;->access$600(Lcom/android/mms/ui/SmsViewFrame;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v15, v0, v14, v13, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->performClick()Z

    :cond_3
    const/16 v21, 0x1

    goto/16 :goto_0

    :cond_4
    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v22, v7, v14

    sub-int v23, v13, v14

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v12, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v0, v21

    iput v0, v10, Landroid/graphics/Rect;->right:I

    goto/16 :goto_1

    :cond_5
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v2, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsViewFrame$8;->this$0:Lcom/android/mms/ui/SmsViewFrame;

    move-object/from16 v21, v0

    # getter for: Lcom/android/mms/ui/SmsViewFrame;->mSelectedUrl:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/mms/ui/SmsViewFrame;->access$500(Lcom/android/mms/ui/SmsViewFrame;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsViewFrame$8;->this$0:Lcom/android/mms/ui/SmsViewFrame;

    move-object/from16 v21, v0

    # getter for: Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;
    invoke-static/range {v21 .. v21}, Lcom/android/mms/ui/SmsViewFrame;->access$200(Lcom/android/mms/ui/SmsViewFrame;)Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsViewFrame$8;->this$0:Lcom/android/mms/ui/SmsViewFrame;

    move-object/from16 v22, v0

    # getter for: Lcom/android/mms/ui/SmsViewFrame;->mSelectedUrl:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/SmsViewFrame;->access$500(Lcom/android/mms/ui/SmsViewFrame;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsViewFrame$8;->this$0:Lcom/android/mms/ui/SmsViewFrame;

    move-object/from16 v23, v0

    # getter for: Lcom/android/mms/ui/SmsViewFrame;->mSelectedText:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/android/mms/ui/SmsViewFrame;->access$400(Lcom/android/mms/ui/SmsViewFrame;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Lcom/android/mms/ui/MessageUtils;->showLinksContextMenu(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/DialogFragment;

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsViewFrame$8;->this$0:Lcom/android/mms/ui/SmsViewFrame;

    move-object/from16 v21, v0

    const-string v22, ""

    # setter for: Lcom/android/mms/ui/SmsViewFrame;->mSelectedUrl:Ljava/lang/String;
    invoke-static/range {v21 .. v22}, Lcom/android/mms/ui/SmsViewFrame;->access$502(Lcom/android/mms/ui/SmsViewFrame;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SmsViewFrame$8;->this$0:Lcom/android/mms/ui/SmsViewFrame;

    move-object/from16 v21, v0

    # getter for: Lcom/android/mms/ui/SmsViewFrame;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;
    invoke-static/range {v21 .. v21}, Lcom/android/mms/ui/SmsViewFrame;->access$600(Lcom/android/mms/ui/SmsViewFrame;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    const/16 v21, 0x0

    goto/16 :goto_0
.end method
