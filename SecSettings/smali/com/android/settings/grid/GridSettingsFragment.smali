.class public Lcom/android/settings/grid/GridSettingsFragment;
.super Landroid/app/Fragment;
.source "GridSettingsFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/grid/GridSettingsFragment$OnSetListner;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activity:Landroid/preference/PreferenceActivity;

.field private childList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private groupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private index:I

.field private mFavoriteCnt:I

.field private mGridItemFocus:Z

.field public mGridType:I

.field private mGridarea:Lcom/android/settings/grid/ExpandableGridView;

.field private mOnGridListner:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

.field private root:Landroid/widget/ScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/grid/GridSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/grid/GridSettingsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->groupList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->childList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->index:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridItemFocus:Z

    return-void
.end method

.method private getCategoryView(Landroid/preference/PreferenceActivity$Header;)Landroid/view/View;
    .locals 7
    .param p1    # Landroid/preference/PreferenceActivity$Header;

    move-object v2, p1

    new-instance v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    const/4 v5, 0x0

    const v6, 0x1010208

    invoke-direct {v0, v4, v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    new-instance v3, Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;

    invoke-direct {v3}, Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;-><init>()V

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v4, v3, Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v2, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090020

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v3, Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private setLayoutTransition()V
    .locals 3

    const/4 v2, 0x4

    new-instance v1, Landroid/animation/LayoutTransition;

    invoke-direct {v1}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method


# virtual methods
.method public addSections(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    invoke-static {v1}, Lcom/android/settings/GridSettings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v5

    if-nez v5, :cond_2

    if-nez v4, :cond_1

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->childList:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->groupList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->groupList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v4

    add-int/lit8 v0, v0, 0x1

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->childList:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->childList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method public clearFocus()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearFocus()V

    :cond_0
    return-void
.end method

.method public collapseAll()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    invoke-virtual {v0}, Lcom/android/settings/grid/ExpandableGridView;->collapseAll()V

    :cond_0
    return-void
.end method

.method public drawFrame()V
    .locals 14

    const/16 v13, 0x8

    const-wide/16 v11, 0x1

    const/high16 v10, 0x3f800000

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->groupList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v7

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->groupList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/android/settings/grid/GridSettingsFragment;->index:I

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceActivity$Header;

    invoke-static {v6, v5}, Lcom/android/settings/Utils;->getCategoryView(Landroid/content/Context;Landroid/preference/PreferenceActivity$Header;)Landroid/view/View;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v10, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->index:I

    if-nez v5, :cond_4

    iget v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->mFavoriteCnt:I

    if-eqz v5, :cond_4

    :cond_2
    iget-object v6, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->childList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/settings/grid/GridSettingsFragment;->index:I

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v7}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridType:I

    iget-object v9, p0, Lcom/android/settings/grid/GridSettingsFragment;->mOnGridListner:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    invoke-static {v6, v5, v7, v8, v9}, Lcom/android/settings/Utils;->getGridView(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/List;ILcom/android/settings/grid/GridViewAdapter$OnGridItemListener;)Lcom/android/settings/grid/GridContainer;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;

    iget-boolean v5, v5, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;->isExpanded:Z

    if-eqz v5, :cond_3

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v10, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v1, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v3, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    invoke-virtual {v3, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :goto_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridItemFocus:Z

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->childList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/settings/grid/GridSettingsFragment;->index:I

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v7}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/grid/GridSettingsFragment;->index:I

    invoke-static {v6, v5, v7, v8}, Lcom/android/settings/Utils;->getGridListView(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/List;I)Lcom/android/settings/grid/GridListContainer;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;

    iget-boolean v5, v5, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;->isExpanded:Z

    if-eqz v5, :cond_5

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v10, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v1, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v4, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public drawGridListFrame()V
    .locals 9

    const/high16 v7, 0x3f800000

    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->groupList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v5

    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->groupList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/settings/grid/GridSettingsFragment;->index:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v4}, Lcom/android/settings/grid/GridSettingsFragment;->getCategoryView(Landroid/preference/PreferenceActivity$Header;)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v7, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->index:I

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->mFavoriteCnt:I

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->childList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/settings/grid/GridSettingsFragment;->index:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v6}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridType:I

    iget-object v8, p0, Lcom/android/settings/grid/GridSettingsFragment;->mOnGridListner:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    invoke-static {v5, v4, v6, v7, v8}, Lcom/android/settings/Utils;->getGridView(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/List;ILcom/android/settings/grid/GridViewAdapter$OnGridItemListener;)Lcom/android/settings/grid/GridContainer;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->childList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/settings/grid/GridSettingsFragment;->index:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v6}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/grid/GridSettingsFragment;->index:I

    invoke-static {v5, v4, v6, v7}, Lcom/android/settings/Utils;->getGridListView(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/List;I)Lcom/android/settings/grid/GridListContainer;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v4, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public expandAll()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    invoke-virtual {v0}, Lcom/android/settings/grid/ExpandableGridView;->expandAll()V

    :cond_0
    return-void
