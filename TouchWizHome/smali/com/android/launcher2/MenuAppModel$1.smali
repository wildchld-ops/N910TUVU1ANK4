.class final Lcom/android/launcher2/MenuAppModel$1;
.super Ljava/lang/Object;
.source "MenuAppModel.java"

# interfaces
.implements Lcom/android/launcher2/MenuAppModel$Normalizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher2/MenuAppModel$Normalizer",
        "<",
        "Lcom/android/launcher2/AppItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/AppItem;)I
    .locals 7

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v0, 0x0

    iget v3, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-eq v3, v2, :cond_4

    iget v3, p2, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-eq v3, v2, :cond_4

    iget v3, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    iget v4, p2, Lcom/android/launcher2/BaseItem;->mScreen:I

    # invokes: Lcom/android/launcher2/MenuAppModel;->integerCompare(II)I
    invoke-static {v3, v4}, Lcom/android/launcher2/MenuAppModel;->access$000(II)I

    move-result v0

    if-nez v0, :cond_0

    iget v3, p1, Lcom/android/launcher2/AppItem;->mCell:I

    iget v4, p2, Lcom/android/launcher2/AppItem;->mCell:I

    # invokes: Lcom/android/launcher2/MenuAppModel;->integerCompare(II)I
    invoke-static {v3, v4}, Lcom/android/launcher2/MenuAppModel;->access$000(II)I

    move-result v0

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-eqz v3, :cond_7

    # getter for: Lcom/android/launcher2/MenuAppModel;->sCollator:Ljava/text/Collator;
    invoke-static {}, Lcom/android/launcher2/MenuAppModel;->access$200()Ljava/text/Collator;

    move-result-object v3

    iget-object v4, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_1
    :goto_1
    if-nez v0, :cond_3

    iget-object v3, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_9

    iget-object v3, p2, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_9

    iget-object v1, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    iget-object v2, p2, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v0

    :cond_2
    :goto_2
    if-nez v0, :cond_3

    iget-wide v1, p1, Lcom/android/launcher2/BaseItem;->mId:J

    iget-wide v3, p2, Lcom/android/launcher2/BaseItem;->mId:J

    # invokes: Lcom/android/launcher2/MenuAppModel;->longCompare(JJ)I
    invoke-static {v1, v2, v3, v4}, Lcom/android/launcher2/MenuAppModel;->access$100(JJ)I

    move-result v0

    :cond_3
    return v0

    :cond_4
    iget v3, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    iget v4, p2, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-ne v3, v4, :cond_5

    iget-wide v3, p1, Lcom/android/launcher2/AppItem;->mCreateTime:J

    iget-wide v5, p2, Lcom/android/launcher2/AppItem;->mCreateTime:J

    # invokes: Lcom/android/launcher2/MenuAppModel;->longCompare(JJ)I
    invoke-static {v3, v4, v5, v6}, Lcom/android/launcher2/MenuAppModel;->access$100(JJ)I

    move-result v0

    goto :goto_0

    :cond_5
    iget v3, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-ne v3, v2, :cond_6

    move v0, v1

    :goto_3
    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-eq v3, v4, :cond_1

    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-nez v3, :cond_8

    move v0, v2

    :goto_4
    goto :goto_1

    :cond_8
    move v0, v1

    goto :goto_4

    :cond_9
    iget-object v3, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    iget-object v4, p2, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eq v3, v4, :cond_2

    iget-object v3, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-nez v3, :cond_a

    move v0, v2

    :goto_5
    goto :goto_2

    :cond_a
    move v0, v1

    goto :goto_5
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/launcher2/AppItem;

    check-cast p2, Lcom/android/launcher2/AppItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/MenuAppModel$1;->compare(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/AppItem;)I

    move-result v0

    return v0
.end method

.method public normalize(Ljava/util/List;IZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;IZ)V"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, -0x1

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    sget-boolean v6, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v6, :cond_8

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    iget-boolean v6, v1, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v6, :cond_0

    iget v3, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-eq v3, v2, :cond_3

    if-eq v3, v7, :cond_3

    if-eqz p3, :cond_1

    sub-int v6, v3, v2

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v5, v6

    :cond_1
    if-eqz v4, :cond_2

    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    :cond_2
    move v2, v3

    :cond_3
    if-ne v3, v5, :cond_4

    iget v6, v1, Lcom/android/launcher2/AppItem;->mCell:I

    if-eq v6, v4, :cond_5

    :cond_4
    iput-boolean v8, v1, Lcom/android/launcher2/BaseItem;->mDirty:Z

    iput v5, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v4, v1, Lcom/android/launcher2/AppItem;->mCell:I

    :cond_5
    add-int/lit8 v4, v4, 0x1

    if-ne v4, p2, :cond_0

    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto :goto_0

    :cond_6
    if-eqz v4, :cond_7

    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    :cond_7
    # setter for: Lcom/android/launcher2/MenuAppModel;->mCustomMenuSecretPageCnt:I
    invoke-static {v5}, Lcom/android/launcher2/MenuAppModel;->access$302(I)I

    :cond_8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    iget-boolean v6, v1, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-nez v6, :cond_9

    iget v3, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-eq v3, v2, :cond_c

    if-eq v3, v7, :cond_c

    if-eqz p3, :cond_a

    sub-int v6, v3, v2

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v5, v6

    :cond_a
    if-eqz v4, :cond_b

    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    :cond_b
    move v2, v3

    :cond_c
    if-ne v3, v5, :cond_d

    iget v6, v1, Lcom/android/launcher2/AppItem;->mCell:I

    if-eq v6, v4, :cond_e

    :cond_d
    iput-boolean v8, v1, Lcom/android/launcher2/BaseItem;->mDirty:Z

    iput v5, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v4, v1, Lcom/android/launcher2/AppItem;->mCell:I

    :cond_e
    add-int/lit8 v4, v4, 0x1

    if-ne v4, p2, :cond_9

    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto :goto_1

    :cond_f
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "MenuAppModel.MENU_CUSTOM_NORMALIZER"

    return-object v0
.end method
