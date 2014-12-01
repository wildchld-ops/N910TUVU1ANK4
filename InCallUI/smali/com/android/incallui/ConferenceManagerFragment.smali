.class public abstract Lcom/android/incallui/ConferenceManagerFragment;
.super Lcom/android/incallui/BaseFragment;
.source "ConferenceManagerFragment.java"

# interfaces
.implements Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ConferenceManagerFragment$HoverIgnoringRelativeLayout;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/ConferenceManagerPresenter;",
        "Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;",
        ">;",
        "Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;"
    }
.end annotation


# instance fields
.field protected mButtonManageConferenceDone:Landroid/view/View;

.field protected mConferenceCallList:[Landroid/view/ViewGroup;

.field private mConferenceTime:Landroid/widget/Chronometer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method createPresenter()Lcom/android/incallui/ConferenceManagerPresenter;
    .locals 1

    invoke-static {}, Lcom/android/incallui/ConferenceManagerPresenter;->getInstance()Lcom/android/incallui/ConferenceManagerPresenter;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->createPresenter()Lcom/android/incallui/ConferenceManagerPresenter;

    move-result-object v0

    return-object v0
.end method

.method public displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v3, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v3, v3, p1

    const v4, 0x7f0e0046

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v3, v3, p1

    const v4, 0x7f0e0047

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v3, v3, p1

    const v4, 0x7f0e0048

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/incallui/ConferenceManagerFragment;->displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enableEndButtonForRow(IZ)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v1, v1, p1

    const v2, 0x7f0e0049

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method getUi()Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;
    .locals 0

    return-object p0
.end method

.method bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getUi()Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    move-result-object v0

    return-object v0
.end method

.method public isFragmentVisible()Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const v3, 0x7f04001b

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0e006b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Chronometer;

    iput-object v3, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceTime:Landroid/widget/Chronometer;

    iget-object v3, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceTime:Landroid/widget/Chronometer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f09007c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v3

    new-array v3, v3, [Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    const/4 v3, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v4, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget v3, v2, v0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    aput-object v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const v3, 0x7f0e006e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/ConferenceManagerFragment;->mButtonManageConferenceDone:Landroid/view/View;

    iget-object v3, p0, Lcom/android/incallui/ConferenceManagerFragment;->mButtonManageConferenceDone:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/ConferenceManagerFragment;->mButtonManageConferenceDone:Landroid/view/View;

    new-instance v4, Lcom/android/incallui/ConferenceManagerFragment$1;

    invoke-direct {v4, p0}, Lcom/android/incallui/ConferenceManagerFragment$1;-><init>(Lcom/android/incallui/ConferenceManagerFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-object v1

    nop

    :array_0
    .array-data 4
        0x7f0e0070
        0x7f0e0071
        0x7f0e0072
        0x7f0e0073
        0x7f0e0074
    .end array-data
.end method

.method protected onFinishInflate(Landroid/view/View;)V
    .locals 5

    const v2, 0x7f0e006b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Chronometer;

    iput-object v2, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceTime:Landroid/widget/Chronometer;

    iget-object v2, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceTime:Landroid/widget/Chronometer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f09007c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v2

    new-array v2, v2, [Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    const/4 v2, 0x5

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const v2, 0x7f0e006e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/ConferenceManagerFragment;->mButtonManageConferenceDone:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/ConferenceManagerFragment;->mButtonManageConferenceDone:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/ConferenceManagerFragment;->mButtonManageConferenceDone:Landroid/view/View;

    new-instance v3, Lcom/android/incallui/ConferenceManagerFragment$4;

    invoke-direct {v3, p0}, Lcom/android/incallui/ConferenceManagerFragment$4;-><init>(Lcom/android/incallui/ConferenceManagerFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x7f0e0070
        0x7f0e0071
        0x7f0e0072
        0x7f0e0073
        0x7f0e0074
    .end array-data
.end method

.method public setCanSeparateButtonForRow(IZZ)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v2, v2, p1

    const v3, 0x7f0e0045

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p2, :cond_0

    new-instance v1, Lcom/android/incallui/ConferenceManagerFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/ConferenceManagerFragment$3;-><init>(Lcom/android/incallui/ConferenceManagerFragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    if-eqz p3, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public setRowVisible(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v1, v0}, Lcom/android/incallui/ConferenceManagerPresenter;->init(Lcom/android/incallui/CallList;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setupEndButtonForRow(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v1, v1, p1

    const v2, 0x7f0e0049

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/ConferenceManagerFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/ConferenceManagerFragment$2;-><init>(Lcom/android/incallui/ConferenceManagerFragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
