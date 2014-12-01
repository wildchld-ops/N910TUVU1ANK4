.class Lcom/android/mms/ui/BoxListFrame$12;
.super Ljava/lang/Object;
.source "BoxListFrame.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BoxListFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BoxListFrame;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$12;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 12

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_0

    packed-switch p2, :pswitch_data_0

    :cond_0
    move v7, v8

    :cond_1
    :goto_0
    return v7

    :pswitch_0
    iget-object v9, p0, Lcom/android/mms/ui/BoxListFrame$12;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v9}, Lcom/android/mms/ui/BoxListFrame;->access$2500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/ui/MsgSweepActionListView;->getSelectedItemPosition()I

    move-result v6

    if-ltz v6, :cond_0

    iget-object v9, p0, Lcom/android/mms/ui/BoxListFrame$12;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v9}, Lcom/android/mms/ui/BoxListFrame;->access$2500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-nez v0, :cond_2

    # getter for: Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->access$500()Ljava/lang/String;

    move-result-object v8

    const-string v9, "list item is null"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v9, 0xc

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-eqz v9, :cond_3

    move v1, v7

    :goto_1
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$12;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iget v8, v8, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_4

    sget-object v8, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    :goto_2
    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$12;->this$0:Lcom/android/mms/ui/BoxListFrame;

    new-instance v9, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    iget-object v10, p0, Lcom/android/mms/ui/BoxListFrame$12;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-direct {v9, v10, v5, v1}, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;-><init>(Lcom/android/mms/ui/BoxListFrame;Landroid/net/Uri;Z)V

    # invokes: Lcom/android/mms/ui/BoxListFrame;->confirmDeleteDialog(Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;Z)V
    invoke-static {v8, v9, v1}, Lcom/android/mms/ui/BoxListFrame;->access$2600(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;Z)V

    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$12;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iget v8, v8, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_7

    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$12;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;
    invoke-static {v8}, Lcom/android/mms/ui/BoxListFrame;->access$2400(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter$MessageData;

    move-result-object v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$12;->this$0:Lcom/android/mms/ui/BoxListFrame;

    new-instance v9, Lcom/android/mms/ui/BoxListAdapter$MessageData;

    invoke-direct {v9, v2, v3, v4}, Lcom/android/mms/ui/BoxListAdapter$MessageData;-><init>(JLjava/lang/String;)V

    # setter for: Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;
    invoke-static {v8, v9}, Lcom/android/mms/ui/BoxListFrame;->access$2402(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/BoxListAdapter$MessageData;)Lcom/android/mms/ui/BoxListAdapter$MessageData;

    goto :goto_0

    :cond_3
    move v1, v8

    goto :goto_1

    :cond_4
    const-string v8, "mms"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    sget-object v8, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    goto :goto_2

    :cond_5
    sget-object v8, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    goto :goto_2

    :cond_6
    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$12;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;
    invoke-static {v8}, Lcom/android/mms/ui/BoxListFrame;->access$2400(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter$MessageData;

    move-result-object v8

    invoke-virtual {v8, v2, v3, v4}, Lcom/android/mms/ui/BoxListAdapter$MessageData;->setData(JLjava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$12;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;
    invoke-static {v8}, Lcom/android/mms/ui/BoxListFrame;->access$2400(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter$MessageData;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$12;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;
    invoke-static {v8}, Lcom/android/mms/ui/BoxListFrame;->access$2400(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter$MessageData;

    move-result-object v8

    const-wide/16 v9, 0x0

    const-string v11, ""

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/mms/ui/BoxListAdapter$MessageData;->setData(JLjava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method
