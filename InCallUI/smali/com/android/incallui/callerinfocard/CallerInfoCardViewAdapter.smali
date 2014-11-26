.class public Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CallerInfoCardViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$1;,
        Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mAreAllItemsEnabled:Z

.field private mContext:Landroid/content/Context;

.field private mItemLayoutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->mItemLayoutList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->init(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 5
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;
    .param p4    # I

    if-nez p2, :cond_1

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v4, 0x0

    invoke-virtual {v3, p4, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    new-instance v1, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;-><init>(Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;Landroid/view/View;Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$1;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    :try_start_0
    # invokes: Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->update(I)V
    invoke-static {v1, p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->access$200(Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;I)V

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->mItemLayoutList:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->mItemLayoutList:Ljava/util/ArrayList;

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->mItemLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_1
    move-object v2, p2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "CallerInfoCardViewAdapter"

    const-string v4, "You must supply a resource ID for a TextView"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "CallerInfoCardViewAdapter requires the resource ID to be a TextView"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private init(Landroid/content/Context;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # I

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->mResource:I

    return-void
.end method


# virtual methods
.method public allItemsEnabled(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->mAreAllItemsEnabled:Z

    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 3

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->mItemLayoutList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->mItemLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;

    # invokes: Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->clearDrawable()V
    invoke-static {v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;->access$300(Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter$ItemLayout;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->mItemLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->mItemLayoutList:Ljava/util/ArrayList;

    :cond_1
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->clear()V

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    iget v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->mResource:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1    # I

    iget-boolean v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->mAreAllItemsEnabled:Z

    return v0
.end method
