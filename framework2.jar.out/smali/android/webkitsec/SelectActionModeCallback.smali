.class Landroid/webkitsec/SelectActionModeCallback;
.super Ljava/lang/Object;
.source "SelectActionModeCallback.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mIsTextSelected:Z

.field private mWebView:Landroid/webkitsec/WebViewClassic;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/SelectActionModeCallback;->mIsTextSelected:Z

    return-void
.end method

.method private setMenuVisibility(Landroid/view/Menu;ZI)V
    .locals 1
    .param p1    # Landroid/view/Menu;
    .param p2    # Z
    .param p3    # I

    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method


# virtual methods
.method finish()V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/SelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/SelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 11
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/MenuItem;

    const/16 v10, 0x3e8

    const/16 v9, 0x32

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :goto_0
    return v6

    :sswitch_0
    iget-object v6, p0, Landroid/webkitsec/SelectActionModeCallback;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkitsec/WebViewClassic;->cutSelection()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :cond_0
    :goto_1
    move v6, v7

    goto :goto_0

    :sswitch_1
    iget-object v6, p0, Landroid/webkitsec/SelectActionModeCallback;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkitsec/WebViewClassic;->copySelection()Z

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    :sswitch_2
    iget-object v6, p0, Landroid/webkitsec/SelectActionModeCallback;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkitsec/WebViewClassic;->pasteFromClipboard()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    :sswitch_3
    iget-object v6, p0, Landroid/webkitsec/SelectActionModeCallback;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkitsec/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Landroid/webkitsec/SelectActionModeCallback;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    :sswitch_4
    iget-object v6, p0, Landroid/webkitsec/SelectActionModeCallback;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkitsec/WebViewClassic;->selectAll()V

    goto :goto_1

    :sswitch_5
    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallback;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-le v8, v9, :cond_1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_1
    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallback;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Landroid/webkitsec/WebViewClassic;->showFindDialog(Ljava/lang/String;Z)Z

    goto :goto_1

    :sswitch_6
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/webkitsec/SelectActionModeCallback;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkitsec/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-le v6, v10, :cond_2

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_2
    const-string/jumbo v6, "query"

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "new_search"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v6, p0, Landroid/webkitsec/SelectActionModeCallback;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v6

    instance-of v6, v6, Landroid/app/Activity;

    if-nez v6, :cond_3

    const/high16 v6, 0x10000000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_3
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    iget-object v6, p0, Landroid/webkitsec/SelectActionModeCallback;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1020020 -> :sswitch_0
        0x1020021 -> :sswitch_1
        0x1020022 -> :sswitch_2
        0x10202c6 -> :sswitch_3
        0x102049d -> :sswitch_4
        0x102049e -> :sswitch_5
        0x102049f -> :sswitch_6
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 12
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/Menu;

    const/4 v1, 0x0

    const/4 v10, 0x1

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v9

    const v11, 0x1140008

    invoke-virtual {v9, v11, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v9, p0, Landroid/webkitsec/SelectActionModeCallback;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v9, "clipboard"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ClipboardManager;

    move-object v5, v9

    check-cast v5, Landroid/content/ClipboardManager;

    invoke-virtual {p1}, Landroid/view/ActionMode;->isUiFocusable()Z

    move-result v8

    iget-object v9, p0, Landroid/webkitsec/SelectActionModeCallback;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkitsec/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz v8, :cond_1

    move v3, v10

    :goto_0
    if-nez v7, :cond_2

    if-eqz v8, :cond_2

    move v2, v10

    :goto_1
    if-eqz v7, :cond_0

    iget-boolean v9, p0, Landroid/webkitsec/SelectActionModeCallback;->mIsTextSelected:Z

    if-eqz v9, :cond_0

    if-eqz v8, :cond_0

    move v1, v10

    :cond_0
    iget-boolean v0, p0, Landroid/webkitsec/SelectActionModeCallback;->mIsTextSelected:Z

    iget-boolean v4, p0, Landroid/webkitsec/SelectActionModeCallback;->mIsTextSelected:Z

    const v9, 0x102049e

    invoke-direct {p0, p2, v2, v9}, Landroid/webkitsec/SelectActionModeCallback;->setMenuVisibility(Landroid/view/Menu;ZI)V

    const v9, 0x1020022

    invoke-direct {p0, p2, v3, v9}, Landroid/webkitsec/SelectActionModeCallback;->setMenuVisibility(Landroid/view/Menu;ZI)V

    const v9, 0x1020020

    invoke-direct {p0, p2, v1, v9}, Landroid/webkitsec/SelectActionModeCallback;->setMenuVisibility(Landroid/view/Menu;ZI)V

    const v9, 0x1020021

    invoke-direct {p0, p2, v0, v9}, Landroid/webkitsec/SelectActionModeCallback;->setMenuVisibility(Landroid/view/Menu;ZI)V

    const v9, 0x102049f

    invoke-direct {p0, p2, v4, v9}, Landroid/webkitsec/SelectActionModeCallback;->setMenuVisibility(Landroid/view/Menu;ZI)V

    iput-object p1, p0, Landroid/webkitsec/SelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    return v10

    :cond_1
    move v3, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .param p1    # Landroid/view/ActionMode;

    iget-object v0, p0, Landroid/webkitsec/SelectActionModeCallback;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->selectionDone()V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/Menu;

    const/4 v0, 0x1

    return v0
.end method

.method setTextSelected(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Landroid/webkitsec/SelectActionModeCallback;->mIsTextSelected:Z

    return-void
.end method

.method setWebView(Landroid/webkitsec/WebViewClassic;)V
    .locals 0
    .param p1    # Landroid/webkitsec/WebViewClassic;

    iput-object p1, p0, Landroid/webkitsec/SelectActionModeCallback;->mWebView:Landroid/webkitsec/WebViewClassic;

    return-void
.end method
