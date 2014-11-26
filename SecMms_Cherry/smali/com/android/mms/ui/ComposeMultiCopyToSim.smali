.class public Lcom/android/mms/ui/ComposeMultiCopyToSim;
.super Ljava/lang/Object;
.source "ComposeMultiCopyToSim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/CopyMessageToCard"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

.field protected mCopyConfirmDialog:Landroid/content/DialogInterface;

.field protected mCopytoSimProgressDialog:Landroid/app/ProgressDialog;

.field private mTargetSlot:I


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 1
    .param p1    # Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim;->mTargetSlot:I

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim;->mCopyConfirmDialog:Landroid/content/DialogInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ComposeMultiCopyToSim;)Lcom/android/mms/ui/ComposeMessageFragment;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ComposeMultiCopyToSim;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ComposeMultiCopyToSim;)Landroid/app/Activity;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ComposeMultiCopyToSim;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ComposeMultiCopyToSim;)I
    .locals 1
    .param p0    # Lcom/android/mms/ui/ComposeMultiCopyToSim;

    iget v0, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim;->mTargetSlot:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ComposeMultiCopyToSim;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 1
    .param p0    # Lcom/android/mms/ui/ComposeMultiCopyToSim;
    .param p1    # Ljava/util/ArrayList;
    .param p2    # Ljava/util/ArrayList;
    .param p3    # Ljava/util/ArrayList;
    .param p4    # Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMultiCopyToSim;->copyToSimSelectedSMS(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method private copyToSimSelectedSMS(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim;->mTargetSlot:I

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;->MultipleCopyMessageToSIM(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;II)I

    move-result v9

    const/4 v0, 0x3

    if-ne v9, v0, :cond_0

    const/4 v0, 0x3

    :goto_1
    return v0

    :cond_0
    if-nez v9, :cond_1

    add-int/lit8 v10, v10, 0x1

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    if-lez v10, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public confirmCopytoSIMMessageDialog(Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;ZLandroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 7
    .param p1    # Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;
    .param p2    # Z
    .param p3    # Landroid/content/Context;
    .param p4    # Ljava/lang/String;

    const/4 v6, 0x0

    const v4, 0x7f040048

    invoke-static {p3, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b0055

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v4, 0x7f0b0054

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    const v4, 0x7f0c0311

    :goto_0
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    :cond_0
    const v4, 0x7f0c0312

    goto :goto_0
.end method

.method public copySelectedMessages(I)V
    .locals 12
    .param p1    # I

    const/4 v8, 0x0

    const v5, 0x7f0c0314

    const v4, 0x7f0c0313

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim;->mCopyConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim;->mCopyConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v6}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    const/4 v2, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v6

    if-eqz v6, :cond_3

    iput p1, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim;->mTargetSlot:I

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim;->mActivity:Landroid/app/Activity;

    iget v7, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim;->mTargetSlot:I

    invoke-static {v6, v7}, Lcom/android/mms/ui/MessageUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v6

    if-ne v6, v11, :cond_2

    move v3, v4

    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "SIM"

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v4, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;

    invoke-direct {v4, p0, v8}, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;-><init>(Lcom/android/mms/ui/ComposeMultiCopyToSim;Landroid/net/Uri;)V

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v4, v10, v5, v0}, Lcom/android/mms/ui/ComposeMultiCopyToSim;->confirmCopytoSIMMessageDialog(Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;ZLandroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim;->mCopyConfirmDialog:Landroid/content/DialogInterface;

    const-string v4, "Mms/CopyMessageToCard"

    const-string v5, "copySelectedMessages()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    move v3, v5

    goto :goto_0

    :cond_3
    new-instance v6, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;

    invoke-direct {v6, p0, v8}, Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;-><init>(Lcom/android/mms/ui/ComposeMultiCopyToSim;Landroid/net/Uri;)V

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim;->mActivity:Landroid/app/Activity;

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim;->mActivity:Landroid/app/Activity;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v9

    if-ne v9, v11, :cond_4

    :goto_2
    invoke-virtual {v8, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v6, v10, v7, v4}, Lcom/android/mms/ui/ComposeMultiCopyToSim;->confirmCopytoSIMMessageDialog(Lcom/android/mms/ui/ComposeMultiCopyToSim$CopytoSIMMessageListener;ZLandroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_1

    :cond_4
    move v4, v5

    goto :goto_2
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMultiCopyToSim;->mActivity:Landroid/app/Activity;

    return-void
.end method
