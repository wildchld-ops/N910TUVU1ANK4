.class Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;
.super Ljava/lang/Object;
.source "AbsHorizontalListView.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputConnectionWrapper"
.end annotation


# instance fields
.field private final mOutAttrs:Landroid/view/inputmethod/EditorInfo;

.field private mTarget:Landroid/view/inputmethod/InputConnection;

.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;


# direct methods
.method public constructor <init>(Landroid/widget/AbsHorizontalListView;Landroid/view/inputmethod/EditorInfo;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;->mOutAttrs:Landroid/view/inputmethod/EditorInfo;

    return-void
.end method

.method private getTarget()Landroid/view/inputmethod/InputConnection;
    .locals 2

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;->this$0:Landroid/widget/AbsHorizontalListView;

    # invokes: Landroid/widget/AbsHorizontalListView;->getTextFilterInput()Landroid/widget/EditText;
    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->access$4600(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;->mOutAttrs:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    move-result v0

    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    move-result v0

    return v0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    move-result v0

    return v0
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    move-result v0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    move-result v0

    return v0
.end method

.method public endBatchEdit()Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    move-result v0

    return v0
.end method

.method public finishComposingText()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCursorCapsMode(I)I
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_0

    const/16 v0, 0x4000

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v0

    goto :goto_0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 1

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public performContextMenuAction(I)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    move-result v0

    return v0
.end method

.method public performEditorAction(I)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;
    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->access$4700(Landroid/widget/AbsHorizontalListView;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    move-result v0

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;
    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->access$4700(Landroid/widget/AbsHorizontalListView;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setComposingRegion(II)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    move-result v0

    return v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public setSelection(II)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView$InputConnectionWrapper;->getTarget()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    move-result v0

    return v0
.end method
