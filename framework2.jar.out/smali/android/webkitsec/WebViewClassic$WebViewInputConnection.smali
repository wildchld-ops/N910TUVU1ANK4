.class Landroid/webkitsec/WebViewClassic$WebViewInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebViewInputConnection"
.end annotation


# static fields
.field public static final ID_COPY:I = 0x1020021

.field public static final ID_CUT:I = 0x1020020

.field public static final ID_PASTE:I = 0x1020022

.field public static final ID_SELECT_ALL:I = 0x102001f


# instance fields
.field private mBatchLevel:I

.field private mHint:Ljava/lang/String;

.field private mImeOptions:I

.field private mInputType:I

.field private mIsAutoCompleteEnabled:Z

.field private mIsAutoFillable:Z

.field private mIsKeySentByMe:Z

.field private mIsPasswordField:Z

.field private mIsReplacingText:Z

.field private mIsSameInputType:Z

.field private mIsTextArea:Z

.field public mIsUpdatingText:Z

.field private mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field private mMaxLength:I

.field private mName:Ljava/lang/String;

.field final synthetic this$0:Landroid/webkitsec/WebViewClassic;


# direct methods
.method public constructor <init>(Landroid/webkitsec/WebViewClassic;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static {p1}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput v2, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mInputType:I

    iput-boolean v2, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsSameInputType:Z

    iput-boolean v2, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsReplacingText:Z

    iput-boolean v2, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsUpdatingText:Z

    return-void
.end method

.method private limitReplaceTextByMaxLength(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 5

    const/4 v4, 0x0

    iget v2, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mMaxLength:I

    if-lez v2, :cond_0

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    iget v2, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mMaxLength:I

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v1, v2, p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {p1, v4, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->resetBatchEdit()V

    :cond_0
    return-object p1
.end method

.method private resetBatchEdit()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    return-void
.end method

.method private restartInput()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsReplacingText:Z

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsUpdatingText:Z

    if-ne v1, v2, :cond_3

    :cond_0
    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsReplacingText:Z

    iput-boolean v3, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsUpdatingText:Z

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static {v1}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_2
    return-void

    :cond_3
    iget-boolean v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsSameInputType:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-boolean v1, v1, Landroid/webkitsec/WebViewClassic;->mIsSoftkeyboardVisible:Z

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsSameInputType:Z

    goto :goto_0
.end method

.method private sendCharacter(C)V
    .locals 10

    const/4 v9, 0x0

    iget-object v7, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    if-nez v7, :cond_0

    const/4 v7, -0x1

    invoke-static {v7}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v7

    iput-object v7, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    :cond_0
    const/4 v7, 0x1

    new-array v1, v7, [C

    aput-char p1, v1, v9

    iget-object v7, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v7, v1}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v0, v3

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    invoke-virtual {p0, v2}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v7, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v7, v7, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v8, 0x8d

    invoke-virtual {v7, v8, p1, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    iget-object v7, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v7, v7, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method private sendKey(I)V
    .locals 15

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    move-wide v3, v1

    move/from16 v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    new-instance v3, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x2

    move-wide v6, v1

    move/from16 v9, p1

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, v3}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method

.method private setNewText(IILjava/lang/CharSequence;)V
    .locals 14

    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsKeySentByMe:Z

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v1

    move/from16 v0, p2

    invoke-interface {v1, p1, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v9

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v8

    if-ne v9, v8, :cond_0

    if-le v10, v6, :cond_4

    add-int/lit8 v11, v6, 0x1

    if-ne v10, v11, :cond_3

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v11, v5, v12, v6}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-eqz v2, :cond_6

    add-int/lit8 v11, v10, -0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    invoke-direct {p0, v11}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->sendCharacter(C)V

    :cond_1
    :goto_1
    iget-object v11, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mAutoCompletePopup:Landroid/webkitsec/AutoCompletePopup;
    invoke-static {v11}, Landroid/webkitsec/WebViewClassic;->access$1100(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/AutoCompletePopup;

    move-result-object v11

    if-eqz v11, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    invoke-interface {v1, v11, p1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v11

    move/from16 v0, p2

    invoke-interface {v1, v0, v11}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mAutoCompletePopup:Landroid/webkitsec/AutoCompletePopup;
    invoke-static {v11}, Landroid/webkitsec/WebViewClassic;->access$1100(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/AutoCompletePopup;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/webkitsec/AutoCompletePopup;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsKeySentByMe:Z

    return-void

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    if-le v6, v10, :cond_0

    add-int/lit8 v11, v6, -0x1

    if-ne v10, v11, :cond_5

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v11, v5, v12, v10}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v3, 0x1

    :goto_2
    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    if-eqz v3, :cond_7

    const/16 v11, 0x43

    invoke-direct {p0, v11}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->sendKey(I)V

    goto :goto_1

    :cond_7
    if-ne v10, v6, :cond_8

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v11, v5, v12, v10}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v11

    if-nez v11, :cond_1

    :cond_8
    iget-object v11, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v11, v11, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v12, 0x8b

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v11, v12, p1, v0, v13}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    iget-object v11, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v11, v11, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v11, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method private updateSelection()V
    .locals 8

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {v6}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mIsNewInputField:Z
    invoke-static {v1}, Landroid/webkitsec/WebViewClassic;->access$700(Landroid/webkitsec/WebViewClassic;)Z

    move-result v1

    const/4 v7, 0x1

    if-ne v1, v7, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mIsScreenTouch:Z
    invoke-static {v1}, Landroid/webkitsec/WebViewClassic;->access$1200(Landroid/webkitsec/WebViewClassic;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    const/4 v7, 0x0

    # setter for: Landroid/webkitsec/WebViewClassic;->mIsNewInputField:Z
    invoke-static {v1, v7}, Landroid/webkitsec/WebViewClassic;->access$702(Landroid/webkitsec/WebViewClassic;Z)Z

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->moveCursorToEnd()V

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v3

    :cond_0
    invoke-static {v6}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    invoke-static {v6}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static {v1}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    :cond_1
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    iget v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->beginTextBatch()V
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$200(Landroid/webkitsec/WebViewClassic;)V

    :cond_0
    iget v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    const/4 v0, 0x0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    const/4 v0, 0x1

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 10

    const/4 v8, -0x1

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    if-le v0, v1, :cond_0

    move v7, v0

    move v0, v1

    move v1, v7

    :cond_0
    invoke-static {v4}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    invoke-static {v4}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v3

    if-ge v3, v2, :cond_1

    move v7, v2

    move v2, v3

    move v3, v7

    :cond_1
    if-eq v2, v8, :cond_3

    if-eq v3, v8, :cond_3

    if-ge v2, v0, :cond_2

    move v0, v2

    :cond_2
    if-le v3, v1, :cond_3

    move v1, v3

    :cond_3
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v8

    add-int v9, v1, p2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-le v5, v1, :cond_4

    const-string v8, ""

    invoke-direct {p0, v1, v5, v8}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setNewText(IILjava/lang/CharSequence;)V

    :cond_4
    const/4 v8, 0x0

    sub-int v9, v0, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-ge v6, v0, :cond_5

    const-string v8, ""

    invoke-direct {p0, v6, v0, v8}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setNewText(IILjava/lang/CharSequence;)V

    :cond_5
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    const/4 v8, 0x1

    return v8
.end method

.method public endBatchEdit()Z
    .locals 1

    iget v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    :cond_0
    iget v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->commitTextBatch()V
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$300(Landroid/webkitsec/WebViewClassic;)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    new-instance v2, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    iget-object v3, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    iget-object v3, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iput v5, v2, Landroid/view/inputmethod/ExtractedText;->flags:I

    iput v5, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    iput v3, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    iput v3, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    const/4 v3, -0x1

    iput v3, v2, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v3, v2, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    :cond_1
    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->endBatchEdit()Z

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v3

    invoke-virtual {v1, v3, v5, v2}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    :cond_2
    return-object v2
.end method

.method public getInputType()I
    .locals 1

    iget v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mInputType:I

    return v0
.end method

.method public getIsAutoFillable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsAutoFillable:Z

    return v0
.end method

.method public initEditorInfo(Landroid/webkitsec/WebViewCore$TextFieldInitData;)V
    .locals 10

    const/16 v9, 0x800

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0, v8}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setIfTextArea(Z)V

    invoke-virtual {p0, v8}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setIsPasswordField(Z)V

    iget v4, p1, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mType:I

    const/16 v2, 0xa1

    const/high16 v1, 0x12000000

    iget-boolean v5, p1, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mIsSpellCheckEnabled:Z

    if-nez v5, :cond_0

    const/high16 v5, 0x80000

    or-int/2addr v2, v5

    :cond_0
    if-eq v7, v4, :cond_2

    iget-boolean v5, p1, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mIsTextFieldNext:Z

    if-eqz v5, :cond_1

    const/high16 v5, 0x8000000

    or-int/2addr v1, v5

    :cond_1
    iget-boolean v5, p1, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mIsTextFieldPrev:Z

    if-eqz v5, :cond_2

    const/high16 v5, 0x4000000

    or-int/2addr v1, v5

    :cond_2
    const/4 v0, 0x2

    packed-switch v4, :pswitch_data_0

    :goto_0
    :pswitch_0
    or-int/2addr v1, v0

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-boolean v5, p1, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mIsTextFieldNext:Z

    if-nez v5, :cond_3

    iget-boolean v5, p1, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mIsSelectFieldNext:Z

    if-eqz v5, :cond_7

    :cond_3
    iget-boolean v5, p1, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mIsTextFieldPrev:Z

    if-nez v5, :cond_4

    iget-boolean v5, p1, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mIsSelectFieldPrev:Z

    if-eqz v5, :cond_7

    :cond_4
    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    const-string v6, "com.sec.android.inputmethod.axt9.BrowserPrevNext"

    # setter for: Landroid/webkitsec/WebViewClassic;->mPrivateImeOptions:Ljava/lang/String;
    invoke-static {v5, v6}, Landroid/webkitsec/WebViewClassic;->access$1002(Landroid/webkitsec/WebViewClassic;Ljava/lang/String;)Ljava/lang/String;

    :cond_5
    :goto_1
    iget-object v5, p1, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mLabel:Ljava/lang/String;

    iput-object v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mHint:Ljava/lang/String;

    iget v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mInputType:I

    if-eq v2, v5, :cond_c

    iput-boolean v8, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsSameInputType:Z

    :goto_2
    iput v2, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mInputType:I

    iput v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mImeOptions:I

    iget v5, p1, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mMaxLength:I

    iput v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mMaxLength:I

    iget v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mMaxLength:I

    if-le v5, v9, :cond_6

    iput v9, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mMaxLength:I

    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "maxlength after fix the length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mMaxLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-boolean v5, p1, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mIsAutoCompleteEnabled:Z

    iput-boolean v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsAutoCompleteEnabled:Z

    iget-object v5, p1, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mName:Ljava/lang/String;

    iput-object v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mName:Ljava/lang/String;

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mAutoCompletePopup:Landroid/webkitsec/AutoCompletePopup;
    invoke-static {v5}, Landroid/webkitsec/WebViewClassic;->access$1100(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/AutoCompletePopup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkitsec/AutoCompletePopup;->clearAdapter()V

    return-void

    :pswitch_1
    const v5, 0x2c000

    or-int/2addr v2, v5

    const/4 v0, 0x1

    invoke-virtual {p0, v7}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setIfTextArea(Z)V

    goto :goto_0

    :pswitch_2
    or-int/lit16 v2, v2, 0xe0

    invoke-virtual {p0, v7}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setIsPasswordField(Z)V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    const/16 v2, 0xd1

    goto :goto_0

    :pswitch_5
    const/16 v2, 0x2002

    goto :goto_0

    :pswitch_6
    const/4 v2, 0x3

    goto :goto_0

    :pswitch_7
    or-int/lit8 v2, v2, 0x10

    goto/16 :goto_0

    :cond_7
    iget-boolean v5, p1, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mIsTextFieldNext:Z

    if-nez v5, :cond_8

    iget-boolean v5, p1, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mIsSelectFieldNext:Z

    if-eqz v5, :cond_9

    :cond_8
    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    const-string v6, "com.sec.android.inputmethod.axt9.MoveFocusNext"

    # setter for: Landroid/webkitsec/WebViewClassic;->mPrivateImeOptions:Ljava/lang/String;
    invoke-static {v5, v6}, Landroid/webkitsec/WebViewClassic;->access$1002(Landroid/webkitsec/WebViewClassic;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_9
    iget-boolean v5, p1, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mIsTextFieldPrev:Z

    if-nez v5, :cond_a

    iget-boolean v5, p1, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mIsSelectFieldPrev:Z

    if-eqz v5, :cond_b

    :cond_a
    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    const-string v6, "com.sec.android.inputmethod.axt9.MoveFocusPrev"

    # setter for: Landroid/webkitsec/WebViewClassic;->mPrivateImeOptions:Ljava/lang/String;
    invoke-static {v5, v6}, Landroid/webkitsec/WebViewClassic;->access$1002(Landroid/webkitsec/WebViewClassic;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    const/4 v6, 0x0

    # setter for: Landroid/webkitsec/WebViewClassic;->mPrivateImeOptions:Ljava/lang/String;
    invoke-static {v5, v6}, Landroid/webkitsec/WebViewClassic;->access$1002(Landroid/webkitsec/WebViewClassic;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_c
    iput-boolean v7, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsSameInputType:Z

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public isPasswordField()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsPasswordField:Z

    return v0
.end method

.method public isTextArea()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsTextArea:Z

    return v0
.end method

.method public moveCursorToEnd()V
    .locals 3

    new-instance v0, Landroid/webkitsec/WebViewClassic$CmdVal;

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-direct {v0, v1}, Landroid/webkitsec/WebViewClassic$CmdVal;-><init>(Landroid/webkitsec/WebViewClassic;)V

    const-string v1, "MoveToEndOfLine"

    iput-object v1, v0, Landroid/webkitsec/WebViewClassic$CmdVal;->command:Ljava/lang/String;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, v0, Landroid/webkitsec/WebViewClassic$CmdVal;->value:Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;
    invoke-static {v1}, Landroid/webkitsec/WebViewClassic;->access$900(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore;

    move-result-object v1

    const/16 v2, 0x203

    invoke-virtual {v1, v2, v0}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public performContextMenuAction(I)Z
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performContextMenuAction id ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    return v3

    :pswitch_0
    const-string/jumbo v0, "webview"

    const-string/jumbo v1, "performContextMenuAction : ID_SELECT_ALL"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->selectAllSec()Z

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "webview"

    const-string/jumbo v1, "performContextMenuAction : ID_CUT"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->cutSelectionSec()V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "webview"

    const-string/jumbo v1, "performContextMenuAction : ID_COPY"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->copySelectionSec(Z)Z
    invoke-static {v0, v3}, Landroid/webkitsec/WebViewClassic;->access$600(Landroid/webkitsec/WebViewClassic;Z)Z

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->clearSelection()V

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "webview"

    const-string/jumbo v1, "performContextMenuAction : ID_PASTE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->pasteFromClipboardEx()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102001f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public performEditorAction(I)Z
    .locals 7

    const/16 v6, 0x42

    const/4 v5, 0x1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->performEditorAction(I)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static {v2}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static {v2}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->hideSoftKeyboard()V
    invoke-static {v2}, Landroid/webkitsec/WebViewClassic;->access$800(Landroid/webkitsec/WebViewClassic;)V

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->hideSoftKeyboard()V
    invoke-static {v2}, Landroid/webkitsec/WebViewClassic;->access$800(Landroid/webkitsec/WebViewClassic;)V

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    new-instance v3, Landroid/view/KeyEvent;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v6}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/webkitsec/WebViewClassic;->passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    new-instance v3, Landroid/view/KeyEvent;

    invoke-direct {v3, v5, v6}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/webkitsec/WebViewClassic;->passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2

    const-string v0, "com.sec.android.inputmethod.axt9.MoveFocusPrev"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$900(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x259

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->moveCursorToEnd()V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const-string v0, "com.sec.android.inputmethod.axt9.MoveFocusNext"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$900(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->moveCursorToEnd()V

    goto :goto_0
.end method

.method public replaceSelection(Ljava/lang/CharSequence;)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    sub-int v4, v2, v3

    invoke-direct {p0, p1, v4}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->limitReplaceTextByMaxLength(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, v3, v2, p1}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setNewText(IILjava/lang/CharSequence;)V

    invoke-interface {v0, v3, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsReplacingText:Z

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->restartInput()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int v1, v3, v4

    invoke-virtual {p0, v1, v1}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    return-void
.end method

.method public replaceText(Ljava/lang/CharSequence;)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    sub-int v4, v2, v3

    invoke-direct {p0, p1, v4}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->limitReplaceTextByMaxLength(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, v3, v2, p1}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setNewText(IILjava/lang/CharSequence;)V

    invoke-interface {v0, v3, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->restartInput()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int v1, v3, v4

    invoke-virtual {p0, v1, v1}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    invoke-virtual {p0}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->moveCursorToEnd()V

    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 11

    const/16 v10, 0x70

    const/16 v9, 0x43

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    iget-boolean v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsKeySentByMe:Z

    if-nez v5, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x15

    if-eq v5, v6, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x16

    if-eq v5, v6, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x13

    if-eq v5, v6, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x14

    if-ne v5, v6, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {v5, v6, p1}, Landroid/webkitsec/WebViewClassic;->onKeyDown(ILandroid/view/KeyEvent;)Z

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    if-ne v5, v9, :cond_6

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mBTWebSelectionOn:Z
    invoke-static {v5}, Landroid/webkitsec/WebViewClassic;->access$400(Landroid/webkitsec/WebViewClassic;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # setter for: Landroid/webkitsec/WebViewClassic;->mBTWebSelectionOn:Z
    invoke-static {v4, v7}, Landroid/webkitsec/WebViewClassic;->access$402(Landroid/webkitsec/WebViewClassic;Z)Z

    :cond_2
    :goto_1
    iget-object v4, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static {v4}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static {v4}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x4

    invoke-static {p1, v4}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    :cond_3
    :goto_2
    return v4

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_1

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {v5, v6, p1}, Landroid/webkitsec/WebViewClassic;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v4, v7}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->deleteSurroundingText(II)Z

    move-result v4

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    if-ne v5, v10, :cond_7

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mBTWebSelectionOn:Z
    invoke-static {v4}, Landroid/webkitsec/WebViewClassic;->access$400(Landroid/webkitsec/WebViewClassic;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # setter for: Landroid/webkitsec/WebViewClassic;->mBTWebSelectionOn:Z
    invoke-static {v4, v7}, Landroid/webkitsec/WebViewClassic;->access$402(Landroid/webkitsec/WebViewClassic;Z)Z

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v5

    int-to-char v5, v5

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v4

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    if-eq v5, v9, :cond_9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v5

    if-eqz v5, :cond_c

    :cond_9
    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebSelectionOn:Z
    invoke-static {v5}, Landroid/webkitsec/WebViewClassic;->access$500(Landroid/webkitsec/WebViewClassic;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mBTWebSelectionOn:Z
    invoke-static {v5}, Landroid/webkitsec/WebViewClassic;->access$400(Landroid/webkitsec/WebViewClassic;)Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_a
    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    const-string v6, "Delete"

    invoke-virtual {v5, v6, v8}, Landroid/webkitsec/WebViewClassic;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_b
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    if-eq v3, v2, :cond_3

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    const-string v6, "Delete"

    invoke-virtual {v5, v6, v8}, Landroid/webkitsec/WebViewClassic;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    :cond_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    if-ne v5, v10, :cond_e

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebSelectionOn:Z
    invoke-static {v5}, Landroid/webkitsec/WebViewClassic;->access$500(Landroid/webkitsec/WebViewClassic;)Z

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mBTWebSelectionOn:Z
    invoke-static {v5}, Landroid/webkitsec/WebViewClassic;->access$400(Landroid/webkitsec/WebViewClassic;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_d
    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    const-string v6, "DeleteForward"

    invoke-virtual {v5, v6, v8}, Landroid/webkitsec/WebViewClassic;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    :cond_e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0xe8

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkitsec/WebViewClassic;->pasteFromClipboardEx()V

    goto/16 :goto_2

    :cond_f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0xe8

    if-ne v4, v5, :cond_10

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->pasteFromClipboardEx()V

    :cond_10
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_2
.end method

.method public setAutoFillable(I)V
    .locals 6

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkitsec/WebSettingsClassic;->getAutoFillEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsAutoFillable:Z

    iget v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mInputType:I

    and-int/lit16 v0, v1, 0xff0

    const/16 v1, 0xe0

    if-eq v0, v1, :cond_1

    iget-boolean v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsAutoFillable:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsAutoCompleteEnabled:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mName:Ljava/lang/String;

    const-string/jumbo v2, "password"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mName:Ljava/lang/String;

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mFieldPointer:I
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$100(Landroid/webkitsec/WebViewClassic;)I

    move-result v3

    iget-boolean v4, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsAutoFillable:Z

    iget-boolean v5, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsAutoCompleteEnabled:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/webkitsec/WebViewClassic;->requestFormData(Ljava/lang/String;IZZ)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setComposingRegion(II)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingRegion(II)Z

    move-result v0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->updateSelection()V

    return v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 8

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    invoke-static {v0}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    if-ltz v4, :cond_0

    if-gez v1, :cond_1

    :cond_0
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    :cond_1
    if-ge v1, v4, :cond_2

    move v5, v1

    move v1, v4

    move v4, v5

    :cond_2
    sub-int v6, v1, v4

    invoke-direct {p0, p1, v6}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->limitReplaceTextByMaxLength(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v4, v1, v3}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setNewText(IILjava/lang/CharSequence;)V

    if-eq v3, p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr p2, v6

    :cond_3
    invoke-super {p0, v3, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->updateSelection()V

    if-eq v3, p1, :cond_4

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int v2, v4, v6

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    invoke-virtual {p0, v2, v2}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    :cond_4
    const/4 v6, 0x1

    return v6
.end method

.method public setIfTextArea(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsTextArea:Z

    return-void
.end method

.method public setIsPasswordField(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsPasswordField:Z

    return-void
.end method

.method public setSelection(II)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setSelection(II)Z

    move-result v0

    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->updateSelection()V

    return v0
.end method

.method public setTextAndKeepSelection(Ljava/lang/CharSequence;)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-direct {p0, p1, v4}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->limitReplaceTextByMaxLength(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-interface {v1, v4, v5, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-ne v3, v2, :cond_0

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mIsNewInputField:Z
    invoke-static {v4}, Landroid/webkitsec/WebViewClassic;->access$700(Landroid/webkitsec/WebViewClassic;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->restartInput()V

    :cond_1
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v3, v2}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "webview"

    const-string/jumbo v5, "text exceeds the limit"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setTextAndSelectionIfNeeded(Ljava/lang/CharSequence;II)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2, p3}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-direct {p0, p1, v1}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->limitReplaceTextByMaxLength(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-virtual {p0, p2, p3}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    goto :goto_0
.end method

.method public setupEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 4

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mPrivateImeOptions:Ljava/lang/String;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$1000(Landroid/webkitsec/WebViewClassic;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    iget v3, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mInputType:I

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iget v3, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mImeOptions:I

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mHint:Ljava/lang/String;

    iput-object v3, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/view/inputmethod/BaseInputConnection;->getCursorCapsMode(I)I

    move-result v3

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    if-ltz v2, :cond_0

    if-gez v1, :cond_1

    :cond_0
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    move v1, v2

    :cond_1
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    return-void
.end method
