.class Lcom/android/mms/template/TextTemplateListActivity$2;
.super Ljava/lang/Object;
.source "TextTemplateListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/template/TextTemplateListActivity;->onClickDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/template/TextTemplateListActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/template/TextTemplateListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/template/TextTemplateListActivity$2;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11

    const/4 v10, 0x1

    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity$2;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/mms/template/TextTemplateListActivity;->access$900(Lcom/android/mms/template/TextTemplateListActivity;)Ljava/util/ArrayList;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity$2;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;
    invoke-static {v7}, Lcom/android/mms/template/TextTemplateListActivity;->access$1000(Lcom/android/mms/template/TextTemplateListActivity;)Lcom/android/mms/template/TextTemplateListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity$2;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/mms/template/TextTemplateListActivity;->access$900(Lcom/android/mms/template/TextTemplateListActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity$2;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mTextTemplateProvider:Lcom/android/mms/template/TextTemplateProvider;
    invoke-static {v7}, Lcom/android/mms/template/TextTemplateListActivity;->access$1100(Lcom/android/mms/template/TextTemplateListActivity;)Lcom/android/mms/template/TextTemplateProvider;

    move-result-object v7

    invoke-virtual {v7, v0, v6}, Lcom/android/mms/template/TextTemplateProvider;->deleteTemplate(Landroid/database/Cursor;I)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v7, "Mms/TextTemplateListActivity"

    const-string v8, "IllegalStateException break"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.sec.android.mms.UPDATED_TEMPLATE"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity$2;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity$2;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # invokes: Lcom/android/mms/template/TextTemplateListActivity;->UpdateQuery()V
    invoke-static {v7}, Lcom/android/mms/template/TextTemplateListActivity;->access$000(Lcom/android/mms/template/TextTemplateListActivity;)V

    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity$2;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    const/4 v8, 0x0

    # invokes: Lcom/android/mms/template/TextTemplateListActivity;->setMode(Z)V
    invoke-static {v7, v8}, Lcom/android/mms/template/TextTemplateListActivity;->access$1200(Lcom/android/mms/template/TextTemplateListActivity;Z)V

    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity$2;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # invokes: Lcom/android/mms/template/TextTemplateListActivity;->updateScreen()V
    invoke-static {v7}, Lcom/android/mms/template/TextTemplateListActivity;->access$200(Lcom/android/mms/template/TextTemplateListActivity;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v10, :cond_4

    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity$2;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/template/TextTemplateListActivity$2;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    const v9, 0x7f0c021b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    :goto_2
    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity$2;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mMultiActionMode:Landroid/view/ActionMode;
    invoke-static {v7}, Lcom/android/mms/template/TextTemplateListActivity;->access$300(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/view/ActionMode;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity$2;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    # getter for: Lcom/android/mms/template/TextTemplateListActivity;->mMultiActionMode:Landroid/view/ActionMode;
    invoke-static {v7}, Lcom/android/mms/template/TextTemplateListActivity;->access$300(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/view/ActionMode;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :cond_4
    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity$2;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/template/TextTemplateListActivity$2;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    const v9, 0x7f0c02ad

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method
