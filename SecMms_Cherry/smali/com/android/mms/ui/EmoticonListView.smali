.class public Lcom/android/mms/ui/EmoticonListView;
.super Landroid/widget/GridView;
.source "EmoticonListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/EmoticonListView$IconsAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/mms/ui/EmoticonListView$IconsAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public setCategory(I)V
    .locals 3
    .param p1    # I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v2, p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFavoriteEmoticons(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/EmoticonListView;->mAdapter:Lcom/android/mms/ui/EmoticonListView$IconsAdapter;

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/mms/ui/EmoticonListView$IconsAdapter;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/mms/ui/EmoticonListView$IconsAdapter;-><init>(Lcom/android/mms/ui/EmoticonListView;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/mms/ui/EmoticonListView;->mAdapter:Lcom/android/mms/ui/EmoticonListView$IconsAdapter;

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/EmoticonListView;->mAdapter:Lcom/android/mms/ui/EmoticonListView$IconsAdapter;

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_1
    invoke-static {p1}, Lcom/android/mms/ui/EmoticonList;->getEmoticonCategory(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/mms/ui/EmoticonList;->getEmoticonUTFCategory(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setFavoriteData()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonListView;->mAdapter:Lcom/android/mms/ui/EmoticonListView$IconsAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFavoriteEmoticons(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/EmoticonListView$IconsAdapter;->setData([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonListView;->mAdapter:Lcom/android/mms/ui/EmoticonListView$IconsAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