.end method

.method public initHeaderList(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/settings/grid/GridSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "initHeaderList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/android/settings/grid/GridSettingsFragment;->addSections(Ljava/util/List;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1    # Landroid/view/animation/Animation;

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1    # Landroid/view/animation/Animation;

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1    # Landroid/view/animation/Animation;

    iget v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->index:I

    iget v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->index:I

    iget-object v1, p0, Lcom/android/settings/grid/GridSettingsFragment;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/grid/GridSettingsFragment;->drawGridListFrame()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/grid/GridSettingsFragment;->drawFrame()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->root:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings/grid/GridSettingsFragment;->setLayoutTransition()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->index:I

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;

    move-object v0, p1

    check-cast v0, Landroid/preference/PreferenceActivity;

    iput-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    instance-of v0, p1, Lcom/android/settings/grid/GridSettingsFragment$OnSetListner;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/settings/grid/GridSettingsFragment$OnSetListner;

    invoke-interface {v0}, Lcom/android/settings/grid/GridSettingsFragment$OnSetListner;->getGridType()I

    move-result v0

    iput v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridType:I

    :goto_0
    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/grid/GridSettingsFragment;->initHeaderList(Landroid/content/Context;Ljava/util/List;)V

    :cond_0
    instance-of v0, p1, Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    iput-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mOnGridListner:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    :goto_1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    return-void

    :cond_1
    sget-object v0, Lcom/android/settings/grid/GridSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "activity is not OnSetListner"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/settings/grid/GridSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "activity is not OnGridItemListener"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const/4 v2, 0x0

    sget-object v0, Lcom/android/settings/grid/GridSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0400dc

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->root:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->root:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->root:Landroid/widget/ScrollView;

    const v1, 0x7f0b026d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/grid/ExpandableGridView;

    iput-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridarea:Lcom/android/settings/grid/ExpandableGridView;

    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    invoke-static {v0}, Lcom/android/settings/Utils;->getFavoriteCount(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->mFavoriteCnt:I

    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/grid/GridSettingsFragment;->drawGridListFrame()V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/grid/GridSettingsFragment;->root:Landroid/widget/ScrollView;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/grid/GridSettingsFragment;->drawFrame()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/Fragment;->isResumed()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/grid/GridSettingsFragment;->mOnGridListner:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/settings/grid/GridSettingsFragment;->childList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/grid/GridSettingsFragment;->childList:Ljava/util/ArrayList;

    iget v3, v0, Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;->groupIdx:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget v3, v0, Lcom/android/settings/grid/GridListViewAdapter$HeaderViewHolder;->cursorStartAt:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    iget-object v3, p0, Lcom/android/settings/grid/GridSettingsFragment;->mOnGridListner:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    iget-object v2, p0, Lcom/android/settings/grid/GridSettingsFragment;->activity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity$Header;

    invoke-interface {v3, v2, v1}, Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;->onGridItemSelected(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/settings/grid/GridSettingsFragment;->TAG:Ljava/lang/String;

    const-string v3, "mOnGridListner is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    sget-object v1, Lcom/android/settings/grid/GridSettingsFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "item selected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/settings/grid/GridSettingsFragment;->mGridItemFocus:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
