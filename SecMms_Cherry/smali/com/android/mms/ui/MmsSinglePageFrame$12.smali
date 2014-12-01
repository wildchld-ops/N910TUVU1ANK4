.class Lcom/android/mms/ui/MmsSinglePageFrame$12;
.super Ljava/lang/Object;
.source "MmsSinglePageFrame.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsSinglePageFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsSinglePageFrame;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageFrame$12;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 29

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    move-object/from16 v21, p1

    check-cast v21, Landroid/widget/TextView;

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    instance-of v0, v6, Landroid/text/Spannable;

    move/from16 v25, v0

    if-nez v25, :cond_0

    const/16 v25, 0x0

    :goto_0
    return v25

    :cond_0
    move-object/from16 v19, v6

    check-cast v19, Landroid/text/Spannable;

    # getter for: Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z
    invoke-static {}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$800()Z

    move-result v25

    if-eqz v25, :cond_1

    const-string v25, "kkahn/Mms/MmsSinglePageFrame"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "onTouch, action="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", bMultiTouch="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-boolean v27, Lcom/android/mms/ui/MmsSinglePageFrame;->bMultiTouch:Z

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v5, :cond_2

    const/16 v25, 0x2

    move/from16 v0, v25

    if-ne v5, v0, :cond_6

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v24, v0

    :try_start_0
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getScrollX()I

    move-result v25

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v26

    sub-int v25, v25, v26

    add-int v23, v23, v25

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getScrollY()I

    move-result v25

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getTotalPaddingTop()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v26

    sub-int v25, v25, v26

    add-int v24, v24, v25

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v8

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v9

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v8, v9, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v13

    const-class v25, Landroid/text/style/ClickableSpan;

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v13, v13, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/ClickableSpan;

    if-eqz v12, :cond_7

    array-length v0, v12

    move/from16 v25, v0

    if-lez v25, :cond_7

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v20

    invoke-virtual {v8, v9}, Landroid/text/Layout;->getLineStart(I)I

    move-result v11

    invoke-virtual {v8, v9}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v10

    const/16 v25, 0x0

    aget-object v25, v12, v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v18

    const/16 v25, 0x0

    aget-object v25, v12, v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v17

    move-object/from16 v0, v19

    invoke-interface {v0, v11, v10}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v15

    move-object/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-interface {v0, v1, v2}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v16

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v8, v9, v14}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    move/from16 v0, v18

    if-lt v0, v11, :cond_5

    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    const/16 v26, 0x0

    sub-int v27, v18, v11

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-interface {v15, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v25

    iput v0, v14, Landroid/graphics/Rect;->left:I

    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v25

    iput v0, v14, Landroid/graphics/Rect;->right:I

    :goto_1
    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v25

    if-eqz v25, :cond_7

    move-object/from16 v25, v16

    check-cast v25, Landroid/text/Spanned;

    const/16 v26, 0x0

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v27

    const-class v28, Landroid/text/style/URLSpan;

    invoke-interface/range {v25 .. v28}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Landroid/text/style/URLSpan;

    if-eqz v22, :cond_7

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v25, v0

    if-lez v25, :cond_7

    if-nez v5, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsSinglePageFrame$12;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    move-object/from16 v25, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    # setter for: Lcom/android/mms/ui/MmsSinglePageFrame;->mSelectedText:Ljava/lang/String;
    invoke-static/range {v25 .. v26}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$1002(Lcom/android/mms/ui/MmsSinglePageFrame;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsSinglePageFrame$12;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget-object v26, v22, v26

    invoke-virtual/range {v26 .. v26}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v26

    # setter for: Lcom/android/mms/ui/MmsSinglePageFrame;->mSelectedUrl:Ljava/lang/String;
    invoke-static/range {v25 .. v26}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$902(Lcom/android/mms/ui/MmsSinglePageFrame;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsSinglePageFrame$12;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    move-object/from16 v25, v0

    # getter for: Lcom/android/mms/ui/MmsSinglePageFrame;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;
    invoke-static/range {v25 .. v25}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$1100(Lcom/android/mms/ui/MmsSinglePageFrame;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move/from16 v2, v18

    move/from16 v3, v17

    move/from16 v4, v26

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    const/16 v25, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v7

    # getter for: Lcom/android/mms/ui/MmsSinglePageFrame;->DEBUG_LOG:Z
    invoke-static {}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$800()Z

    move-result v25

    if-eqz v25, :cond_4

    const-string v25, "kkahn/Mms/MmsSinglePageFrame"

    const-string v26, "NullPointerException happens"

    invoke-static/range {v25 .. v26}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsSinglePageFrame$12;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    move-object/from16 v25, v0

    const-string v26, ""

    # setter for: Lcom/android/mms/ui/MmsSinglePageFrame;->mSelectedUrl:Ljava/lang/String;
    invoke-static/range {v25 .. v26}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$902(Lcom/android/mms/ui/MmsSinglePageFrame;Ljava/lang/String;)Ljava/lang/String;

    const/16 v25, 0x0

    goto/16 :goto_0

    :cond_5
    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    sub-int v26, v11, v18

    sub-int v27, v17, v18

    move-object/from16 v0, v16

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v25

    iput v0, v14, Landroid/graphics/Rect;->right:I

    goto/16 :goto_1

    :cond_6
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v5, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsSinglePageFrame$12;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    move-object/from16 v25, v0

    # getter for: Lcom/android/mms/ui/MmsSinglePageFrame;->mSelectedUrl:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$900(Lcom/android/mms/ui/MmsSinglePageFrame;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsSinglePageFrame$12;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    move-object/from16 v25, v0

    # getter for: Lcom/android/mms/ui/MmsSinglePageFrame;->mActivity:Landroid/app/Activity;
    invoke-static/range {v25 .. v25}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$1200(Lcom/android/mms/ui/MmsSinglePageFrame;)Landroid/app/Activity;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsSinglePageFrame$12;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    move-object/from16 v26, v0

    # getter for: Lcom/android/mms/ui/MmsSinglePageFrame;->mSelectedUrl:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$900(Lcom/android/mms/ui/MmsSinglePageFrame;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsSinglePageFrame$12;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    move-object/from16 v27, v0

    # getter for: Lcom/android/mms/ui/MmsSinglePageFrame;->mSelectedText:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$1000(Lcom/android/mms/ui/MmsSinglePageFrame;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lcom/android/mms/ui/MessageUtils;->showLinksContextMenu(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/DialogFragment;

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsSinglePageFrame$12;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    move-object/from16 v25, v0

    const-string v26, ""

    # setter for: Lcom/android/mms/ui/MmsSinglePageFrame;->mSelectedUrl:Ljava/lang/String;
    invoke-static/range {v25 .. v26}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$902(Lcom/android/mms/ui/MmsSinglePageFrame;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsSinglePageFrame$12;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    move-object/from16 v25, v0

    # getter for: Lcom/android/mms/ui/MmsSinglePageFrame;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;
    invoke-static/range {v25 .. v25}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$1100(Lcom/android/mms/ui/MmsSinglePageFrame;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    const/16 v25, 0x0

    goto/16 :goto_0
.end method
