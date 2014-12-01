.class public Landroid/webkitsec/SelectActionModeCallbackSec;
.super Ljava/lang/Object;
.source "SelectActionModeCallbackSec.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# static fields
.field public static final ACTION_SEC_TRANSLATE:Ljava/lang/String; = "com.sec.android.app.translator.TRANSLATE"

.field public static final ACTION_SEC_TRANSLATE_GET_SUPPORTED_LANGUAGES:Ljava/lang/String; = "com.sec.android.app.translator.GET_SUPPORTED_LANGUAGES"

.field public static final ACTION_SEC_TRANSLATE_NON_ACTIVITY:Ljava/lang/String; = "com.sec.android.app.translator.TRANSLATE_FOR_NON_ACTIVITY"

.field public static final ACTION_SEC_TRANSLATE_RESULT:Ljava/lang/String; = "com.sec.android.app.translator.TRANSLATE_RESULT"

.field public static final EXTRA_NAME_CALLER:Ljava/lang/String; = "caller"

.field public static final EXTRA_NAME_HTML_SOURCE_TEXT:Ljava/lang/String; = "html_source_text"

.field public static final EXTRA_NAME_MODE:Ljava/lang/String; = "mode"

.field public static final EXTRA_NAME_RESULT_CODE:Ljava/lang/String; = "result_code"

.field public static final EXTRA_NAME_SOURCE_LANGUAGE:Ljava/lang/String; = "source_language"

.field public static final EXTRA_NAME_SOURCE_TEXT:Ljava/lang/String; = "source_text"

.field public static final EXTRA_NAME_SUPPORTED_LANGUAGES:Ljava/lang/String; = "supported_languages"

.field public static final EXTRA_NAME_TARGET_LANGUAGE:Ljava/lang/String; = "target_language"

.field public static final EXTRA_NAME_TARGET_TEXT:Ljava/lang/String; = "target_text"

.field public static final EXTRA_NAME_USE_BROADCAST_RECEIVER:Ljava/lang/String; = "use_broadcast_receiver"

.field public static final EXTRA_VALUE_INPUT_MODE:Ljava/lang/String; = "input"

.field public static final EXTRA_VALUE_RESULT_CANCEL:I = 0x0

.field public static final EXTRA_VALUE_RESULT_OK:I = 0x1

.field public static final EXTRA_VALUE_VIEWER_MODE:Ljava/lang/String; = "viewer"

.field private static final GET_SUPPORTED_LANGUAGES:I = 0xc8

.field public static final LANGUAGE_CODE_CHINESE:Ljava/lang/String; = "ch"

.field public static final LANGUAGE_CODE_ENGLISH:Ljava/lang/String; = "en"

.field public static final LANGUAGE_CODE_JAPANESE:Ljava/lang/String; = "ja"

.field public static final LANGUAGE_CODE_KOREAN:Ljava/lang/String; = "ko"

.field private static final LOGTAG:Ljava/lang/String; = "SelectActionModeCallbackSec"

.field private static final TRANSLATE_REQUEST:I = 0xc9


# instance fields
.field private isSelectTypePassword:Z

.field private mActionMode:Landroid/view/ActionMode;

.field public mIsEditable:Z

.field private mRecreate:Z

.field private mWebView:Landroid/webkitsec/WebViewClassic;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->isSelectTypePassword:Z

    return-void
.end method

.method private setMenuVisibility(Landroid/view/Menu;ZI)V
    .locals 1

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

    iget-object v0, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    :cond_0
    return-void
.end method

