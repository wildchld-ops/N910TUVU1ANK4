.class public Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;
.super Lcom/android/incallui/InCallButtonQcifVideoFragment;
.source "InCallButtonQcifVideoOnehandFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/incallui/vt/VTStateListener;


# instance fields
.field private mDecorationButton:Landroid/widget/ImageButton;

.field private mDialpadButton:Landroid/widget/Button;

.field private mHiddenMute:Landroid/widget/TextView;

.field private mLeftArrowButton:Landroid/view/View;

.field private mMuteToggleButton:Landroid/widget/ToggleButton;

.field private mRightArrowButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;-><init>()V

    return-void
.end method

.method private hideDecorationButtonFirst()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mDecorationButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mDecorationButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showMuteOrDialpadOneHandButton()V
    .locals 4

    const v3, 0x7f0a0032

    const v2, 0x7f0a001a

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->isDialpadVisible()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->getVisibility(Z)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->isDialpadVisible()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->getVisibility(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const-string v0, "t_white_theme"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mLeftArrowButton:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mLeftArrowButton:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mRightArrowButton:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mRightArrowButton:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mLeftArrowButton:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->isDialpadVisible()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mLeftArrowButton:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mRightArrowButton:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->isDialpadVisible()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mRightArrowButton:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_5
    return-void

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public changeArrow(I)V
    .locals 3
    .param p1    # I

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mLeftArrowButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mLeftArrowButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mRightArrowButton:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mRightArrowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->changeSideDialPad(I)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mRightArrowButton:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mRightArrowButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mLeftArrowButton:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mLeftArrowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1    # Landroid/view/View;

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->onClick(Landroid/view/View;)V

    :goto_0
    return-void

    :sswitch_0
    iget-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mLeftArrowButton:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mLeftArrowButton:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mRightArrowButton:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mRightArrowButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2, v4}, Lcom/android/incallui/CallButtonPresenter;->changeSideArrow(I)V

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mRightArrowButton:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mRightArrowButton:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mLeftArrowButton:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mLeftArrowButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2, v5}, Lcom/android/incallui/CallButtonPresenter;->changeSideArrow(I)V

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mPreviewEffectContainer:Lcom/android/incallui/vt/PreviewEffectUI;

    if-nez v2, :cond_5

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0e013a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_4
    const-string v2, "PreviewEffectUI"

    const-string v3, "inflatePreviewEffectUI"

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0e01e1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/vt/PreviewEffectUI;

    iput-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mPreviewEffectContainer:Lcom/android/incallui/vt/PreviewEffectUI;

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->toggleButtonContainer()V

    iget-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mPreviewEffectContainer:Lcom/android/incallui/vt/PreviewEffectUI;

    invoke-virtual {v2}, Lcom/android/incallui/vt/PreviewEffectUI;->showDecorationMainPanel()V

    iget-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mPreviewEffectContainer:Lcom/android/incallui/vt/PreviewEffectUI;

    invoke-virtual {v2}, Lcom/android/incallui/vt/PreviewEffectUI;->showDecorationInfoToast()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e00fc -> :sswitch_0
        0x7f0e00fd -> :sswitch_1
        0x7f0e012f -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const-string v1, "onCreateView..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v1, 0x7f040040

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->onFinishInflate(Landroid/view/View;)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mLeftArrowButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mLeftArrowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mRightArrowButton:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mRightArrowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method protected onFinishInflate(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    invoke-super {p0, p1}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->onFinishInflate(Landroid/view/View;)V

    const v0, 0x7f0e002e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mMuteToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0e0137

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mHiddenMute:Landroid/widget/TextView;

    const v0, 0x7f0e012f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mDecorationButton:Landroid/widget/ImageButton;

    const v0, 0x7f0e002c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mDialpadButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mDecorationButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e00fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mLeftArrowButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mLeftArrowButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mLeftArrowButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0e00fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mRightArrowButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mRightArrowButton:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mRightArrowButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->showMuteOrDialpadOneHandButton()V

    const-string v0, "t_white_theme"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mDecorationButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mDecorationButton:Landroid/widget/ImageButton;

    const v1, 0x7f0a0032

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mDecorationButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->hideDecorationButtonFirst()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/os/Bundle;

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setVisibleByDialpad(Z)V
    .locals 7
    .param p1    # Z

    const v6, 0x7f0a0032

    const v5, 0x7f0a001a

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v4

    if-eqz v4, :cond_b

    if-ne p1, v3, :cond_9

    move v0, v1

    :goto_1
    const-string v4, "ims_ui_for_kor"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mDecorationButton:Landroid/widget/ImageButton;

    if-eqz v4, :cond_1

    const-string v4, "t_white_theme"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mDecorationButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mPreviewEffectContainer:Lcom/android/incallui/vt/PreviewEffectUI;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mPreviewEffectContainer:Lcom/android/incallui/vt/PreviewEffectUI;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDecorationButton.setVisibility "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->showMute(Z)V

    if-nez p1, :cond_d

    move v2, v3

    :goto_4
    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->showDialPadButton(Z)V

    const-string v2, "dcm_volte_keypad_enable_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez p1, :cond_e

    :goto_5
    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->showLeftDialPadButton(Z)V

    :cond_4
    const-string v1, "t_white_theme"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mLeftArrowButton:Landroid/view/View;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->isDialpadVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mLeftArrowButton:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mRightArrowButton:Landroid/view/View;

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->isDialpadVisible()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mRightArrowButton:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_6
    iget-object v1, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mLeftArrowButton:Landroid/view/View;

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->isDialpadVisible()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mLeftArrowButton:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_7
    iget-object v1, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mRightArrowButton:Landroid/view/View;

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->isDialpadVisible()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mRightArrowButton:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_8
    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v1, p1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setVisibleCameraPreview(Z)V

    goto/16 :goto_0

    :cond_9
    move v0, v2

    goto/16 :goto_1

    :cond_a
    iget-object v4, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mDecorationButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_b
    const-string v4, "ims_ui_for_kor"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mDecorationButton:Landroid/widget/ImageButton;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->mDecorationButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_c
    iget-object v4, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mPreviewEffectContainer:Lcom/android/incallui/vt/PreviewEffectUI;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment;->mPreviewEffectContainer:Lcom/android/incallui/vt/PreviewEffectUI;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_d
    move v2, v1

    goto/16 :goto_4

    :cond_e
    move v3, v1

    goto/16 :goto_5
.end method

.method public updateOneHandMode()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getCurrentArrowSide()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallButtonQcifVideoOnehandFragment;->changeArrow(I)V

    return-void
.end method
