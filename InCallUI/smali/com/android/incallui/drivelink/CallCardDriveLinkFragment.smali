.class public Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;
.super Lcom/android/incallui/CallCardFragment;
.source "CallCardDriveLinkFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private elapsedSecondTimeView:Landroid/widget/TextView;

.field private elapsedTimeView:Landroid/widget/TextView;

.field private mCallStateLabel:Landroid/widget/TextView;

.field private mElapsedSecondTime:Landroid/widget/TextView;

.field private mElapsedTime:Landroid/widget/TextView;

.field private mInset:Landroid/widget/ImageView;

.field private mManageConfCallBtn:Landroid/view/View;

.field private mManageConfCallBtnStub:Landroid/view/ViewStub;

.field private mMask:Landroid/widget/ImageView;

.field private mPrimaryCallCard:Landroid/view/ViewGroup;

.field private mSecondaryControlBtnContainer:Landroid/view/ViewGroup;

.field private mSwapBtn:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->elapsedSecondTimeView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->elapsedTimeView:Landroid/widget/TextView;

    return-void
.end method

.method private imageMasking(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .locals 11

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "imageMasking originImg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",maskId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    const/4 v7, 0x0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    :try_start_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v10, 0x1

    invoke-static {v5, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v4, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v3, v8, v9, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v7

    :catch_0
    move-exception v2

    const-string v8, "imageMasking - outOfMemory exception"

    invoke-virtual {p0, v8}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "imageMasking - exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public manageAddCall(ZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "manageAddCall(showAdd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", canAdd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    return-void
.end method

.method public manageHoldBtn(ZZZZ)V
    .locals 3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "manageHoldBtn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->manageHold(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public manageVideoBtn(ZZI)V
    .locals 0

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/CallCardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter;->swapClicked()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0e0030
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string v1, "onCreateView..."

    invoke-virtual {p0, v1}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/CallCardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v1, 0x7f04000d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/incallui/CallCardFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mInset:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mInset:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mInset:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mMask:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mMask:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/CallCardFragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/incallui/CallCardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0e0229

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mPrimaryCallCard:Landroid/view/ViewGroup;

    const v0, 0x7f0e01fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mElapsedTime:Landroid/widget/TextView;

    const v0, 0x7f0e0039

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mManageConfCallBtnStub:Landroid/view/ViewStub;

    const v0, 0x7f0e0043

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mCallStateLabel:Landroid/widget/TextView;

    const v0, 0x7f0e004b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const v0, 0x7f0e01e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mInset:Landroid/widget/ImageView;

    const v0, 0x7f0e022a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mMask:Landroid/widget/ImageView;

    return-void
.end method

.method public setCallState(ILcom/android/services/telephony/common/Call$DisconnectCause;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-super/range {p0 .. p5}, Lcom/android/incallui/CallCardFragment;->setCallState(ILcom/android/services/telephony/common/Call$DisconnectCause;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DRIVELINK] : state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    const/4 v2, 0x2

    if-ne v2, p1, :cond_4

    const v2, 0x7f090086

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    const/4 v2, 0x5

    if-eq v2, p1, :cond_1

    const/4 v2, 0x3

    if-eq v2, p1, :cond_1

    const/16 v2, 0x14

    if-ne v2, p1, :cond_6

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00ab

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DRIVELINK] : mCallStateLabel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->updateBgColorForCallState(I)V

    return-void

    :cond_4
    const/16 v2, 0x9

    if-eq v2, p1, :cond_5

    const/16 v2, 0x8

    if-ne v2, p1, :cond_0

    :cond_5
    const v2, 0x7f090083

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method protected setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method protected setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V
    .locals 3

    if-nez p1, :cond_1

    const-string v1, "view is null"

    invoke-virtual {p0, v1}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DRIVELINK] isConferenceCall : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    if-eqz p3, :cond_2

    const v1, 0x7f020477

    invoke-direct {p0, p2, v1}, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->imageMasking(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    const v1, 0x7f020461

    invoke-direct {p0, p2, v1}, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->imageMasking(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILandroid/graphics/drawable/Drawable;ZZZZZ)V
    .locals 1

    invoke-super/range {p0 .. p11}, Lcom/android/incallui/CallCardFragment;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILandroid/graphics/drawable/Drawable;ZZZZZ)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p6}, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p7, p8}, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->showManageConferenceCallBtn(ZZ)V

    return-void
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mElapsedTime:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->elapsedTimeView:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/incallui/CallCardFragment;->mEndCallTime:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->elapsedTimeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/incallui/AnimationUtils$Fade;->show(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->elapsedTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->elapsedTimeView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/incallui/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public setSecondCallElapsedTime(ZLjava/lang/String;)V
    .locals 3

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mElapsedSecondTime:Landroid/widget/TextView;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e02f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mElapsedSecondTime:Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mElapsedSecondTime:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->elapsedSecondTimeView:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DRIVELINK] mElapsedSEC : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->elapsedSecondTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->elapsedSecondTimeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mElapsedSecondTime:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/incallui/AnimationUtils$Fade;->show(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->elapsedSecondTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->elapsedTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->elapsedTimeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/incallui/AnimationUtils$Fade;->show(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->elapsedSecondTimeView:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/android/incallui/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public setSecondCallElapsedTimeEnable(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallCardPresenter;->secondCallElapsed(Z)V

    return-void
.end method

.method public showAndInitializeSecondaryCallInfo()V
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/CallCardFragment;->showAndInitializeSecondaryCallInfo()V

    iget-object v0, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mSecondaryControlBtnContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e02ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mSecondaryControlBtnContainer:Landroid/view/ViewGroup;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mSwapBtn:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0030

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mSwapBtn:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mSwapBtn:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mSwapBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mSwapBtn:Landroid/view/View;

    new-instance v1, Lcom/android/incallui/SmallerHitTargetTouchListener;

    invoke-direct {v1}, Lcom/android/incallui/SmallerHitTargetTouchListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    return-void
.end method

.method public showManageConferenceCallBtn(ZZ)V
    .locals 3

    const/4 v1, 0x0

    const-string v2, "showManageConferenceCallBtn"

    invoke-virtual {p0, v2}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mManageConfCallBtnStub:Landroid/view/ViewStub;

    invoke-virtual {v2, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mManageConfCallBtn:Landroid/view/View;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e01b1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mManageConfCallBtn:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mManageConfCallBtn:Landroid/view/View;

    new-instance v2, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment$1;-><init>(Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mManageConfCallBtn:Landroid/view/View;

    new-instance v2, Lcom/android/incallui/SmallerHitTargetTouchListener;

    invoke-direct {v2}, Lcom/android/incallui/SmallerHitTargetTouchListener;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mManageConfCallBtnStub:Landroid/view/ViewStub;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_1
.end method

.method public startCallCardAnimation(Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const-string v1, "startCallCardAnimation"

    invoke-virtual {p0, v1}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/incallui/CallCardFragment;->mCurrentAnimationType:I

    if-eq v1, v3, :cond_0

    const-string v1, "startCallCardAnimation : Animation already starated!"

    invoke-virtual {p0, v1}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mAnimationList:[[I

    aget-object v1, v1, v4

    aget v0, v1, v2

    iput v4, p0, Lcom/android/incallui/CallCardFragment;->mCurrentAnimationType:I

    :goto_1
    iget v1, p0, Lcom/android/incallui/CallCardFragment;->mCurrentAnimationType:I

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mInset:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mInset:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/CallCardFragment;->showImage(Landroid/widget/ImageView;I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->initImageCache()V

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mAnimationList:[[I

    aget-object v1, v1, v2

    aget v0, v1, v2

    iput v2, p0, Lcom/android/incallui/CallCardFragment;->mCurrentAnimationType:I

    goto :goto_1

    :cond_3
    const-string v1, "startCallCardAnimation : There is no animation type"

    invoke-virtual {p0, v1}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected startCallEndTimeBlink()V
    .locals 6

    const/16 v5, 0x64

    const/4 v1, 0x0

    const-string v2, "startCallEndTimeBlink"

    invoke-virtual {p0, v2}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v0, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mElapsedTime:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/incallui/CallCardFragment;->mCallEndTimeBlinkCount:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mEndCallTime:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/incallui/CallCardFragment;->mCallEndTimeBlinkCount:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mEndCallTime:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/android/incallui/CallCardFragment;->mCallEndTimeBlinkCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/incallui/CallCardFragment;->mCallEndTimeBlinkCount:I

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return-void

    :cond_1
    const-string v2, ""

    goto :goto_0

    :cond_2
    iput v1, p0, Lcom/android/incallui/CallCardFragment;->mCallEndTimeBlinkCount:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/incallui/CallCardFragment;->mEndCallTime:Ljava/lang/String;

    goto :goto_1
.end method

.method public updateBgColorForCallState(I)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mPrimaryCallCard:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mElapsedSecondTime:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;->mElapsedSecondTime:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
