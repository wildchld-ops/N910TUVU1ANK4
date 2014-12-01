.class Lcom/android/mms/ui/ConversationListFragment$27;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment;->initEmptyView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$27;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 9

    const v8, 0x7f0c014d

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    const-string v6, "DragDrop"

    const-string v7, "Unknown action type received by OnDragListener."

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v5

    :pswitch_0
    const/4 v5, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v7}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "text/html"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "text/plain"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$27;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v6

    invoke-static {v6, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isSupportedUri(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListFragment$27;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v6

    invoke-static {v6, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    invoke-static {v6, v2, v3}, Lcom/android/mms/ui/MessageUtils;->openComposerWithDropObject(Landroid/net/Uri;Landroid/content/ClipData;Landroid/content/ClipDescription;)V

    const/4 v5, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v5, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
