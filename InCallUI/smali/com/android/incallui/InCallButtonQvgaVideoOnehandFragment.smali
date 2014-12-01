.class public Lcom/android/incallui/InCallButtonQvgaVideoOnehandFragment;
.super Lcom/android/incallui/InCallButtonQvgaVideoFragment;
.source "InCallButtonQvgaVideoOnehandFragment.java"

# interfaces
.implements Lcom/android/incallui/vt/VTStateListener;


# instance fields
.field private mLeftArrowButton:Landroid/view/View;

.field private mRightArrowButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/InCallButtonQvgaVideoFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public changeArrow(I)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    const-string v0, "volte_jpn_orientation_feature"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQvgaVideoOnehandFragment;->mLeftArrowButton:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQvgaVideoOnehandFragment;->mLeftArrowButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallButtonQvgaVideoOnehandFragment;->mRightArrowButton:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQvgaVideoOnehandFragment;->mRightArrowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->changeSideDialPad(I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQvgaVideoOnehandFragment;->mRightArrowButton:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQvgaVideoOnehandFragment;->mRightArrowButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/InCallButtonQvgaVideoOnehandFragment;->mLeftArrowButton:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQvgaVideoOnehandFragment;->mLeftArrowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/incallui/InCallButtonQvgaVideoFragment;->onClick(Landroid/view/View;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/incallui/InCallButtonQvgaVideoOnehandFragment;->mLeftArrowButton:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallButtonQvgaVideoOnehandFragment;->mLeftArrowButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InCallButtonQvgaVideoOnehandFragment;->mRightArrowButton:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/InCallButtonQvgaVideoOnehandFragment;->mRightArrowButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->changeSideArrow(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/incallui/InCallButtonQvgaVideoOnehandFragment;->mRightArrowButton:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/InCallButtonQvgaVideoOnehandFragment;->mRightArrowButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/InCallButtonQvgaVideoOnehandFragment;->mLeftArrowButton:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/InCallButtonQvgaVideoOnehandFragment;->mLeftArrowButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->changeSideArrow(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00fc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string v1, "onCreateView..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "volte_jpn_orientation_feature"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/InCallButtonQvgaVideoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/InCallButtonQvgaVideoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v1, 0x7f040042

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallButtonQvgaVideoOnehandFragment;->onFinishInflate(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/incallui/InCallButtonQvgaVideoFragment;->onDestroyView()V

    const-string v0, "volte_jpn_orientation_feature"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallButtonQvgaVideoOnehandFragment;->mLeftArrowButton:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQvgaVideoOnehandFragment;->mLeftArrowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallButtonQvgaVideoOnehandFragment;->mRightArrowButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQvgaVideoOnehandFragment;->mRightArrowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onFinishInflate(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/InCallButtonQvgaVideoFragment;->onFinishInflate(Landroid/view/View;)V

    const-string v0, "volte_jpn_orientation_feature"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0e00fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallButtonQvgaVideoOnehandFragment;->mLeftArrowButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQvgaVideoOnehandFragment;->mLeftArrowButton:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQvgaVideoOnehandFragment;->mLeftArrowButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v0, 0x7f0e00fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallButtonQvgaVideoOnehandFragment;->mRightArrowButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQvgaVideoOnehandFragment;->mRightArrowButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQvgaVideoOnehandFragment;->mRightArrowButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/InCallButtonQvgaVideoFragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public updateOneHandMode()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getCurrentArrowSide()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallButtonQvgaVideoOnehandFragment;->changeArrow(I)V

    return-void
.end method
