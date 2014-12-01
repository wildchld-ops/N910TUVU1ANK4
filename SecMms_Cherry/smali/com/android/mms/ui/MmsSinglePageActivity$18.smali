.class Lcom/android/mms/ui/MmsSinglePageActivity$18;
.super Ljava/lang/Object;
.source "MmsSinglePageActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsSinglePageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsSinglePageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageActivity$18;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 27

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    move-object/from16 v22, p1

    check-cast v22, Landroid/widget/TextView;

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    instance-of v3, v10, Landroid/text/Spannable;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    move-object v4, v10

    check-cast v4, Landroid/text/Spannable;

    # getter for: Lcom/android/mms/ui/MmsSinglePageActivity;->DEBUG_LOG:Z
    invoke-static {}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$900()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "kkahn/Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouch, action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", bMultiTouch="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/mms/ui/MmsSinglePageActivity;->bMultiTouch:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v9, :cond_2

    const/4 v3, 0x2

    if-ne v9, v3, :cond_8

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    move/from16 v24, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v0, v3

    move/from16 v25, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v5

    sub-int/2addr v3, v5

    add-int v24, v24, v3

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getScrollY()I

    move-result v3

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v5

    sub-int/2addr v3, v5

    add-int v25, v25, v3

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v12

    move/from16 v0, v24

    int-to-float v3, v0

    invoke-virtual {v11, v12, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v16

    const-class v3, Landroid/text/style/ClickableSpan;

    move/from16 v0, v16

    move/from16 v1, v16

    invoke-interface {v4, v0, v1, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Landroid/text/style/ClickableSpan;

    if-eqz v15, :cond_9

    array-length v3, v15

    if-lez v3, :cond_9

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v21

    invoke-virtual {v11, v12}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    invoke-virtual {v11, v12}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v13

    const/4 v3, 0x0

    aget-object v3, v15, v3

    invoke-interface {v4, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    const/4 v3, 0x0

    aget-object v3, v15, v3

    invoke-interface {v4, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    invoke-interface {v4, v14, v13}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-interface {v4, v7, v8}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePoi()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    aget-object v3, v15, v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v20

    const-string v3, "Mms/MmsSinglePageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mOnBodyTextTouchListener, onTouch, classname= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "POIURLSpan"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v9, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MmsSinglePageActivity$18;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "POI:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v7, v8}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/mms/ui/MmsSinglePageActivity;->setTextLink(Landroid/text/Spannable;Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static/range {v3 .. v8}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$1000(Lcom/android/mms/ui/MmsSinglePageActivity;Landroid/text/Spannable;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->performClick()Z

    :cond_4
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_5
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v11, v12, v0}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    if-lt v7, v14, :cond_7

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x0

    sub-int v6, v7, v14

    move-object/from16 v0, v18

    invoke-interface {v0, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    :goto_1
    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v3, v19

    check-cast v3, Landroid/text/Spanned;

    const/4 v5, 0x0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const-class v26, Landroid/text/style/URLSpan;

    move-object/from16 v0, v26

    invoke-interface {v3, v5, v6, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Landroid/text/style/URLSpan;

    if-eqz v23, :cond_9

    move-object/from16 v0, v23

    array-length v3, v0

    if-lez v3, :cond_9

    if-nez v9, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MmsSinglePageActivity$18;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    const/4 v5, 0x0

    aget-object v5, v23, v5

    invoke-virtual {v5}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/mms/ui/MmsSinglePageActivity;->setTextLink(Landroid/text/Spannable;Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static/range {v3 .. v8}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$1000(Lcom/android/mms/ui/MmsSinglePageActivity;Landroid/text/Spannable;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->performClick()Z

    :cond_6
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v5, v14, v7

    sub-int v6, v8, v7

    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_8
    const/4 v3, 0x1

    if-ne v9, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MmsSinglePageActivity$18;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    # getter for: Lcom/android/mms/ui/MmsSinglePageActivity;->mSelectedUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$1100(Lcom/android/mms/ui/MmsSinglePageActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MmsSinglePageActivity$18;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MmsSinglePageActivity$18;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    # getter for: Lcom/android/mms/ui/MmsSinglePageActivity;->mSelectedUrl:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$1100(Lcom/android/mms/ui/MmsSinglePageActivity;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MmsSinglePageActivity$18;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    # getter for: Lcom/android/mms/ui/MmsSinglePageActivity;->mSelectedText:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$1200(Lcom/android/mms/ui/MmsSinglePageActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/android/mms/ui/MessageUtils;->showLinksContextMenu(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/DialogFragment;

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MmsSinglePageActivity$18;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    const-string v5, ""

    # setter for: Lcom/android/mms/ui/MmsSinglePageActivity;->mSelectedUrl:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$1102(Lcom/android/mms/ui/MmsSinglePageActivity;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MmsSinglePageActivity$18;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    # getter for: Lcom/android/mms/ui/MmsSinglePageActivity;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;
    invoke-static {v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$1300(Lcom/android/mms/ui/MmsSinglePageActivity;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v3

    invoke-interface {v4, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    const/4 v3, 0x0

    goto/16 :goto_0
.end method
