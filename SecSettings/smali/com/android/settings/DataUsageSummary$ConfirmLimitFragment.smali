.class public Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLimitFragment"
.end annotation


# static fields
.field static final dialog:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;

    invoke-direct {v0}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;-><init>()V

    sput-object v0, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static close(Lcom/android/settings/DataUsageSummary;)V
    .locals 2

    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    goto :goto_0
.end method

.method public static show(Lcom/android/settings/DataUsageSummary;)V
    .locals 15

    const-wide/32 v13, 0x40000000

    const v12, 0x7f0915ad

    const v11, 0x7f090bfa

    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    # getter for: Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->access$4700(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/NetworkPolicyEditor;

    move-result-object v9

    # getter for: Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->access$4600(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v9

    iget-wide v9, v9, Landroid/net/NetworkPolicy;->warningBytes:J

    long-to-float v9, v9

    const v10, 0x3f99999a

    mul-float/2addr v9, v10

    float-to-long v6, v9

    const/4 v2, 0x5

    # getter for: Lcom/android/settings/DataUsageSummary;->isSPR:Z
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$4800()Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v2, 0x50

    :cond_2
    # getter for: Lcom/android/settings/DataUsageSummary;->isTMB:Z
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$4900()Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v2, 0x64

    :cond_3
    # getter for: Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->access$1500(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v1

    const-string v9, "3g"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    # getter for: Lcom/android/settings/DataUsageSummary;->isVZW:Z
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$4200()Z

    move-result v9

    if-nez v9, :cond_4

    # getter for: Lcom/android/settings/DataUsageSummary;->isSPR:Z
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$4800()Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_4
    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_1
    int-to-long v9, v2

    mul-long/2addr v9, v13

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :goto_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v9, "message"

    invoke-virtual {v0, v9, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v9, "limitBytes"

    invoke-virtual {v0, v9, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object v9, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;

    if-eqz v9, :cond_0

    sget-object v9, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;

    invoke-virtual {v9}, Landroid/app/Fragment;->isAdded()Z

    move-result v9

    if-nez v9, :cond_0

    sget-object v9, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;

    invoke-virtual {v9, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    sget-object v9, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;

    const/4 v10, 0x0

    invoke-virtual {v9, p0, v10}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    sget-object v9, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    const-string v11, "confirmLimit"

    invoke-virtual {v9, v10, v11}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_6
    const-string v9, "4g"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    # getter for: Lcom/android/settings/DataUsageSummary;->isVZW:Z
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$4200()Z

    move-result v9

    if-nez v9, :cond_7

    # getter for: Lcom/android/settings/DataUsageSummary;->isSPR:Z
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$4800()Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_7
    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_3
    int-to-long v9, v2

    mul-long/2addr v9, v13

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    goto :goto_2

    :cond_8
    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_9
    const-string v9, "mobile"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    # getter for: Lcom/android/settings/DataUsageSummary;->isVZW:Z
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$4200()Z

    move-result v9

    if-nez v9, :cond_a

    # getter for: Lcom/android/settings/DataUsageSummary;->isSPR:Z
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$4800()Z

    move-result v9

    if-eqz v9, :cond_b

    :cond_a
    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_4
    int-to-long v9, v2

    mul-long/2addr v9, v13

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    goto :goto_2

    :cond_b
    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_c
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unknown current tab: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "message"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "limitBytes"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    # getter for: Lcom/android/settings/DataUsageSummary;->isVZW:Z
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$4200()Z

    move-result v5

    if-nez v5, :cond_0

    # getter for: Lcom/android/settings/DataUsageSummary;->isSPR:Z
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$4800()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const v5, 0x7f0915ac

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :goto_0
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v5, 0x104000a

    new-instance v6, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment$1;

    invoke-direct {v6, p0, v2, v3}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment$1;-><init>(Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;J)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    :cond_1
    const v5, 0x7f090bf8

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
