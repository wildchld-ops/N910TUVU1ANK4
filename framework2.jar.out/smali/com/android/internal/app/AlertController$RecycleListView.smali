.class public Lcom/android/internal/app/AlertController$RecycleListView;
.super Landroid/widget/ListView;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycleListView"
.end annotation


# instance fields
.field mRecycleOnMeasure:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;

    const/4 v5, 0x1

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-boolean v5, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setAlwaysDisableHoverHighlight(Z)V

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/16 v3, 0x141

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    # setter for: Lcom/android/internal/app/AlertController;->isDeviceDefault:Ljava/lang/Boolean;
    invoke-static {v3}, Lcom/android/internal/app/AlertController;->access$802(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    # getter for: Lcom/android/internal/app/AlertController;->TABLET_KK:Z
    invoke-static {}, Lcom/android/internal/app/AlertController;->access$900()Z

    move-result v3

    if-eqz v3, :cond_0

    # getter for: Lcom/android/internal/app/AlertController;->isDeviceDefault:Ljava/lang/Boolean;
    invoke-static {}, Lcom/android/internal/app/AlertController;->access$800()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarWidth()I

    move-result v1

    if-eqz v0, :cond_0

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v5}, Landroid/view/View;->setVerticalScrollBarPadding(Z)V

    div-int/lit8 v3, v0, 0x2

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/view/View;->setVerticalScrollBarPaddingPosition(I)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v5, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v5, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setAlwaysDisableHoverHighlight(Z)V

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/16 v3, 0x141

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    # setter for: Lcom/android/internal/app/AlertController;->isDeviceDefault:Ljava/lang/Boolean;
    invoke-static {v3}, Lcom/android/internal/app/AlertController;->access$802(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    # getter for: Lcom/android/internal/app/AlertController;->TABLET_KK:Z
    invoke-static {}, Lcom/android/internal/app/AlertController;->access$900()Z

    move-result v3

    if-eqz v3, :cond_0

    # getter for: Lcom/android/internal/app/AlertController;->isDeviceDefault:Ljava/lang/Boolean;
    invoke-static {}, Lcom/android/internal/app/AlertController;->access$800()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarWidth()I

    move-result v1

    if-eqz v0, :cond_0

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v5}, Landroid/view/View;->setVerticalScrollBarPadding(Z)V

    div-int/lit8 v3, v0, 0x2

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/view/View;->setVerticalScrollBarPaddingPosition(I)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v5, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v5, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setAlwaysDisableHoverHighlight(Z)V

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/16 v3, 0x141

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    # setter for: Lcom/android/internal/app/AlertController;->isDeviceDefault:Ljava/lang/Boolean;
    invoke-static {v3}, Lcom/android/internal/app/AlertController;->access$802(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    # getter for: Lcom/android/internal/app/AlertController;->TABLET_KK:Z
    invoke-static {}, Lcom/android/internal/app/AlertController;->access$900()Z

    move-result v3

    if-eqz v3, :cond_0

    # getter for: Lcom/android/internal/app/AlertController;->isDeviceDefault:Ljava/lang/Boolean;
    invoke-static {}, Lcom/android/internal/app/AlertController;->access$800()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarWidth()I

    move-result v1

    if-eqz v0, :cond_0

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v5}, Landroid/view/View;->setVerticalScrollBarPadding(Z)V

    div-int/lit8 v3, v0, 0x2

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/view/View;->setVerticalScrollBarPaddingPosition(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected recycleOnMeasure()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    return v0
.end method
