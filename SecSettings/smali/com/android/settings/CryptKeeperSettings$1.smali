.class Lcom/android/settings/CryptKeeperSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "CryptKeeperSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeperSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeperSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeperSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v12, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const-string v12, "level"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v12, "plugged"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v12, "invalid_charger"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v12, "status"

    const/4 v13, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v12, 0x50

    if-lt v5, v12, :cond_4

    const/4 v6, 0x1

    :goto_0
    and-int/lit8 v12, v7, 0x7

    if-eqz v12, :cond_5

    if-nez v4, :cond_5

    const/4 v12, 0x2

    if-eq v2, v12, :cond_0

    const/4 v12, 0x5

    if-ne v2, v12, :cond_5

    :cond_0
    const/4 v8, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    # getter for: Lcom/android/settings/CryptKeeperSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;
    invoke-static {v12}, Lcom/android/settings/CryptKeeperSettings;->access$000(Lcom/android/settings/CryptKeeperSettings;)Landroid/dirEncryption/DirEncryptionManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentStatus()I

    move-result v11

    const/4 v12, 0x1

    if-gt v12, v11, :cond_1

    const/4 v12, 0x3

    if-ge v12, v11, :cond_6

    :cond_1
    const/4 v10, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    # getter for: Lcom/android/settings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;
    invoke-static {v12}, Lcom/android/settings/CryptKeeperSettings;->access$100(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v13

    if-eqz v6, :cond_7

    if-eqz v8, :cond_7

    if-eqz v10, :cond_7

    const/4 v12, 0x1

    :goto_3
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    # getter for: Lcom/android/settings/CryptKeeperSettings;->mPowerWarning:Landroid/view/View;
    invoke-static {v12}, Lcom/android/settings/CryptKeeperSettings;->access$200(Lcom/android/settings/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v13

    if-eqz v8, :cond_8

    const/16 v12, 0x8

    :goto_4
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    # getter for: Lcom/android/settings/CryptKeeperSettings;->mBatteryWarning:Landroid/widget/TextView;
    invoke-static {v12}, Lcom/android/settings/CryptKeeperSettings;->access$300(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v13

    if-eqz v6, :cond_9

    const/16 v12, 0x8

    :goto_5
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    # getter for: Lcom/android/settings/CryptKeeperSettings;->mSDcardOngoingWarning:Landroid/view/View;
    invoke-static {v12}, Lcom/android/settings/CryptKeeperSettings;->access$400(Lcom/android/settings/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v13

    if-eqz v10, :cond_a

    const/16 v12, 0x8

    :goto_6
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    # getter for: Lcom/android/settings/CryptKeeperSettings;->mPasswordWarning:Landroid/widget/TextView;
    invoke-static {v12}, Lcom/android/settings/CryptKeeperSettings;->access$500(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    # getter for: Lcom/android/settings/CryptKeeperSettings;->mParent:Landroid/app/Activity;
    invoke-static {v12}, Lcom/android/settings/CryptKeeperSettings;->access$600(Lcom/android/settings/CryptKeeperSettings;)Landroid/app/Activity;

    move-result-object v12

    const-string v13, "device_policy"

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    if-eqz v3, :cond_2

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    # invokes: Lcom/android/settings/CryptKeeperSettings;->upgradeQualityForEncryption(I)I
    invoke-static {v12, v9}, Lcom/android/settings/CryptKeeperSettings;->access$700(Lcom/android/settings/CryptKeeperSettings;I)I

    move-result v9

    const/high16 v12, 0x20000

    if-ne v9, v12, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    # getter for: Lcom/android/settings/CryptKeeperSettings;->mPasswordWarning:Landroid/widget/TextView;
    invoke-static {v12}, Lcom/android/settings/CryptKeeperSettings;->access$500(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    const v14, 0x7f090e1f

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x6

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v12, v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :goto_7
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    invoke-virtual {v3, v12}, Landroid/app/admin/DevicePolicyManager;->satisfyFIPSPassword(I)Z

    move-result v12

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    # getter for: Lcom/android/settings/CryptKeeperSettings;->mPasswordWarning:Landroid/widget/TextView;
    invoke-static {v12}, Lcom/android/settings/CryptKeeperSettings;->access$500(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    # getter for: Lcom/android/settings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;
    invoke-static {v12}, Lcom/android/settings/CryptKeeperSettings;->access$100(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    # getter for: Lcom/android/settings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;
    invoke-static {v12}, Lcom/android/settings/CryptKeeperSettings;->access$100(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    :cond_3
    return-void

    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_3

    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_4

    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_5

    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_6

    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    # getter for: Lcom/android/settings/CryptKeeperSettings;->mPasswordWarning:Landroid/widget/TextView;
    invoke-static {v12}, Lcom/android/settings/CryptKeeperSettings;->access$500(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    const v14, 0x7f090e20

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x6

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v12, v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_7

    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    # getter for: Lcom/android/settings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;
    invoke-static {v12}, Lcom/android/settings/CryptKeeperSettings;->access$100(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v12

    const v13, 0x7f090e15

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    # getter for: Lcom/android/settings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;
    invoke-static {v12}, Lcom/android/settings/CryptKeeperSettings;->access$100(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_8
.end method
