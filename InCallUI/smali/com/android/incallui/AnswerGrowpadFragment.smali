.class public Lcom/android/incallui/AnswerGrowpadFragment;
.super Lcom/android/incallui/AnswerFragment;
.source "AnswerGrowpadFragment.java"

# interfaces
.implements Lcom/android/incallui/GlowPadWrapper$AnswerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/AnswerGrowpadFragment$RespondViaSmsItemClickListener;
    }
.end annotation


# instance fields
.field private mCannedResponsePopup:Landroid/app/Dialog;

.field private mCustomMessagePopup:Landroid/app/AlertDialog;

.field private mGlowpad:Lcom/android/incallui/GlowPadWrapper;

.field private mTextResponsesAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    iput-object v0, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/AnswerGrowpadFragment;)Lcom/android/incallui/GlowPadWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/AnswerGrowpadFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/AnswerGrowpadFragment;->dismissCustomMessagePopup()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/AnswerGrowpadFragment;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/AnswerGrowpadFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/AnswerGrowpadFragment;->dismissCannedResponsePopup()V

    return-void
.end method

.method private dismissCannedResponsePopup()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method private dismissCustomMessagePopup()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private isCannedResponsePopupShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCustomMessagePopupShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public configureMessageDialog(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1090003

    const v4, 0x1020014

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v1, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    return-void
.end method

.method public dismissPendingDialogues()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/AnswerGrowpadFragment;->isCannedResponsePopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/AnswerGrowpadFragment;->dismissCannedResponsePopup()V

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/AnswerGrowpadFragment;->isCustomMessagePopupShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/AnswerGrowpadFragment;->dismissCustomMessagePopup()V

    :cond_1
    return-void
.end method

.method public hasPendingDialogs()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnswer()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->onAnswer()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f040005

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/GlowPadWrapper;

    iput-object v0, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    const-string v0, "Creating view for answer fragment "

    invoke-static {p0, v0, p0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Created from activity"

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v0, p0}, Lcom/android/incallui/GlowPadWrapper;->setAnswerListener(Lcom/android/incallui/GlowPadWrapper$AnswerListener;)V

    iget-object v0, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    return-object v0
.end method

.method public onDecline()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->onDecline()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const-string v0, "onDestroyView"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v0}, Lcom/android/incallui/GlowPadWrapper;->stopPing()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    :cond_0
    invoke-super {p0}, Lcom/android/incallui/AnswerFragment;->onDestroyView()V

    return-void
.end method

.method public onText()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->onText()V

    return-void
.end method

.method public showAnswerUi(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/AnswerFragment;->showAnswerUi(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v0}, Lcom/android/incallui/GlowPadWrapper;->startPing()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v0}, Lcom/android/incallui/GlowPadWrapper;->stopPing()V

    goto :goto_0
.end method

.method public showCustomMessageDialog()V
    .locals 6

    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0900b7

    new-instance v5, Lcom/android/incallui/AnswerGrowpadFragment$3;

    invoke-direct {v5, p0, v1}, Lcom/android/incallui/AnswerGrowpadFragment$3;-><init>(Lcom/android/incallui/AnswerGrowpadFragment;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0900b6

    new-instance v5, Lcom/android/incallui/AnswerGrowpadFragment$2;

    invoke-direct {v5, p0}, Lcom/android/incallui/AnswerGrowpadFragment$2;-><init>(Lcom/android/incallui/AnswerGrowpadFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0900b5

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/incallui/AnswerGrowpadFragment$4;

    invoke-direct {v3, p0}, Lcom/android/incallui/AnswerGrowpadFragment$4;-><init>(Lcom/android/incallui/AnswerGrowpadFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v3, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v3, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    iget-object v3, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public showMessageDialog()V
    .locals 4

    new-instance v1, Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lcom/android/incallui/AnswerGrowpadFragment$RespondViaSmsItemClickListener;

    invoke-direct {v2, p0}, Lcom/android/incallui/AnswerGrowpadFragment$RespondViaSmsItemClickListener;-><init>(Lcom/android/incallui/AnswerGrowpadFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/incallui/AnswerGrowpadFragment$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/AnswerGrowpadFragment$1;-><init>(Lcom/android/incallui/AnswerGrowpadFragment;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public showTextButton(Z)V
    .locals 3

    if-eqz p1, :cond_1

    const/high16 v0, 0x7f080000

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getTargetResourceId()I

    move-result v1

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v1, v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->setTargetResources(I)V

    iget-object v1, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    const v2, 0x7f080001

    invoke-virtual {v1, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->setTargetDescriptionsResourceId(I)V

    iget-object v1, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    const v2, 0x7f080002

    invoke-virtual {v1, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->setDirectionDescriptionsResourceId(I)V

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->reset(Z)V

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f080003

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v1, v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->setTargetResources(I)V

    iget-object v1, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    const v2, 0x7f080004

    invoke-virtual {v1, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->setTargetDescriptionsResourceId(I)V

    iget-object v1, p0, Lcom/android/incallui/AnswerGrowpadFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    const v2, 0x7f080005

    invoke-virtual {v1, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->setDirectionDescriptionsResourceId(I)V

    goto :goto_1
.end method
