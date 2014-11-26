.class Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListenerOnFolderView;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DiscardDraftListenerOnFolderView"
.end annotation


# instance fields
.field private mIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListenerOnFolderView;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListenerOnFolderView;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V
    .locals 0
    .param p1    # Lcom/android/mms/ui/ComposeMessageFragment;
    .param p2    # Lcom/android/mms/ui/ComposeMessageFragment$1;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListenerOnFolderView;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "DiscardDraftListenerOnFolderView onClick  "

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListenerOnFolderView;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListenerOnFolderView;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListenerOnFolderView;->mIntent:Landroid/content/Intent;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/mms/ui/ConversationComposer;->checkFolderViewInvoke(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)Z

    :cond_0
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I
    .param p3    # Landroid/view/KeyEvent;

    const/16 v0, 0x52

    if-eq p2, v0, :cond_0

    const/16 v0, 0x54

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIntent(Landroid/content/Intent;)Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListenerOnFolderView;
    .locals 0
    .param p1    # Landroid/content/Intent;

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListenerOnFolderView;->mIntent:Landroid/content/Intent;

    return-object p0
.end method
