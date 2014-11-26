.class public Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DoubleArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;",
        ">;"
    }
.end annotation


# instance fields
.field private cb:Landroid/widget/CheckBox;

.field private ctv:Landroid/widget/TextView;

.field private deleteItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private item:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mResourceId:I

.field private tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # I

    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->item:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->deleteItem:Ljava/util/ArrayList;

    iput p2, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->mResourceId:I

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->item:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->deleteItem:Ljava/util/ArrayList;

    iput p2, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->mResourceId:I

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public add(Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;)V
    .locals 1
    .param p1    # Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->item:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;

    invoke-virtual {p0, p1}, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->add(Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;)V

    return-void
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->item:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->item:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Landroid/widget/ArrayAdapter;->clear()V

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    const v6, 0x7f0800ce

    const/4 v5, 0x0

    move-object v1, p2

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->mResourceId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :cond_0
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->item:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;

    if-eqz v0, :cond_2

    const v3, 0x7f0800cf

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->tv:Landroid/widget/TextView;

    const v3, 0x7f0800d0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->ctv:Landroid/widget/TextView;

    iget v3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->mResourceId:I

    const v4, 0x7f03009b

    if-ne v3, v4, :cond_3

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->cb:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->cb:Landroid/widget/CheckBox;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->tv:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->ctv:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->tv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;->getShortcut()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->ctv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;->getSubstitutions()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->deleteItem:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->deleteItem:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->tv:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->cb:Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_2
    :goto_1
    return-object v1

    :cond_3
    iget v3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->mResourceId:I

    const v4, 0x7f03009a

    if-ne v3, v4, :cond_1

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->cb:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->cb:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->cb:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_1
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-",
            "Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->item:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->sort(Ljava/util/Comparator;)V

    return-void
.end method
