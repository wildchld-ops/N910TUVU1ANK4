.class Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;
.super Lcom/android/settings/GridSettings$HeaderAdapter;
.source "FavoriteMenuList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/favorite/FavoriteMenuList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FavoriteAdapter"
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private isCheckedConfrim:[Z

.field private mContext:Landroid/content/Context;

.field private sArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/favorite/FavoriteMenuList;


# direct methods
.method public constructor <init>(Lcom/android/settings/favorite/FavoriteMenuList;Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/admin/DevicePolicyManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Landroid/app/admin/DevicePolicyManager;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->this$0:Lcom/android/settings/favorite/FavoriteMenuList;

    invoke-direct {p0, p2, p3, v0, p4}, Lcom/android/settings/GridSettings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/app/admin/DevicePolicyManager;)V

    iput-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->inflater:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->sArrayList:Ljava/util/ArrayList;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->inflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->sArrayList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->sArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->isCheckedConfrim:[Z

    iput-object p2, p0, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getChecked()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v3, p0, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->isCheckedConfrim:[Z

    array-length v2, v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->isCheckedConfrim:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->sArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->sArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iget-wide v0, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    return-wide v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->getItemId(I)J

    move-result-wide v2

    long-to-int v0, v2

    const-string v1, ""

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->this$0:Lcom/android/settings/favorite/FavoriteMenuList;

    invoke-virtual {v2}, Lcom/android/settings/favorite/FavoriteMenuList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/GridSettings$HeaderAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0270

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->isCheckedConfrim:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_0
    return-object v1
.end method

.method public isChecked(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->isCheckedConfrim:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public setChecked(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->isCheckedConfrim:[Z

    iget-object v0, p0, Lcom/android/settings/favorite/FavoriteMenuList$FavoriteAdapter;->isCheckedConfrim:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    aput-boolean v0, v1, p1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
