.class Lcom/android/mms/ui/ManageSimMessages$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ManageSimMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ManageSimMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/content/ContentResolver;Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .param p2    # Landroid/content/ContentResolver;
    .param p3    # Lcom/android/mms/ui/ManageSimMessages;

    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .param p1    # I
    .param p2    # Ljava/lang/Object;
    .param p3    # Landroid/database/Cursor;

    const/4 v1, 0x0

    const-string v2, "Mms/ManageSimMessages"

    const-string v3, "onQueryComplete"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v2}, Lcom/android/mms/ui/ManageSimMessages;->hideProgressDialog()V

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    # getter for: Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSimMessages;->access$1000(Lcom/android/mms/ui/ManageSimMessages;)Lcom/android/mms/ui/SimMessageListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    # getter for: Lcom/android/mms/ui/ManageSimMessages;->mIsLandscape:Z
    invoke-static {v3}, Lcom/android/mms/ui/ManageSimMessages;->access$1100(Lcom/android/mms/ui/ManageSimMessages;)Z

    move-result v3

    # invokes: Lcom/android/mms/ui/ManageSimMessages;->setEmptyBgImage(Z)V
    invoke-static {v2, v3}, Lcom/android/mms/ui/ManageSimMessages;->access$1200(Lcom/android/mms/ui/ManageSimMessages;Z)V

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSIMMessageCountUI()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    # getter for: Lcom/android/mms/ui/ManageSimMessages;->mSIMCount:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/mms/ui/ManageSimMessages;->access$1300(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    # getter for: Lcom/android/mms/ui/ManageSimMessages;->mSIMCount:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSimMessages;->access$1300(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    const/16 v3, 0x61a8

    if-ne p1, v3, :cond_4

    :goto_1
    # invokes: Lcom/android/mms/ui/ManageSimMessages;->setSIMMessageCountUI(Landroid/database/Cursor;I)V
    invoke-static {v2, p3, v1}, Lcom/android/mms/ui/ManageSimMessages;->access$1400(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;I)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_1
.end method
