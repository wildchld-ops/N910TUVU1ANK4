.class public Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;
.super Lcom/android/incallui/AnswerFragment;
.source "AnswerButtonMWDriveLinkFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final DB_KEY_DRIVELINK_REJECTMESSAGE_BODY:Ljava/lang/String;

.field private final DB_KEY_DRIVELINK_REJECTMESSAGE_ON:Ljava/lang/String;

.field private mAcceptText:Landroid/widget/TextView;

.field private mAcceptVoiceButton:Landroid/widget/RelativeLayout;

.field private mOriginAcceptText:Landroid/graphics/Typeface;

.field private mOriginRejectText:Landroid/graphics/Typeface;

.field private mQuotationMarkEndAccept:Landroid/widget/ImageView;

.field private mQuotationMarkEndReject:Landroid/widget/ImageView;

.field private mQuotationMarkStartAccept:Landroid/widget/ImageView;

.field private mQuotationMarkStartReject:Landroid/widget/ImageView;

.field private mRejectButton:Landroid/widget/RelativeLayout;

.field private mRejectText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;-><init>()V

    const-string v0, "drivelink_rejectmessage_on"

    iput-object v0, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->DB_KEY_DRIVELINK_REJECTMESSAGE_ON:Ljava/lang/String;

    const-string v0, "drivelink_rejectmessage_body"

    iput-object v0, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->DB_KEY_DRIVELINK_REJECTMESSAGE_BODY:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public changeAnswerButtonText(Z)V
    .locals 7
    .param p1    # Z

    const/4 v6, 0x2

    const/4 v5, 0x4

    const/4 v4, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DRIVELINK] change Answer/Reject Button Text : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->mAcceptVoiceButton:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->mAcceptText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->mAcceptText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->mOriginAcceptText:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->mQuotationMarkStartAccept:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->mQuotationMarkEndAccept:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->mRejectButton:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->mRejectText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902f2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->mRejectText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->mOriginRejectText:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->mQuotationMarkStartReject:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->mQuotationMarkEndReject:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/AnswerPresenter;->setVoicetalkLocale()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->mAcceptText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f090000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v1, v0}, Lcom/android/incallui/AnswerPresenter;->setConfigurationLocale(Ljava/util/Locale;)Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->mAcceptText:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->mQuotationMarkStartAccept:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->mQuotationMarkEndAccept:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/AnswerPresenter;->setVoicetalkLocale()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->mRejectText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v1, v0}, Lcom/android/incallui/AnswerPresenter;->setConfigurationLocale(Ljava/util/Locale;)Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->mRejectText:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->mQuotationMarkStartReject:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->mQuotationMarkEndReject:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick(View "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    sparse-switch v0, :sswitch_data_0

    const-string v3, "onClick: unexpected"

    invoke-virtual {p0, v3}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/AnswerPresenter;->onAnswer()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "drivelink_rejectmessage_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rejectmessage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "drivelink_rejectmessage_body"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rejectmessage_body:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v3, v2}, Lcom/android/incallui/AnswerPresenter;->rejectCallWithMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/AnswerPresenter;->onDecline()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0e0166 -> :sswitch_0
        0x7f0e016b -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const v1, 0x7f04004a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v1, "Creating view for answer fragment true"

    invoke-virtual {p0, v1}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created from activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->onFinishInflate(Landroid/view/View;)V

    return-object v0
.end method

.method protected onFinishInflate(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    const v0, 0x7f0e0166

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->mAcceptVoiceButton:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->mAcceptVoiceButton:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->mAcceptVoiceButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0e016b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->mRejectButton:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->mRejectButton:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->mRejectButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v0, 0x7f0e0168

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->mQuotationMarkStartAccept:Landroid/widget/ImageView;

    const v0, 0x7f0e016a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->mQuotationMarkEndAccept:Landroid/widget/ImageView;

    const v0, 0x7f0e016d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->mQuotationMarkStartReject:Landroid/widget/ImageView;

    const v0, 0x7f0e016f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->mQuotationMarkEndReject:Landroid/widget/ImageView;

    const v0, 0x7f0e0169

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->mAcceptText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->mAcceptText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->mAcceptText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->mOriginAcceptText:Landroid/graphics/Typeface;

    :cond_2
    const v0, 0x7f0e016e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->mRejectText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->mRejectText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->mRejectText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/drivelink/AnswerButtonMWDriveLinkFragment;->mOriginRejectText:Landroid/graphics/Typeface;

    :cond_3
    return-void
.end method
