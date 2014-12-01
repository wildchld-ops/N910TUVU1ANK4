.class public Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;
.super Landroid/preference/Preference;
.source "ToggleMagnifierPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MagnifierImageView"
.end annotation


# instance fields
.field public currentMag:I

.field public img:Landroid/widget/ImageView;

.field mContext:Landroid/content/Context;

.field public mEnabled:Z

.field public mIcon:[I

.field public mText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Landroid/content/Context;IZ)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->mIcon:[I

    iput-object p2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->mContext:Landroid/content/Context;

    const v0, 0x7f04013a

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    iput p3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->currentMag:I

    iput-boolean p4, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->mEnabled:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSelectable(Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f020455
        0x7f020456
        0x7f020457
        0x7f020458
        0x7f020459
        0x7f02045a
        0x7f02045b
        0x7f02045c
    .end array-data
.end method


# virtual methods
.method public ImageChange(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->img:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->img:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const v1, 0x3f4ccccd

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->img:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->img:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->mIcon:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->img:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->mIcon:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0b0309

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->img:Landroid/widget/ImageView;

    const v0, 0x7f0b0308

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->mText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->currentMag:I

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->ImageChange(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    const-string v0, "ToggleMagnifierPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MagnifierImageView setEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->mText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "ToggleMagnifierPreferenceFragment"

    const-string v1, "MagnifierImageView is not binded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->mEnabled:Z

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setHoverZoomImageLevel(I)V
    .locals 1

    iput p1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->currentMag:I

    iget v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->currentMag:I

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->ImageChange(I)V

    return-void
.end method
