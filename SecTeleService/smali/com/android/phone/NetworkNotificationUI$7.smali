.class Lcom/android/phone/NetworkNotificationUI$7;
.super Ljava/lang/Object;
.source "NetworkNotificationUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkNotificationUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkNotificationUI;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f100048

    invoke-direct {v1, v9, v10}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string v9, "layout_inflater"

    invoke-virtual {v1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v9, 0x7f04005b

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    packed-switch p2, :pswitch_data_0

    const-string v9, "NetworkNotificationUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected resource: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    const/4 v10, 0x1

    # setter for: Lcom/android/phone/NetworkNotificationUI;->isRoamingDataset:Z
    invoke-static {v9, v10}, Lcom/android/phone/NetworkNotificationUI;->access$4302(Lcom/android/phone/NetworkNotificationUI;Z)Z

    const-string v9, "LGT"

    const-string v10, "TMO"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mDataRoamingUseSwtich:Landroid/widget/Switch;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$4500(Lcom/android/phone/NetworkNotificationUI;)Landroid/widget/Switch;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Switch;->isChecked()Z

    move-result v7

    const/4 v0, 0x0

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mGlobalRoamoing1_9:Z
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$4600(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mDataRoamingUseSwtich:Landroid/widget/Switch;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$4500(Lcom/android/phone/NetworkNotificationUI;)Landroid/widget/Switch;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    :goto_1
    const-string v9, "NetworkNotificationUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "roaming = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", background = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->setDataRoamingEnabled(Z)V
    invoke-static {v9, v7}, Lcom/android/phone/NetworkNotificationUI;->access$4400(Lcom/android/phone/NetworkNotificationUI;Z)V

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    const/4 v10, 0x1

    # invokes: Lcom/android/phone/NetworkNotificationUI;->sendDataConnectionIntent(ZZ)V
    invoke-static {v9, v7, v10}, Lcom/android/phone/NetworkNotificationUI;->access$500(Lcom/android/phone/NetworkNotificationUI;ZZ)V

    new-instance v4, Landroid/content/Intent;

    const-string v9, "kr.co.uplus.RESTRICT_BACKGROUND"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "ENABLED"

    invoke-virtual {v4, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mGlobalRoamoing1_9:Z
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$4600(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v9

    if-eqz v9, :cond_5

    if-nez v7, :cond_2

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0905b0

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_2
    const/4 v9, 0x1

    invoke-static {v1, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.android.settings.ACTION_DATA_ROAMING_CONFIRM"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mGlobalRoamoing1_9:Z
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$4600(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v9

    if-nez v9, :cond_0

    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.android.settings.ACTION_DATA_ROAMING_POSITIVE"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mBackGroundData:Landroid/view/View;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$4700(Lcom/android/phone/NetworkNotificationUI;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Checkable;

    invoke-interface {v9}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    goto/16 :goto_1

    :cond_2
    const/4 v9, 0x1

    if-ne v7, v9, :cond_3

    const/4 v9, 0x1

    if-ne v0, v9, :cond_3

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0905d8

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_3
    const/4 v9, 0x1

    if-ne v7, v9, :cond_4

    if-nez v0, :cond_4

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0905d9

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_4
    const-string v8, "error"

    goto :goto_2

    :cond_5
    const/4 v9, 0x1

    if-ne v7, v9, :cond_6

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0905b8

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_6
    if-nez v7, :cond_7

    if-nez v0, :cond_7

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0905b9

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    :cond_7
    if-nez v7, :cond_8

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0905b9

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    :cond_8
    const-string v8, "error"

    goto/16 :goto_2

    :cond_9
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    const/4 v10, 0x1

    # invokes: Lcom/android/phone/NetworkNotificationUI;->setDataRoamingEnabled(Z)V
    invoke-static {v9, v10}, Lcom/android/phone/NetworkNotificationUI;->access$4400(Lcom/android/phone/NetworkNotificationUI;Z)V

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    const/4 v10, 0x1

    const/4 v11, 0x1

    # invokes: Lcom/android/phone/NetworkNotificationUI;->sendDataConnectionIntent(ZZ)V
    invoke-static {v9, v10, v11}, Lcom/android/phone/NetworkNotificationUI;->access$500(Lcom/android/phone/NetworkNotificationUI;ZZ)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    const/4 v10, 0x0

    # invokes: Lcom/android/phone/NetworkNotificationUI;->setDataRoamingEnabled(Z)V
    invoke-static {v9, v10}, Lcom/android/phone/NetworkNotificationUI;->access$4400(Lcom/android/phone/NetworkNotificationUI;Z)V

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    const/4 v10, 0x0

    const/4 v11, 0x1

    # invokes: Lcom/android/phone/NetworkNotificationUI;->sendDataConnectionIntent(ZZ)V
    invoke-static {v9, v10, v11}, Lcom/android/phone/NetworkNotificationUI;->access$500(Lcom/android/phone/NetworkNotificationUI;ZZ)V

    const-string v9, "LGT"

    const-string v10, "TMO"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0905b0

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v1, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    :cond_a
    const-string v9, "SKT"

    const-string v10, "TMO"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.android.settings.ACTION_DATA_ROAMING_NEGATIVE"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$7;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
