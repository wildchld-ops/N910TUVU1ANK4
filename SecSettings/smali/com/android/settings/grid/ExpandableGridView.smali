.class public Lcom/android/settings/grid/ExpandableGridView;
.super Landroid/widget/LinearLayout;
.source "ExpandableGridView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/grid/ExpandableGridView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/settings/grid/ExpandableGridView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/android/settings/grid/ExpandableGridView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public collapse(Landroid/view/View;I)V
    .locals 9

    const/high16 v4, 0x3f000000

    const/4 v3, 0x1

    const v1, 0x7f0b01e8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/grid/ExpandableGridView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->getExpandableListDesc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/grid/ExpandableGridView;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/android/settings/Utils;->getExpandStateDesc(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b01e9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v1, 0x7f02079b

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, 0x43340000

    const/4 v2, 0x0

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v7, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public collapseAll()V
    .locals 6

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;->isExpanded:Z

    iget-object v2, p0, Lcom/android/settings/grid/ExpandableGridView;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;->header:Landroid/preference/PreferenceActivity$Header;

    iget-wide v3, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    iget-boolean v5, v0, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;->isExpanded:Z

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/Utils;->saveExpandstate(Landroid/content/Context;JZ)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/grid/ExpandableGridView;->collapse(Landroid/view/View;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public expand(Landroid/view/View;I)V
    .locals 9

    const/high16 v4, 0x3f000000

    const/4 v3, 0x1

    const v1, 0x7f0b01e8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/grid/ExpandableGridView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->getExpandableListDesc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/grid/ExpandableGridView;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->getExpandStateDesc(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b01e9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v1, 0x7f020798

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, 0x43340000

    const/high16 v2, 0x43b40000

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v7, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public expandAll()V
    .locals 6

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;->isExpanded:Z

    iget-object v2, p0, Lcom/android/settings/grid/ExpandableGridView;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;->header:Landroid/preference/PreferenceActivity$Header;

    iget-wide v3, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    iget-boolean v5, v0, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;->isExpanded:Z

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/Utils;->saveExpandstate(Landroid/content/Context;JZ)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/grid/ExpandableGridView;->expand(Landroid/view/View;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;

    iget-boolean v2, v0, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;->isExpanded:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v0, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;->isExpanded:Z

    iget-object v2, p0, Lcom/android/settings/grid/ExpandableGridView;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;->header:Landroid/preference/PreferenceActivity$Header;

    iget-wide v3, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    iget-boolean v5, v0, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;->isExpanded:Z

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/Utils;->saveExpandstate(Landroid/content/Context;JZ)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-boolean v2, v0, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;->isExpanded:Z

    if-eqz v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/settings/grid/ExpandableGridView;->expand(Landroid/view/View;I)V

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/settings/grid/ExpandableGridView;->collapse(Landroid/view/View;I)V

    goto :goto_1
.end method
