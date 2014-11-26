.class Lcom/android/mms/ui/EmoticonContainer$15;
.super Ljava/lang/Object;
.source "EmoticonContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/EmoticonContainer;->asyncSendSticker(Lcom/android/mms/data/Conversation;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/EmoticonContainer;

.field final synthetic val$conv:Lcom/android/mms/data/Conversation;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/EmoticonContainer;Landroid/view/View;Lcom/android/mms/data/Conversation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/EmoticonContainer$15;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    iput-object p2, p0, Lcom/android/mms/ui/EmoticonContainer$15;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/android/mms/ui/EmoticonContainer$15;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$15;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/freemessage/FreeMessageStickerAdapter$StickerHolder;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v6, Lcom/android/mms/freemessage/FreeMessageStickerAdapter$StickerHolder;->stickerId:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v6, Lcom/android/mms/freemessage/FreeMessageStickerAdapter$StickerHolder;->stickerId:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$15;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer;->access$4200(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresFreeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$15;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer;->access$4200(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getFreeMessageState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$15;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer;->access$4200(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->syncWorkingRecipientsForFreeMessageGroupChatFromNewComposer()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$15;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer;->access$1200(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageReservedSettings:Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;->isEnableReservation()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$15;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer;->access$1200(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageReservedSettings:Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;->getReservationTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/mms/ui/SettingsReservationActivity;->checkReservationTime(J)I

    move-result v7

    if-eqz v7, :cond_2

    const v0, 0x7f0c02e8

    if-ne v7, v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$15;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer;->access$800(Lcom/android/mms/ui/EmoticonContainer;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$15;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v8, v3, [Ljava/lang/Object;

    const/4 v9, 0x6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {v1, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$15;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer;->access$1200(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->startMessageReservedSettingActivity(Z)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$15;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer;->access$800(Lcom/android/mms/ui/EmoticonContainer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$15;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer;->access$4200(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$15;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v1}, Lcom/android/mms/ui/EmoticonContainer;->access$1200(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v1

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageReservedSettings:Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;->getDeliveryTime()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/android/mms/data/WorkingMessage;->setReserveDeliveryTime(J)V

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$15;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer;->access$1200(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageReservedSettings:Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;

    invoke-virtual {v0, v10, v11}, Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;->setReservationTime(J)V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$15;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer;->access$4200(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$15;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->SendFreeMessageWorker(Lcom/android/mms/data/Conversation;Ljava/lang/String;ILjava/util/ArrayList;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$15;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer;->access$4200(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$15;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->updateSendStats(Lcom/android/mms/data/Conversation;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$15;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer;->access$1200(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->isEnableDelaySending()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$15;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer;->access$4200(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$15;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v1}, Lcom/android/mms/ui/EmoticonContainer;->access$1200(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getDelayedDeliveryTime()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/android/mms/data/WorkingMessage;->setDelayedDeliveryTime(J)V

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$15;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer;->access$1200(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageReservedSettings:Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;

    invoke-virtual {v0, v10, v11}, Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;->setReservationTime(J)V

    goto :goto_2
.end method
