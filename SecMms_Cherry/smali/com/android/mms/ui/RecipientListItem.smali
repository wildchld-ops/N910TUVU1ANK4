.class public Lcom/android/mms/ui/RecipientListItem;
.super Landroid/widget/LinearLayout;
.source "RecipientListItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecipientListItem"

.field private static mDefaultContactImage:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mAvatarView:Landroid/widget/QuickContactBadge;

.field private mContact:Lcom/android/mms/data/Contact;

.field private mContext:Landroid/content/Context;

.field private mFontSize:I

.field private mFromSubjectLinear:Landroid/widget/LinearLayout;

.field private mFromView:Landroid/widget/TextView;

.field private mOldFontSize:I

.field private mRecipientNumber:Ljava/lang/String;

.field private mStatusView:Landroid/widget/TextView;

.field private mSubjectView:Landroid/widget/TextView;

.field name:Landroid/widget/TextView;

.field number:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/RecipientListItem;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/RecipientListItem;->mOldFontSize:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/RecipientListItem;->mFontSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListItem;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/mms/ui/RecipientListItem;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020282

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/RecipientListItem;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/RecipientListItem;->mOldFontSize:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/RecipientListItem;->mFontSize:I

    invoke-virtual {p0, p2}, Lcom/android/mms/ui/RecipientListItem;->setContactInfo(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public changeFontSize(ILandroid/view/View;)V
    .locals 12

    instance-of v8, p2, Lcom/android/mms/ui/RecipientListItem;

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v7, p2

    check-cast v7, Lcom/android/mms/ui/RecipientListItem;

    iget v8, p0, Lcom/android/mms/ui/RecipientListItem;->mOldFontSize:I

    iget v9, p0, Lcom/android/mms/ui/RecipientListItem;->mFontSize:I

    if-eq v8, v9, :cond_0

    iget v8, p0, Lcom/android/mms/ui/RecipientListItem;->mFontSize:I

    iput v8, p0, Lcom/android/mms/ui/RecipientListItem;->mOldFontSize:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v8, p0, Lcom/android/mms/ui/RecipientListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, p0, Lcom/android/mms/ui/RecipientListItem;->mFromSubjectLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, p0, Lcom/android/mms/ui/RecipientListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFontSize()Z

    move-result v8

    if-eqz v8, :cond_2

    const/high16 v8, 0x7f0a0000

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v8, 0x7f0a0010

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v6, v8

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/android/mms/ui/RecipientListItem;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/mms/MmsConfig;->isFolderModel(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/mms/ui/RecipientListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const v8, 0x7f0a0062

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v8, p0, Lcom/android/mms/ui/RecipientListItem;->name:Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    const/4 v8, 0x5

    if-eq p1, v8, :cond_4

    iget-object v8, p0, Lcom/android/mms/ui/RecipientListItem;->name:Landroid/widget/TextView;

    const/4 v9, 0x1

    const/4 v10, 0x3

    invoke-static {v10, p1}, Lcom/android/mms/ui/FontSizeController;->getFontSize(II)F

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_4
    invoke-virtual {v7, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :pswitch_0
    const v8, 0x7f0a0003

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v8, 0x7f0a0011

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v3, v8

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :pswitch_1
    const v8, 0x7f0a0004

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v8, 0x7f0a0012

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v2, v8

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v8, p0, Lcom/android/mms/ui/RecipientListItem;->mFromView:Landroid/widget/TextView;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/mms/ui/RecipientListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0009

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public changeFontSize7Step(ILandroid/view/View;)V
    .locals 15

    move-object/from16 v0, p2

    instance-of v11, v0, Lcom/android/mms/ui/RecipientListItem;

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v10, p2

    check-cast v10, Lcom/android/mms/ui/RecipientListItem;

    iget v11, p0, Lcom/android/mms/ui/RecipientListItem;->mOldFontSize:I

    iget v12, p0, Lcom/android/mms/ui/RecipientListItem;->mFontSize:I

    if-eq v11, v12, :cond_0

    const-string v11, "RecipientListItem"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "changeFontSize7Step() old font = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/mms/ui/RecipientListItem;->mOldFontSize:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mFontSize = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/mms/ui/RecipientListItem;->mFontSize:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v11, p0, Lcom/android/mms/ui/RecipientListItem;->mFontSize:I

    iput v11, p0, Lcom/android/mms/ui/RecipientListItem;->mOldFontSize:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget-object v11, p0, Lcom/android/mms/ui/RecipientListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v11, p0, Lcom/android/mms/ui/RecipientListItem;->mFromSubjectLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v11, p0, Lcom/android/mms/ui/RecipientListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFontSize()Z

    move-result v11

    if-eqz v11, :cond_2

    const/high16 v11, 0x7f0a0000

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v11, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v11, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v11, 0x7f0a000a

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v3, v11

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v11, p0, Lcom/android/mms/ui/RecipientListItem;->mFromView:Landroid/widget/TextView;

    const/4 v12, 0x1

    const/4 v13, 0x3

    move/from16 v0, p1

    invoke-static {v13, v0}, Lcom/android/mms/ui/FontSizeController;->getFontSize(II)F

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    :goto_1
    const/4 v11, 0x7

    move/from16 v0, p1

    if-eq v0, v11, :cond_3

    iget-object v11, p0, Lcom/android/mms/ui/RecipientListItem;->mFromView:Landroid/widget/TextView;

    const/4 v12, 0x1

    const/4 v13, 0x3

    move/from16 v0, p1

    invoke-static {v13, v0}, Lcom/android/mms/ui/FontSizeController;->getFontSize(II)F

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_3
    invoke-virtual {p0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v11, p0, Lcom/android/mms/ui/RecipientListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v11, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :pswitch_0
    const v11, 0x7f0a00d2

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v11, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v11, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v11, 0x7f0a00c9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v8, v11

    iput v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :pswitch_1
    const v11, 0x7f0a00d3

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v11, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v11, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v11, 0x7f0a00c9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v6, v11

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :pswitch_2
    const v11, 0x7f0a00d4

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v11, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v11, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v11, 0x7f0a00ca

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v1, v11

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :pswitch_3
    const v11, 0x7f0a00d5

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v11, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v11, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v11, 0x7f0a00cb

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v5, v11

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v11, p0, Lcom/android/mms/ui/RecipientListItem;->mFromView:Landroid/widget/TextView;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/mms/ui/RecipientListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a00d6

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getContact()Lcom/android/mms/data/Contact;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListItem;->mContact:Lcom/android/mms/data/Contact;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-static {}, Lcom/android/mms/ui/FontSizeController;->getFontSizeIndexForUi()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/RecipientListItem;->mFontSize:I

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/ui/RecipientListItem;->mFontSize:I

    invoke-virtual {p0, v0, p0}, Lcom/android/mms/ui/RecipientListItem;->changeFontSize7Step(ILandroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/mms/ui/RecipientListItem;->mFontSize:I

    invoke-virtual {p0, v0, p0}, Lcom/android/mms/ui/RecipientListItem;->changeFontSize(ILandroid/view/View;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0b004a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListItem;->mFromView:Landroid/widget/TextView;

    const v0, 0x7f0b006e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListItem;->mSubjectView:Landroid/widget/TextView;

    const v0, 0x7f0b0314

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListItem;->mStatusView:Landroid/widget/TextView;

    const v0, 0x7f0b0049

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const v0, 0x7f0b0313

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListItem;->mFromSubjectLinear:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public setContactInfo(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListItem;->mContact:Lcom/android/mms/data/Contact;

    iput-object p1, p0, Lcom/android/mms/ui/RecipientListItem;->mRecipientNumber:Ljava/lang/String;

    return-void
.end method

.method public setTextColor(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListItem;->mFromView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListItem;->mContext:Landroid/content/Context;

    const v2, 0x207000e

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListItem;->mSubjectView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListItem;->mContext:Landroid/content/Context;

    const v2, 0x207000f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    return-void
.end method

.method public updateAvatarView()V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListItem;->mContact:Lcom/android/mms/data/Contact;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListItem;->mContact:Lcom/android/mms/data/Contact;

    iget-object v2, p0, Lcom/android/mms/ui/RecipientListItem;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/mms/ui/RecipientListItem;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListItem;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    iget-object v2, p0, Lcom/android/mms/ui/RecipientListItem;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListItem;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    iget-object v2, p0, Lcom/android/mms/ui/RecipientListItem;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListItem;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    iget-object v2, p0, Lcom/android/mms/ui/RecipientListItem;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/mms/ui/RecipientListItem;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
