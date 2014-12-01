.class public Lcom/android/phone/callsettings/PopupList;
.super Ljava/lang/Object;
.source "PopupList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/PopupList$ItemDataAdapter;,
        Lcom/android/phone/callsettings/PopupList$Item;,
        Lcom/android/phone/callsettings/PopupList$OnPopupItemClickListener;
    }
.end annotation


# instance fields
.field private final mAnchorView:Landroid/view/View;

.field private mContentList:Landroid/widget/ListView;

.field private final mContext:Landroid/content/Context;

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/PopupList$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOnGLobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnPopupItemClickListener:Lcom/android/phone/callsettings/PopupList$OnPopupItemClickListener;

.field private mPopupHeight:I

.field private mPopupOffsetY:I

.field private mPopupWidth:I

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private maxLength:I

.field private text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/PopupList;->mItems:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/callsettings/PopupList;->maxLength:I

    new-instance v0, Lcom/android/phone/callsettings/PopupList$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/PopupList$1;-><init>(Lcom/android/phone/callsettings/PopupList;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/PopupList;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    new-instance v0, Lcom/android/phone/callsettings/PopupList$2;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/PopupList$2;-><init>(Lcom/android/phone/callsettings/PopupList;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/PopupList;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/android/phone/callsettings/PopupList$3;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/PopupList$3;-><init>(Lcom/android/phone/callsettings/PopupList;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/PopupList;->mOnGLobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p1, p0, Lcom/android/phone/callsettings/PopupList;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/phone/callsettings/PopupList;->mAnchorView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/PopupList;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/PopupList;

    iget-object v0, p0, Lcom/android/phone/callsettings/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/phone/callsettings/PopupList;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/PopupList;
    .param p1    # Landroid/widget/PopupWindow;

    iput-object p1, p0, Lcom/android/phone/callsettings/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/PopupList;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/PopupList;

    iget-object v0, p0, Lcom/android/phone/callsettings/PopupList;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/PopupList;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/PopupList;

    iget-object v0, p0, Lcom/android/phone/callsettings/PopupList;->mOnGLobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/PopupList;)Lcom/android/phone/callsettings/PopupList$OnPopupItemClickListener;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/PopupList;

    iget-object v0, p0, Lcom/android/phone/callsettings/PopupList;->mOnPopupItemClickListener:Lcom/android/phone/callsettings/PopupList$OnPopupItemClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/PopupList;)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/PopupList;

    invoke-direct {p0}, Lcom/android/phone/callsettings/PopupList;->updatePopupLayoutParams()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/callsettings/PopupList;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/PopupList;

    iget-object v0, p0, Lcom/android/phone/callsettings/PopupList;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/callsettings/PopupList;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/PopupList;

    iget-object v0, p0, Lcom/android/phone/callsettings/PopupList;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/callsettings/PopupList;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/PopupList;

    iget-object v0, p0, Lcom/android/phone/callsettings/PopupList;->text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/phone/callsettings/PopupList;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/PopupList;
    .param p1    # Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/phone/callsettings/PopupList;->text:Landroid/widget/TextView;

    return-object p1
.end method

.method private createPopupWindow()Landroid/widget/PopupWindow;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/phone/callsettings/PopupList;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/PopupList;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/PopupList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/PopupList;->mContext:Landroid/content/Context;

    const v3, 0x101006d

    invoke-direct {v1, v2, v5, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/android/phone/callsettings/PopupList;->mContentList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/callsettings/PopupList;->mContentList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/PopupList;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0202cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/PopupList;->mContentList:Landroid/widget/ListView;

    new-instance v2, Lcom/android/phone/callsettings/PopupList$ItemDataAdapter;

    invoke-direct {v2, p0, v5}, Lcom/android/phone/callsettings/PopupList$ItemDataAdapter;-><init>(Lcom/android/phone/callsettings/PopupList;Lcom/android/phone/callsettings/PopupList$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/PopupList;->mContentList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/PopupList;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/PopupList;->mContentList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    return-object v0
.end method

.method private updatePopupLayoutParams()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/PopupList;->mContentList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/phone/callsettings/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v4, p0, Lcom/android/phone/callsettings/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/android/phone/callsettings/PopupList;->mAnchorView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;)I

    move-result v1

    iget-object v4, p0, Lcom/android/phone/callsettings/PopupList;->mContentList:Landroid/widget/ListView;

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    const/high16 v6, -0x80000000

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->measure(II)V

    iget-object v4, p0, Lcom/android/phone/callsettings/PopupList;->text:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/callsettings/PopupList;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v7, :cond_0

    iget v4, p0, Lcom/android/phone/callsettings/PopupList;->maxLength:I

    iget-object v5, p0, Lcom/android/phone/callsettings/PopupList;->text:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    if-lt v4, v5, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/phone/callsettings/PopupList;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v4, v7, :cond_1

    iget v4, p0, Lcom/android/phone/callsettings/PopupList;->maxLength:I

    if-nez v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/android/phone/callsettings/PopupList;->text:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    iput v4, p0, Lcom/android/phone/callsettings/PopupList;->maxLength:I

    :cond_2
    iget v4, p0, Lcom/android/phone/callsettings/PopupList;->maxLength:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/phone/callsettings/PopupList;->mPopupWidth:I

    invoke-virtual {v0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/android/phone/callsettings/PopupList;->mPopupHeight:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    add-int/lit8 v4, v4, -0xf

    iput v4, p0, Lcom/android/phone/callsettings/PopupList;->mPopupOffsetY:I

    return-void
.end method


# virtual methods
.method public addItem(ILjava/lang/String;)V
    .locals 2
    .param p1    # I
    .param p2    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/callsettings/PopupList;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/phone/callsettings/PopupList$Item;

    invoke-direct {v1, p1, p2}, Lcom/android/phone/callsettings/PopupList$Item;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearItems()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/PopupList;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public setOnPopupItemClickListener(Lcom/android/phone/callsettings/PopupList$OnPopupItemClickListener;)V
    .locals 0
    .param p1    # Lcom/android/phone/callsettings/PopupList$OnPopupItemClickListener;

    iput-object p1, p0, Lcom/android/phone/callsettings/PopupList;->mOnPopupItemClickListener:Lcom/android/phone/callsettings/PopupList$OnPopupItemClickListener;

    return-void
.end method

.method public show()V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/callsettings/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/PopupList;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/PopupList;->mOnGLobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/PopupList;->createPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Lcom/android/phone/callsettings/PopupList;->updatePopupLayoutParams()V

    iget-object v0, p0, Lcom/android/phone/callsettings/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/android/phone/callsettings/PopupList;->mPopupWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/android/phone/callsettings/PopupList;->mPopupHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/phone/callsettings/PopupList;->mAnchorView:Landroid/view/View;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/phone/callsettings/PopupList;->mPopupOffsetY:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/PopupList;->mItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/PopupList;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method
