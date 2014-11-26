.class public Lcom/android/settings/HelpItem;
.super Ljava/lang/Object;
.source "HelpItem.java"


# instance fields
.field container:Landroid/view/View;

.field contentImageArea:Landroid/widget/FrameLayout;

.field contentImageView:Landroid/widget/ImageView;

.field contentPlayBtn:Landroid/widget/ImageButton;

.field contentTextView:Landroid/widget/TextView;

.field item:Landroid/widget/LinearLayout;

.field titleTextView:Landroid/widget/TextView;

.field titleTextView2:Landroid/widget/TextView;

.field tryBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f040048

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/HelpItem;->container:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/HelpItem;->container:Landroid/view/View;

    const v1, 0x7f0b00e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/HelpItem;->item:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings/HelpItem;->container:Landroid/view/View;

    const v1, 0x7f0b00e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/HelpItem;->titleTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/HelpItem;->container:Landroid/view/View;

    const v1, 0x7f0b00e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/HelpItem;->titleTextView2:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/HelpItem;->container:Landroid/view/View;

    const v1, 0x7f0b00e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/HelpItem;->contentTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/HelpItem;->container:Landroid/view/View;

    const v1, 0x7f0b00e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/settings/HelpItem;->contentImageArea:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/settings/HelpItem;->container:Landroid/view/View;

    const v1, 0x7f0b00d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/HelpItem;->contentImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/HelpItem;->container:Landroid/view/View;

    const v1, 0x7f0b00e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/settings/HelpItem;->contentPlayBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/settings/HelpItem;->container:Landroid/view/View;

    const v1, 0x7f0b00e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/HelpItem;->tryBtn:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public changePaddingForPopup(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f010b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move v1, v2

    iget-object v4, p0, Lcom/android/settings/HelpItem;->item:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/HelpItem;->item:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iget-object v4, p0, Lcom/android/settings/HelpItem;->item:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public getHelpView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/HelpItem;->container:Landroid/view/View;

    return-object v0
.end method

.method public hideTitle()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/settings/HelpItem;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/HelpItem;->titleTextView2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setContentImage(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/settings/HelpItem;->contentImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setContentText(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/settings/HelpItem;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setContentText(Landroid/text/SpannableString;)V
    .locals 1
    .param p1    # Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/android/settings/HelpItem;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContentText(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/HelpItem;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContentVisibility(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/settings/HelpItem;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setImageMarginTop(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/settings/HelpItem;->contentImageArea:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x4

    invoke-virtual {v0, v2, p1, v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/android/settings/HelpItem;->contentImageArea:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setImageVisibility(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/settings/HelpItem;->contentImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/HelpItem;->contentImageArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1    # Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/android/settings/HelpItem;->tryBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/HelpItem;->tryBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setTitle2Visibility(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/settings/HelpItem;->titleTextView2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setTitleText(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/android/settings/HelpItem;->titleTextView2:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/HelpItem;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTitleTextWithOutCategory(I)V
    .locals 3
    .param p1    # I

    iget-object v0, p0, Lcom/android/settings/HelpItem;->titleTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/HelpItem;->titleTextView2:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lcom/android/settings/HelpItem;->titleTextView2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTitleTextWithOutCategory(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/HelpItem;->titleTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/HelpItem;->titleTextView2:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lcom/android/settings/HelpItem;->titleTextView2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleVisibility(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/settings/HelpItem;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setTryBtnVisibility(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/settings/HelpItem;->tryBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public usePlayButton(Z)V
    .locals 3
    .param p1    # Z

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/settings/HelpItem;->contentPlayBtn:Landroid/widget/ImageButton;

    const v2, 0x7f020187

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/settings/HelpItem;->contentPlayBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/settings/HelpItem$1;

    invoke-direct {v2, p0}, Lcom/android/settings/HelpItem$1;-><init>(Lcom/android/settings/HelpItem;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/HelpItem;->contentImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0
.end method
