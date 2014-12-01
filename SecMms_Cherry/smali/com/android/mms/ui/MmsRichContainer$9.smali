.class Lcom/android/mms/ui/MmsRichContainer$9;
.super Ljava/lang/Object;
.source "MmsRichContainer.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsRichContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsRichContainer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsRichContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer$9;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 8

    if-eqz p2, :cond_2

    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer$9;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    # getter for: Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v6}, Lcom/android/mms/ui/MmsRichContainer;->access$000(Lcom/android/mms/ui/MmsRichContainer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->hideKeepToButton()V

    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer$9;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    # getter for: Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v6}, Lcom/android/mms/ui/MmsRichContainer;->access$000(Lcom/android/mms/ui/MmsRichContainer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/data/Contact;

    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v3, :cond_2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v5

    const-string v6, "ContextAwareUniqueID"

    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v6, "COMMAND_CONTEXT_AWARE"

    invoke-virtual {v3, p1, v6, v1}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string v6, "Mms/MmsRichContainer"

    const-string v7, "RuntimeException :"

    invoke-static {v6, v7, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
