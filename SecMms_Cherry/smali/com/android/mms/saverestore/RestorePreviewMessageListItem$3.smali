.class Lcom/android/mms/saverestore/RestorePreviewMessageListItem$3;
.super Ljava/lang/Object;
.source "RestorePreviewMessageListItem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->showLinksContextMenu(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/saverestore/RestorePreviewMessageListItem;

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/saverestore/RestorePreviewMessageListItem;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$3;->this$0:Lcom/android/mms/saverestore/RestorePreviewMessageListItem;

    iput-object p2, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$3;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$3;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$3;->val$url:Ljava/lang/String;

    const-string v3, "mailto:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_0
    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v1, 0x4

    :goto_1
    iget-object v2, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$3;->this$0:Lcom/android/mms/saverestore/RestorePreviewMessageListItem;

    # getter for: Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/saverestore/RestorePreviewMessageListItem;->access$600(Lcom/android/mms/saverestore/RestorePreviewMessageListItem;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$3;->val$url:Ljava/lang/String;

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$3;->val$text:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x7

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$3;->val$text:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0xa

    goto :goto_1

    :cond_1
    const/16 v1, 0x9

    goto :goto_1

    :pswitch_3
    const/16 v1, 0x8

    goto :goto_1

    :cond_2
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x4

    goto :goto_1

    :pswitch_5
    iget-object v2, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$3;->val$text:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v1, 0xa

    goto :goto_1

    :cond_3
    const/16 v1, 0x9

    goto :goto_1

    :pswitch_6
    const/16 v1, 0x8

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$3;->val$url:Ljava/lang/String;

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    packed-switch p2, :pswitch_data_2

    goto :goto_0

    :pswitch_7
    const/16 v1, 0xb

    goto :goto_1

    :pswitch_8
    iget-object v2, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$3;->val$text:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v1, 0xa

    goto :goto_1

    :cond_5
    const/16 v1, 0x9

    goto :goto_1

    :pswitch_9
    const/4 v1, 0x7

    goto :goto_1

    :pswitch_a
    const/16 v1, 0x8

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/mms/saverestore/RestorePreviewMessageListItem$3;->val$url:Ljava/lang/String;

    const-string v3, "rtsp://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    packed-switch p2, :pswitch_data_3

    goto/16 :goto_0

    :pswitch_b
    const/4 v1, 0x4

    goto/16 :goto_1

    :pswitch_c
    const/16 v1, 0x8

    goto/16 :goto_1

    :cond_7
    packed-switch p2, :pswitch_data_4

    goto/16 :goto_0

    :pswitch_d
    const/4 v1, 0x4

    goto/16 :goto_1

    :pswitch_e
    const/4 v1, 0x5

    goto/16 :goto_1

    :pswitch_f
    const/16 v1, 0x8

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
