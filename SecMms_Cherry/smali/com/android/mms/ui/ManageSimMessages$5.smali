.class Lcom/android/mms/ui/ManageSimMessages$5;
.super Landroid/os/Handler;
.source "ManageSimMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ManageSimMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    const v10, 0x7f0d0006

    const v9, 0x7f0d0005

    const v8, 0x7f0c041c

    const v6, 0x7f0c041b

    const/4 v7, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const-string v3, "Mms/ManageSimMessages"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "COMPLETE_COPY_TO_PHONE_MEMORY copiedCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDuosCdmaGsm()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x0

    # getter for: Lcom/android/mms/ui/ManageSimMessages;->isTabMenu:Z
    invoke-static {}, Lcom/android/mms/ui/ManageSimMessages;->access$2000()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    # getter for: Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;
    invoke-static {v3}, Lcom/android/mms/ui/ManageSimMessages;->access$000(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/TabHost;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    # getter for: Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;
    invoke-static {v3}, Lcom/android/mms/ui/ManageSimMessages;->access$000(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/TabHost;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SIM2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    # getter for: Lcom/android/mms/ui/ManageSimMessages;->isSim2Active:Z
    invoke-static {}, Lcom/android/mms/ui/ManageSimMessages;->access$2100()Z

    move-result v3

    if-eqz v3, :cond_3

    # getter for: Lcom/android/mms/ui/ManageSimMessages;->isSim1Active:Z
    invoke-static {}, Lcom/android/mms/ui/ManageSimMessages;->access$2200()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    if-lez v0, :cond_4

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SIM"

    iget-object v6, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    # getter for: Lcom/android/mms/ui/ManageSimMessages;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/ui/ManageSimMessages;->access$2300(Lcom/android/mms/ui/ManageSimMessages;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/android/mms/ui/MessageUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v3}, Lcom/android/mms/ui/ManageSimMessages;->hideProgressDialog()V

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    # getter for: Lcom/android/mms/ui/ManageSimMessages;->mSimMultiActionMode:Landroid/view/ActionMode;
    invoke-static {v3}, Lcom/android/mms/ui/ManageSimMessages;->access$200(Lcom/android/mms/ui/ManageSimMessages;)Landroid/view/ActionMode;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    # getter for: Lcom/android/mms/ui/ManageSimMessages;->mSimMultiActionMode:Landroid/view/ActionMode;
    invoke-static {v3}, Lcom/android/mms/ui/ManageSimMessages;->access$200(Lcom/android/mms/ui/ManageSimMessages;)Landroid/view/ActionMode;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SIM"

    iget-object v6, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    # getter for: Lcom/android/mms/ui/ManageSimMessages;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/ui/ManageSimMessages;->access$2300(Lcom/android/mms/ui/ManageSimMessages;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/android/mms/ui/MessageUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_5
    if-lez v0, :cond_6

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v3, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    const-string v3, "Mms/ManageSimMessages"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "COMPLETE_DELETE_FROM_SIM deletedCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDuosCdmaGsm()Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v2, 0x0

    # getter for: Lcom/android/mms/ui/ManageSimMessages;->isTabMenu:Z
    invoke-static {}, Lcom/android/mms/ui/ManageSimMessages;->access$2000()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    # getter for: Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;
    invoke-static {v3}, Lcom/android/mms/ui/ManageSimMessages;->access$000(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/TabHost;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    # getter for: Lcom/android/mms/ui/ManageSimMessages;->mTabs:Landroid/widget/TabHost;
    invoke-static {v3}, Lcom/android/mms/ui/ManageSimMessages;->access$000(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/TabHost;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SIM2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    # getter for: Lcom/android/mms/ui/ManageSimMessages;->isSim2Active:Z
    invoke-static {}, Lcom/android/mms/ui/ManageSimMessages;->access$2100()Z

    move-result v3

    if-eqz v3, :cond_9

    # getter for: Lcom/android/mms/ui/ManageSimMessages;->isSim1Active:Z
    invoke-static {}, Lcom/android/mms/ui/ManageSimMessages;->access$2200()Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    const/4 v2, 0x1

    :cond_9
    if-lez v1, :cond_a

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SIM"

    iget-object v6, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    # getter for: Lcom/android/mms/ui/ManageSimMessages;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/ui/ManageSimMessages;->access$2300(Lcom/android/mms/ui/ManageSimMessages;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/android/mms/ui/MessageUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    # invokes: Lcom/android/mms/ui/ManageSimMessages;->cancelSimFullNotification()V
    invoke-static {v3}, Lcom/android/mms/ui/ManageSimMessages;->access$2400(Lcom/android/mms/ui/ManageSimMessages;)V

    :goto_2
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v3}, Lcom/android/mms/ui/ManageSimMessages;->hideProgressDialog()V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/mms/ui/ManageSimMessages$5$1;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/ManageSimMessages$5$1;-><init>(Lcom/android/mms/ui/ManageSimMessages$5;)V

    const-wide/16 v5, 0x32

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_a
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SIM"

    iget-object v6, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    # getter for: Lcom/android/mms/ui/ManageSimMessages;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/ui/ManageSimMessages;->access$2300(Lcom/android/mms/ui/ManageSimMessages;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/android/mms/ui/MessageUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_b
    if-lez v1, :cond_c

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    # invokes: Lcom/android/mms/ui/ManageSimMessages;->cancelSimFullNotification()V
    invoke-static {v3}, Lcom/android/mms/ui/ManageSimMessages;->access$2400(Lcom/android/mms/ui/ManageSimMessages;)V

    goto :goto_2

    :cond_c
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v3, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
