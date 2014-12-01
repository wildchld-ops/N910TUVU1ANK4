.class public Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CheckboxArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final SET_FALSE:I = 0x2

.field public static final SET_TRUE:I = 0x1

.field public static final UNUSED:I


# instance fields
.field private cb:Landroid/widget/CheckBox;

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAllSelected:I

.field private mContext:Landroid/content/Context;

.field private mResourceId:I

.field private tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->mAllSelected:I

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->deleteItem:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->item:Ljava/util/ArrayList;

    iput p2, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->mResourceId:I

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    move-object v1, p2

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->mResourceId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :cond_0
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->item:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    const v3, 0x7f0800d7

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->tv:Landroid/widget/TextView;

    const v3, 0x7f0800d6

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->cb:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->tv:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->tv:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e00a2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->mAllSelected:I

    if-ne v3, v5, :cond_2

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->cb:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    iget v3, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->mAllSelected:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->cb:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->deleteItem:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->deleteItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->cb:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->cb:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public setCheckAll(I)V
    .locals 0

    iput p1, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->mAllSelected:I

    return-void
.end method
