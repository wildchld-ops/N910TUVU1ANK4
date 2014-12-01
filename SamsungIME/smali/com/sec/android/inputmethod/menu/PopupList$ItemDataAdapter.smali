.class Lcom/sec/android/inputmethod/menu/PopupList$ItemDataAdapter;
.super Landroid/widget/BaseAdapter;
.source "PopupList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/menu/PopupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemDataAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/menu/PopupList;


# direct methods
.method private constructor <init>(Lcom/sec/android/inputmethod/menu/PopupList;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/inputmethod/menu/PopupList$ItemDataAdapter;->this$0:Lcom/sec/android/inputmethod/menu/PopupList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/inputmethod/menu/PopupList;Lcom/sec/android/inputmethod/menu/PopupList$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/menu/PopupList$ItemDataAdapter;-><init>(Lcom/sec/android/inputmethod/menu/PopupList;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/menu/PopupList$ItemDataAdapter;->this$0:Lcom/sec/android/inputmethod/menu/PopupList;

    # getter for: Lcom/sec/android/inputmethod/menu/PopupList;->mItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/inputmethod/menu/PopupList;->access$600(Lcom/sec/android/inputmethod/menu/PopupList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/menu/PopupList$ItemDataAdapter;->this$0:Lcom/sec/android/inputmethod/menu/PopupList;

    # getter for: Lcom/sec/android/inputmethod/menu/PopupList;->mItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/inputmethod/menu/PopupList;->access$600(Lcom/sec/android/inputmethod/menu/PopupList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/inputmethod/menu/PopupList$ItemDataAdapter;->this$0:Lcom/sec/android/inputmethod/menu/PopupList;

    # getter for: Lcom/sec/android/inputmethod/menu/PopupList;->mItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/inputmethod/menu/PopupList;->access$600(Lcom/sec/android/inputmethod/menu/PopupList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/menu/PopupList$Item;

    iget v0, v0, Lcom/sec/android/inputmethod/menu/PopupList$Item;->id:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/sec/android/inputmethod/menu/PopupList$ItemDataAdapter;->this$0:Lcom/sec/android/inputmethod/menu/PopupList;

    # getter for: Lcom/sec/android/inputmethod/menu/PopupList;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/inputmethod/menu/PopupList;->access$700(Lcom/sec/android/inputmethod/menu/PopupList;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030043

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v1, 0x7f08005a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/inputmethod/menu/PopupList$ItemDataAdapter;->this$0:Lcom/sec/android/inputmethod/menu/PopupList;

    # getter for: Lcom/sec/android/inputmethod/menu/PopupList;->mItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/inputmethod/menu/PopupList;->access$600(Lcom/sec/android/inputmethod/menu/PopupList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/inputmethod/menu/PopupList$Item;

    iget-object v1, v1, Lcom/sec/android/inputmethod/menu/PopupList$Item;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
