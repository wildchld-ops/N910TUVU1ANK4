.class public Landroid/graphics/ImageFilterSet;
.super Landroid/graphics/ImageFilter;
.source "ImageFilterSet.java"


# instance fields
.field private mImageFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/ImageFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/ImageFilter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/ImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addFilter(Landroid/graphics/ImageFilter;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/graphics/ImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clearFilters()V
    .locals 1

    iget-object v0, p0, Landroid/graphics/ImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public copy()Landroid/graphics/ImageFilter;
    .locals 3

    new-instance v1, Landroid/graphics/ImageFilterSet;

    invoke-direct {v1}, Landroid/graphics/ImageFilterSet;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/graphics/ImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroid/graphics/ImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/ImageFilter;

    invoke-virtual {v2}, Landroid/graphics/ImageFilter;->copy()Landroid/graphics/ImageFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/ImageFilterSet;->addFilter(Landroid/graphics/ImageFilter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getFilterAt(I)Landroid/graphics/ImageFilter;
    .locals 1

    iget-object v0, p0, Landroid/graphics/ImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroid/graphics/ImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ImageFilter;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilterCount()I
    .locals 1

    iget-object v0, p0, Landroid/graphics/ImageFilterSet;->mImageFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