.method finish(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mRecreate:Z

    invoke-virtual {p0}, Landroid/webkitsec/SelectActionModeCallbackSec;->finish()V

    return-void
.end method

.method getSelectTypePassword()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->isSelectTypePassword:Z

    return v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 13

    const/high16 v12, 0x10000000

    const/16 v11, 0x7530

    const/16 v10, 0x7d0

    const/4 v8, 0x0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :goto_0
    return v8

    :sswitch_0
    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->cutSelectionSec()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :goto_1
    const/4 v8, 0x1

    goto :goto_0

    :sswitch_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/lang/String;

    const-string v9, "com.sec.android.app.translator"

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->copySelectionSecUseDefaultClipboard()Z

    :goto_2
    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->clearSelection()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    :cond_0
    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->copySelectionSec()Z

    goto :goto_2

    :sswitch_2
    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->pasteFromClipboard()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    :sswitch_3
    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    const-string v8, "SelectActionModeCallbackSec"

    const-string/jumbo v9, "mWebView.getSelectionSec() is null."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    new-instance v6, Ljava/lang/StringBuffer;

    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-le v8, v11, :cond_2

    const-string v8, "SelectActionModeCallbackSec"

    const-string/jumbo v9, "onActionItemClicked: selected string is too long. Cut it"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_2
    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->clearSelection()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    :sswitch_4
    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->selectAllSec()Z

    goto/16 :goto_1

    :sswitch_5
    iget-object v9, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkitsec/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v5

    iget-object v9, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkitsec/WebViewClassic;->clearSelection()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    iget-object v9, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v9, v5, v8}, Landroid/webkitsec/WebViewClassic;->showFindDialog(Ljava/lang/String;Z)Z

    goto/16 :goto_1

    :sswitch_6
    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    const-string v8, "SelectActionModeCallbackSec"

    const-string/jumbo v9, "mWebView.getSelectionSec() is null."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_3
    new-instance v7, Ljava/lang/StringBuffer;

    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-le v8, v10, :cond_4

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.WEB_SEARCH"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "query"

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->clearSelection()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v8

    instance-of v8, v8, Landroid/app/Activity;

    if-nez v8, :cond_5

    invoke-virtual {v1, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_5
    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :sswitch_7
    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->pasteFromClipboardEx()V

    goto/16 :goto_1

    :sswitch_8
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v8, "com.sec.android.app.translator.TRANSLATE_FOR_NON_ACTIVITY"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v8, 0x10000000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v8, "mode"

    const-string/jumbo v9, "viewer"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "source_text"

    iget-object v9, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkitsec/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->clearSelection()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1020020 -> :sswitch_0
        0x1020021 -> :sswitch_1
        0x1020022 -> :sswitch_2
        0x10202c4 -> :sswitch_7
        0x10202c6 -> :sswitch_3
        0x102049d -> :sswitch_4
        0x102049e -> :sswitch_5
        0x102049f -> :sswitch_6
        0x10204a0 -> :sswitch_8
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 13

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v11

    const v12, 0x1140009

    invoke-virtual {v11, v12, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v11, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v11, "clipboard"

    invoke-virtual {v6, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ClipboardManager;

    move-object v4, v11

    check-cast v4, Landroid/content/ClipboardManager;

    invoke-virtual {p1}, Landroid/view/ActionMode;->isUiFocusable()Z

    move-result v7

    iget-boolean v11, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mRecreate:Z

    if-nez v11, :cond_0

    iget-object v11, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkitsec/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v11

    iput-boolean v11, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mIsEditable:Z

    :cond_0
    const/4 v8, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    iget-object v11, v11, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    if-eqz v11, :cond_1

    iget-object v11, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    iget-object v11, v11, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v11}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->getInputType()I

    move-result v11

    and-int/lit16 v10, v11, 0xff0

    const/16 v11, 0xe0

    if-ne v10, v11, :cond_1

    const/4 v8, 0x1

    :cond_1
    iput-boolean v8, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->isSelectTypePassword:Z

    iget-boolean v11, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mIsEditable:Z

    if-eqz v11, :cond_4

    invoke-virtual {v4}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v3, 0x1

    :goto_0
    iget-boolean v11, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mIsEditable:Z

    if-nez v11, :cond_5

    if-eqz v7, :cond_5

    const/4 v2, 0x1

    :goto_1
    iget-boolean v11, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mIsEditable:Z

    if-eqz v11, :cond_6

    if-nez v8, :cond_6

    const/4 v1, 0x1

    :goto_2
    iget-object v11, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkitsec/WebSettingsClassic;->isBrowserApp()Z

    move-result v11

    if-eqz v11, :cond_2

    and-int/2addr v3, v7

    and-int/2addr v2, v7

    and-int/2addr v1, v7

    :cond_2
    iget-object v11, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkitsec/WebSettingsClassic;->getNewActionPopup()Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x0

    const v12, 0x102049e

    invoke-direct {p0, p2, v11, v12}, Landroid/webkitsec/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    const/4 v11, 0x0

    const v12, 0x1020022

    invoke-direct {p0, p2, v11, v12}, Landroid/webkitsec/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    const/4 v11, 0x0

    const v12, 0x1020020

    invoke-direct {p0, p2, v11, v12}, Landroid/webkitsec/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    const/4 v11, 0x0

    const v12, 0x1020021

    invoke-direct {p0, p2, v11, v12}, Landroid/webkitsec/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    const/4 v11, 0x0

    const v12, 0x10202c6

    invoke-direct {p0, p2, v11, v12}, Landroid/webkitsec/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    const/4 v11, 0x0

    const v12, 0x102049f

    invoke-direct {p0, p2, v11, v12}, Landroid/webkitsec/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    const/4 v11, 0x0

    const v12, 0x10202c4

    invoke-direct {p0, p2, v11, v12}, Landroid/webkitsec/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    const/4 v11, 0x0

    const v12, 0x10204a0

    invoke-direct {p0, p2, v11, v12}, Landroid/webkitsec/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    const/4 v11, 0x0

    const v12, 0x102049d

    invoke-direct {p0, p2, v11, v12}, Landroid/webkitsec/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    :cond_3
    :goto_3
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mRecreate:Z

    iput-object p1, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    const/4 v11, 0x1

    return v11

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    const v11, 0x102049e

    invoke-direct {p0, p2, v2, v11}, Landroid/webkitsec/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    const v11, 0x1020022

    invoke-direct {p0, p2, v3, v11}, Landroid/webkitsec/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    const v11, 0x1020020

    invoke-direct {p0, p2, v1, v11}, Landroid/webkitsec/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    iget-boolean v11, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mIsEditable:Z

    if-eqz v11, :cond_8

    const v11, 0x1020021

    invoke-direct {p0, p2, v1, v11}, Landroid/webkitsec/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    const v11, 0x10202c6

    invoke-direct {p0, p2, v1, v11}, Landroid/webkitsec/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    const v11, 0x102049f

    invoke-direct {p0, p2, v1, v11}, Landroid/webkitsec/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    :cond_8
    iget-boolean v11, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mIsEditable:Z

    const v12, 0x10202c4

    invoke-direct {p0, p2, v11, v12}, Landroid/webkitsec/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.sec.android.app.translator.TRANSLATE"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_9

    const/4 v11, 0x0

    const v12, 0x10204a0

    invoke-direct {p0, p2, v11, v12}, Landroid/webkitsec/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    :goto_4
    iput-object p1, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    iget-object v11, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v11, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v11, v11, 0x4

    const/4 v12, 0x4

    if-eq v11, v12, :cond_3

    const/4 v11, 0x0

    invoke-interface {p2, v11}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x6

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v11, 0x1

    invoke-interface {p2, v11}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x5

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v11, 0x2

    invoke-interface {p2, v11}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x5

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v11, 0x3

    invoke-interface {p2, v11}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x5

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v11, 0x4

    invoke-interface {p2, v11}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x5

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v11, 0x5

    invoke-interface {p2, v11}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x5

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v11, 0x6

    invoke-interface {p2, v11}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x5

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_3

    :cond_9
    const/4 v11, 0x1

    const v12, 0x10204a0

    invoke-direct {p0, p2, v11, v12}, Landroid/webkitsec/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    goto :goto_4
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    iget-boolean v0, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mRecreate:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->clearSelection()V

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->isSelectionResetCalled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->performSelectionDoneAction()V

    :cond_1
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onSetWebView()V
    .locals 0

    return-void
.end method

.method setWebViewClassic(Landroid/webkitsec/WebViewClassic;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/SelectActionModeCallbackSec;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {p0}, Landroid/webkitsec/SelectActionModeCallbackSec;->onSetWebView()V

    return-void
.end method
