.class Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;
.super Ljava/lang/Object;
.source "MmsRichContainer.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsRichContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageOnKey"
.end annotation


# instance fields
.field private final CHECK_POSITION_IS_FIRST_LINE:I

.field private final CHECK_POSITION_IS_LAST_LINE:I

.field private mSlideIndex:I

.field private mType:I

.field final synthetic this$0:Lcom/android/mms/ui/MmsRichContainer;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MmsRichContainer;II)V
    .locals 1
    .param p2    # I
    .param p3    # I

    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->CHECK_POSITION_IS_LAST_LINE:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->CHECK_POSITION_IS_FIRST_LINE:I

    iput p2, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    iput p3, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    return-void
.end method

.method private isCursorOnTextlines(I)Z
    .locals 10
    .param p1    # I

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return v4

    :pswitch_0
    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    const/4 v3, 0x0

    if-le v2, v9, :cond_1

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    add-int/lit8 v7, v2, -0x2

    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    :cond_1
    const-string v6, "Mms/MmsRichContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "move focus [IS_LAST_LINE?] curPosition="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", offsetLastLineStart="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", lineCount="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    if-eq v2, v9, :cond_2

    if-ge v3, v0, :cond_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    :pswitch_1
    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    const-string v6, "Mms/MmsRichContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "move focus [IS_FIRST_LINE?] curPosition="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", endOfFirstLine="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    if-gt v6, v1, :cond_0

    const/4 v4, 0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private obviousFocusMoveOn(Landroid/view/View;Z)Z
    .locals 4
    .param p1    # Landroid/view/View;
    .param p2    # Z

    const/4 v0, 0x0

    const-string v1, "Mms/MmsRichContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "move focus obviousFocusMoveOn(), view="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Mms/MmsRichContainer"

    const-string v2, "move focus on *set*"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    const/16 v1, 0x21

    invoke-static {v1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 23
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # Landroid/view/KeyEvent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/MmsRichContainer;->isNeedToBlockTheKey:Z
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->access$200(Lcom/android/mms/ui/MmsRichContainer;)Z

    move-result v18

    if-eqz v18, :cond_1

    const/4 v8, 0x1

    :cond_0
    :goto_0
    return v8

    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v18

    if-nez v18, :cond_8

    const/16 v18, 0x52

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->access$000(Lcom/android/mms/ui/MmsRichContainer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageFragment;->invalidateOptionsMenu()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->access$000(Lcom/android/mms/ui/MmsRichContainer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->finishWB(Landroid/widget/EditText;)V

    :cond_2
    const/16 v18, 0x42

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    const/16 v18, 0x17

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v18

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->hasFocus()Z

    move-result v18

    if-nez v18, :cond_8

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->access$300(Lcom/android/mms/ui/MmsRichContainer;)Landroid/content/Context;

    move-result-object v18

    const-string v19, "vibrator"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/Vibrator;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    :cond_4
    const/4 v8, 0x1

    goto/16 :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    # invokes: Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;
    invoke-static/range {v18 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->access$400(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->showContextMenu()Z

    if-eqz v17, :cond_5

    const-wide/16 v18, 0x32

    invoke-virtual/range {v17 .. v19}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_5
    const/4 v8, 0x1

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    # invokes: Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    invoke-static/range {v18 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->access$500(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v11

    if-eqz v11, :cond_7

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_6

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->showContextMenu()Z

    :cond_6
    if-eqz v17, :cond_7

    const-wide/16 v18, 0x32

    invoke-virtual/range {v17 .. v19}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_7
    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v18

    if-eqz v18, :cond_b

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    const/16 v18, 0x42

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    const/16 v18, 0x17

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    :cond_9
    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_b
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v18

    if-eqz v18, :cond_c

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    :cond_c
    const/4 v14, 0x0

    packed-switch p2, :pswitch_data_1

    :cond_d
    const/16 v18, 0x43

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_2

    :cond_e
    :goto_1
    const/4 v8, 0x1

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v18

    if-eqz v18, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v18 .. v22}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    :cond_f
    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_3

    :cond_10
    const/4 v8, 0x1

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Z

    move/from16 v18, v0

    if-nez v18, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v18, v0

    if-nez v18, :cond_12

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    :cond_11
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v18, v0

    if-lez v18, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    # invokes: Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;
    invoke-static/range {v18 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->access$400(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v18

    if-nez v18, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v18

    if-eqz v18, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v18

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setNextFocusUpId(I)V

    :cond_13
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(I)V

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(I)V

    const/4 v8, 0x1

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Z

    move/from16 v18, v0

    if-nez v18, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(I)V

    :goto_2
    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    # invokes: Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    invoke-static/range {v18 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->access$500(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v11

    if-eqz v11, :cond_18

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v18

    if-nez v18, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v18

    if-eqz v18, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v18

    const v19, 0x7f0b02a6

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setNextFocusUpId(I)V

    :cond_17
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(I)V

    goto :goto_2

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Z

    move/from16 v18, v0

    if-nez v18, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    # invokes: Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    invoke-static/range {v18 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->access$500(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v18

    if-eqz v18, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v18

    const/16 v19, -0x1

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setNextFocusUpId(I)V

    :cond_19
    if-eqz v11, :cond_1b

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v18

    if-nez v18, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v18

    if-eqz v18, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v18

    const v19, 0x7f0b02a6

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setNextFocusUpId(I)V

    :cond_1a
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v18, v0

    if-lez v18, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    # invokes: Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;
    invoke-static/range {v18 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->access$400(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->isCursorOnTextlines(I)Z

    move-result v8

    if-eqz v8, :cond_1d

    const-string v18, "Mms/MmsRichContainer"

    const-string v19, "move focus to previous slide"

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(I)V

    :goto_3
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v18

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v18

    if-eqz v18, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v18

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setNextFocusUpId(I)V

    :cond_1c
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_1d
    const-string v18, "Mms/MmsRichContainer"

    const-string v19, "move focus up skipped"

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_1e
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->isCursorOnTextlines(I)Z

    move-result v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v18, v0

    if-nez v18, :cond_1f

    if-eqz v8, :cond_1f

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    :cond_1f
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v18, v0

    if-lez v18, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(I)V

    const/4 v8, 0x1

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v18

    if-eqz v18, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v18 .. v22}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    # invokes: Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;
    invoke-static/range {v18 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->access$400(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    # invokes: Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    invoke-static/range {v18 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->access$500(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v11

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->isCursorOnTextlines(I)Z

    move-result v9

    if-eqz v14, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_4

    :cond_21
    :goto_4
    :pswitch_7
    const-string v18, "Mms/MmsRichContainer"

    const-string v19, "move focus dpad down#1"

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v18

    if-eqz v18, :cond_2b

    if-eqz v11, :cond_28

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v18

    if-nez v18, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Z

    move/from16 v18, v0

    if-eqz v18, :cond_28

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v18

    if-nez v18, :cond_22

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v18

    if-nez v18, :cond_28

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    # invokes: Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    invoke-static/range {v18 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->access$500(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v12

    const v18, 0x7f0b02a6

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v9}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->obviousFocusMoveOn(Landroid/view/View;Z)Z

    move-result v18

    if-eqz v18, :cond_2b

    const/4 v8, 0x1

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Z

    move/from16 v18, v0

    if-nez v18, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->getTotalPageCount()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_21

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v18

    if-eqz v18, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    # invokes: Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    invoke-static/range {v18 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->access$500(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v10

    if-eqz v10, :cond_24

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v18

    if-nez v18, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v18

    if-eqz v18, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v18

    const v19, 0x7f0b02a6

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setNextFocusDownId(I)V

    :cond_23
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_24
    if-eqz v9, :cond_25

    const-string v18, "Mms/MmsRichContainer"

    const-string v19, "move focus to next slide"

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(I)V

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_25
    const-string v18, "Mms/MmsRichContainer"

    const-string v19, "move focus down skipped"

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Z

    move/from16 v18, v0

    if-nez v18, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(I)V

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->getTotalPageCount()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_21

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v18

    if-eqz v18, :cond_21

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(I)V

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_28
    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v18

    if-nez v18, :cond_2a

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->obviousFocusMoveOn(Landroid/view/View;Z)Z

    move-result v18

    if-eqz v18, :cond_29

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_29
    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v18

    if-eqz v18, :cond_2b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->getTotalPageCount()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(I)V

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->access$000(Lcom/android/mms/ui/MmsRichContainer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/ComposeMessageFragment;->isEmoticonMode()Z

    move-result v18

    if-eqz v18, :cond_2e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->getTotalPageCount()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v18

    const v19, 0x7f0b0182

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setNextFocusDownId(I)V

    :cond_2b
    :goto_5
    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    :cond_2c
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(I)V

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_2e
    const-string v18, "Mms/MmsRichContainer"

    const-string v19, "move focus setNextFocusDownId View.NO_ID"

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v18

    const/16 v19, -0x1

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setNextFocusDownId(I)V

    goto :goto_5

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v18

    const/16 v19, 0x21

    invoke-static/range {v19 .. v19}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->playSoundEffect(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v18, v0

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v18

    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v18

    if-nez v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v18 .. v22}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v18 .. v22}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    const/4 v8, 0x1

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v18, v0

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v18

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    invoke-virtual {v5}, Landroid/widget/TextView;->hasSelection()Z

    move-result v18

    if-nez v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v18 .. v22}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v18 .. v22}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    const/4 v8, 0x1

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x3

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v18 .. v22}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    # invokes: Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    invoke-static/range {v18 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->access$500(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v18

    if-eqz v18, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v20, v0

    # invokes: Lcom/android/mms/ui/MmsRichContainer;->setDeleteAnimation(II)V
    invoke-static/range {v18 .. v20}, Lcom/android/mms/ui/MmsRichContainer;->access$700(Lcom/android/mms/ui/MmsRichContainer;II)V

    goto/16 :goto_1

    :cond_31
    if-eqz v3, :cond_32

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v18

    if-nez v18, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # setter for: Lcom/android/mms/ui/MmsRichContainer;->removeMediaPort:Landroid/widget/RelativeLayout;
    invoke-static {v0, v3}, Lcom/android/mms/ui/MmsRichContainer;->access$802(Lcom/android/mms/ui/MmsRichContainer;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v18

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v18 .. v22}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v18

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v18 .. v22}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    # invokes: Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    invoke-static/range {v18 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->access$500(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Z

    move/from16 v18, v0

    if-eqz v18, :cond_e

    if-eqz v11, :cond_e

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v18

    if-nez v18, :cond_e

    invoke-virtual {v11}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_1

    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v18

    if-eqz v18, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v18

    if-nez v18, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v18

    if-nez v18, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v6

    const/16 v16, 0x0

    if-eqz v6, :cond_33

    invoke-virtual {v6}, Landroid/widget/TextView;->length()I

    move-result v16

    :cond_33
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x1

    # invokes: Lcom/android/mms/ui/MmsRichContainer;->pageHasContents(Landroid/view/View;Z)Z
    invoke-static/range {v18 .. v20}, Lcom/android/mms/ui/MmsRichContainer;->access$900(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;Z)Z

    move-result v18

    if-nez v18, :cond_34

    if-gtz v16, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v18

    if-eqz v18, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v18 .. v22}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    # invokes: Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    invoke-static/range {v18 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->access$500(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Z

    move/from16 v18, v0

    if-nez v18, :cond_35

    if-eqz v12, :cond_35

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v18

    if-nez v18, :cond_35

    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_1

    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v18

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v18, v0

    if-lez v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->length()I

    move-result v18

    if-nez v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    # invokes: Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;
    invoke-static/range {v18 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->access$400(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v18

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    # invokes: Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;
    invoke-static/range {v18 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->access$400(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v18

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    # setter for: Lcom/android/mms/ui/MmsRichContainer;->isNeedToBlockTheKey:Z
    invoke-static/range {v18 .. v19}, Lcom/android/mms/ui/MmsRichContainer;->access$202(Lcom/android/mms/ui/MmsRichContainer;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/view/ViewGroup;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->setLastElementFocus(Landroid/view/ViewGroup;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    # getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v18 .. v22}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    :cond_36
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_37
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v18, v0

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3c

    const/16 v18, 0x4

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_3b

    const/16 v18, 0x52

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_3b

    const/16 v18, 0xef

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_3b

    const-class v18, Landroid/view/WindowManagerGlobal;

    const-string v19, "getWindowSession"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-class v22, Landroid/os/Looper;

    aput-object v22, v20, v21

    invoke-static/range {v18 .. v20}, Lcom/android/mms/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v21, v0

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/android/mms/ui/MmsRichContainer;->access$1000(Lcom/android/mms/ui/MmsRichContainer;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v7, v1}, Lcom/android/mms/util/MethodReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/IWindowSession;

    if-nez v15, :cond_38

    const-class v18, Landroid/view/WindowManagerGlobal;

    const-string v19, "getWindowSession"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lcom/android/mms/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v7, v1}, Lcom/android/mms/util/MethodReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/IWindowSession;

    :cond_38
    if-eqz v15, :cond_39

    const/16 v18, 0x1

    :try_start_0
    move/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/view/IWindowSession;->setInTouchMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_39
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v18

    if-eqz v18, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_3a
    const/4 v8, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :cond_3b
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_3c
    const/4 v8, 0x0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_2
        :pswitch_6
        :pswitch_a
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xa
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xa
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xa
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
