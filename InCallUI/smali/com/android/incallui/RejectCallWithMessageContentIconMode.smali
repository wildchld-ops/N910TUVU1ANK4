.class public Lcom/android/incallui/RejectCallWithMessageContentIconMode;
.super Landroid/widget/LinearLayout;
.source "RejectCallWithMessageContentIconMode.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/RejectCallWithMessageContentIconMode$IconModeAdapter;,
        Lcom/android/incallui/RejectCallWithMessageContentIconMode$ViewHolder;,
        Lcom/android/incallui/RejectCallWithMessageContentIconMode$OnItemClickListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/incallui/RejectCallWithMessageContentIconMode$IconModeAdapter;

.field private mContext:Landroid/content/Context;

.field private mCreateMessage:Landroid/widget/LinearLayout;

.field private mIconModeItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mOnItemClickListener:Lcom/android/incallui/RejectCallWithMessageContentIconMode$OnItemClickListener;

.field private mRejectCallWithMessageIconGridView:Landroid/widget/GridView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContentIconMode;->mIconModeItems:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040071

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iput-object p1, p0, Lcom/android/incallui/RejectCallWithMessageContentIconMode;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/RejectCallWithMessageContentIconMode;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContentIconMode;->mIconModeItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/RejectCallWithMessageContentIconMode;I)Ljava/util/HashMap;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/RejectCallWithMessageContentIconMode;->findItem(I)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/RejectCallWithMessageContentIconMode;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContentIconMode;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private findItem(I)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/incallui/RejectCallWithMessageContentIconMode;->mIconModeItems:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/RejectCallWithMessageContentIconMode;->mIconModeItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "mIconModeItems is null or size is 0"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v4

    :goto_0
    return-object v2

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/RejectCallWithMessageContentIconMode;->mIconModeItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-nez v2, :cond_3

    const-string v3, "RejectCallWithMessageContentIconMode"

    const-string v5, "ignore null icon"

    invoke-static {v3, v5}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v3, "position"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_4
    const-string v3, "OMG, item is not found!"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v4

    goto :goto_0
.end method


# virtual methods
.method public configureRejectCallWithMessageSlidingDrawer(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "iconmode, configure..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/incallui/RejectCallWithMessageContentIconMode$IconModeAdapter;

    iget-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContentIconMode;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/RejectCallWithMessageContentIconMode$IconModeAdapter;-><init>(Lcom/android/incallui/RejectCallWithMessageContentIconMode;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContentIconMode;->mAdapter:Lcom/android/incallui/RejectCallWithMessageContentIconMode$IconModeAdapter;

    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContentIconMode;->mIconModeItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContentIconMode;->mIconModeItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContentIconMode;->mRejectCallWithMessageIconGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContentIconMode;->mAdapter:Lcom/android/incallui/RejectCallWithMessageContentIconMode$IconModeAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContentIconMode;->mRejectCallWithMessageIconGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0e0282

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContentIconMode;->mCreateMessage:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContentIconMode;->mCreateMessage:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContentIconMode;->mCreateMessage:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/incallui/RejectCallWithMessageContentIconMode$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/RejectCallWithMessageContentIconMode$1;-><init>(Lcom/android/incallui/RejectCallWithMessageContentIconMode;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0e0287

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContentIconMode;->mRejectCallWithMessageIconGridView:Landroid/widget/GridView;

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string v2, "iconmode, onItemClick()..."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0e0281

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- message: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/RejectCallWithMessageContentIconMode;->mOnItemClickListener:Lcom/android/incallui/RejectCallWithMessageContentIconMode$OnItemClickListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/RejectCallWithMessageContentIconMode;->mOnItemClickListener:Lcom/android/incallui/RejectCallWithMessageContentIconMode$OnItemClickListener;

    invoke-interface {v2, v0}, Lcom/android/incallui/RejectCallWithMessageContentIconMode$OnItemClickListener;->rejectCallWithMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public setOnItemClickListener(Lcom/android/incallui/RejectCallWithMessageContentIconMode$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/RejectCallWithMessageContentIconMode;->mOnItemClickListener:Lcom/android/incallui/RejectCallWithMessageContentIconMode$OnItemClickListener;

    return-void
.end method
