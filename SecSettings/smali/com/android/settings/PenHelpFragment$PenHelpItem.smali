.class public Lcom/android/settings/PenHelpFragment$PenHelpItem;
.super Ljava/lang/Object;
.source "PenHelpFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PenHelpFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PenHelpItem"
.end annotation


# instance fields
.field container:Landroid/view/View;

.field contentImageView:Landroid/widget/ImageView;

.field contentPlayBtn:Landroid/widget/ImageButton;

.field contentTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/settings/PenHelpFragment;

.field titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/settings/PenHelpFragment;Landroid/view/LayoutInflater;)V
    .locals 2

    iput-object p1, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem;->this$0:Lcom/android/settings/PenHelpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f040184

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem;->container:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem;->container:Landroid/view/View;

    const v1, 0x7f0b00e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem;->titleTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem;->container:Landroid/view/View;

    const v1, 0x7f0b00e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem;->contentTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem;->container:Landroid/view/View;

    const v1, 0x7f0b00d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem;->contentImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem;->container:Landroid/view/View;

    const v1, 0x7f0b00e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem;->contentPlayBtn:Landroid/widget/ImageButton;

    return-void
.end method


# virtual methods
.method public getPenHelpView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem;->container:Landroid/view/View;

    return-object v0
.end method

.method public setContentImage(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem;->contentImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setContentText(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTitleText(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTitleVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public usePlayButton(Z)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem;->contentPlayBtn:Landroid/widget/ImageButton;

    const v2, 0x7f020187

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem;->contentImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem;->contentPlayBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/settings/PenHelpFragment$PenHelpItem$1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/PenHelpFragment$PenHelpItem$1;-><init>(Lcom/android/settings/PenHelpFragment$PenHelpItem;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
