.class public Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;
.super Landroid/widget/ArrayAdapter;
.source "EmoticonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/CharSequence;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEmoticonAdapterListener:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;

.field private mEmoticonLineResourceId:I

.field private mEmoticonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFontSize:F

.field private mItemBackgroundResId:I

.field private mItemMarginBottom:I

.field private mItemMarginLeft:I

.field private mItemMarginRight:I

.field private mItemMarginTop:I

.field private mItemPaddingBottom:I

.field private mItemPaddingLeft:I

.field private mItemPaddingRight:I

.field private mItemPaddingTop:I

.field private mItemheight:I

.field private mItemwidth:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mRowPaddingBottom:I

.field private mRowPaddingLeft:I

.field private mRowPaddingRight:I

.field private mRowPaddingTop:I

.field private mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mEmoticonAdapterListener:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;

    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mEmoticonLineResourceId:I

    iput v1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemPaddingLeft:I

    iput v1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemPaddingTop:I

    iput v1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemPaddingRight:I

    iput v1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemPaddingBottom:I

    iput v1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemBackgroundResId:I

    iput v1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemMarginLeft:I

    iput v1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemMarginTop:I

    iput v1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemMarginRight:I

    iput v1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemMarginBottom:I

    iput v1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemwidth:I

    iput v1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemheight:I

    iput v1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mRowPaddingLeft:I

    iput v1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mRowPaddingTop:I

    iput v1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mRowPaddingRight:I

    iput v1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mRowPaddingBottom:I

    iput-object p1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mEmoticonLineResourceId:I

    iget-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mEmoticonList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;)Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mEmoticonAdapterListener:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;

    return-object v0
.end method

.method private addNewLine()Landroid/widget/LinearLayout;
    .locals 5

    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mEmoticonLineResourceId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mRowPaddingLeft:I

    iget v2, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mRowPaddingTop:I

    iget v3, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mRowPaddingRight:I

    iget v4, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mRowPaddingBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-object v0
.end method

.method private setClickListener(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;

    new-instance v0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter$1;-><init>(Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    const/4 v6, 0x0

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->addNewLine()Landroid/widget/LinearLayout;

    move-result-object v6

    const/4 v9, 0x3

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v9, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mEmoticonList:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    new-instance v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v10, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemwidth:I

    iget v11, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemheight:I

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v9, 0x1

    iget v10, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mFontSize:F

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v9, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget v9, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemBackgroundResId:I

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    iget v9, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemPaddingLeft:I

    iget v10, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemPaddingTop:I

    iget v11, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemPaddingRight:I

    iget v12, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemPaddingBottom:I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v7, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget v9, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemMarginLeft:I

    iget v10, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemMarginTop:I

    iget v11, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemMarginRight:I

    iget v12, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemMarginBottom:I

    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    invoke-direct {p0, v8}, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->setClickListener(Landroid/widget/TextView;)V

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    move-object v6, p2

    check-cast v6, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mEmoticonList:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_2

    const/4 v8, 0x0

    if-ge v4, v0, :cond_1

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    :goto_2
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v10, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemwidth:I

    iget v11, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemheight:I

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v9, 0x1

    iget v10, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mFontSize:F

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v9, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget v9, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemBackgroundResId:I

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    iget v9, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemPaddingLeft:I

    iget v10, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemPaddingTop:I

    iget v11, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemPaddingRight:I

    iget v12, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemPaddingBottom:I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v7, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget v9, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemMarginLeft:I

    iget v10, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemMarginTop:I

    iget v11, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemMarginRight:I

    iget v12, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemMarginBottom:I

    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    new-instance v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v8}, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->setClickListener(Landroid/widget/TextView;)V

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    if-le v0, v1, :cond_3

    add-int/lit8 v4, v0, -0x1

    :goto_3
    if-lt v4, v1, :cond_3

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_3
    return-object v6
.end method

.method public setEmoticonAdapterListener(Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;)V
    .locals 0
    .param p1    # Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;

    iput-object p1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mEmoticonAdapterListener:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;

    return-void
.end method

.method public setEmoticonHeight(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemheight:I

    return-void
.end method

.method public setEmoticonWidth(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemwidth:I

    return-void
.end method

.method public setFontSize(F)V
    .locals 0
    .param p1    # F

    iput p1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mFontSize:F

    return-void
.end method

.method public setItemBackgroundResId(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemBackgroundResId:I

    return-void
.end method

.method public setItemMargin(IIII)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    iput p1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemMarginLeft:I

    iput p2, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemMarginTop:I

    iput p3, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemMarginRight:I

    iput p4, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemMarginBottom:I

    return-void
.end method

.method public setItemPadding(IIII)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    iput p1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemPaddingLeft:I

    iput p2, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemPaddingTop:I

    iput p3, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemPaddingRight:I

    iput p4, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemPaddingBottom:I

    return-void
.end method

.method public setRowPadding(IIII)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    iput p1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mRowPaddingLeft:I

    iput p2, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mRowPaddingTop:I

    iput p3, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mRowPaddingRight:I

    iput p4, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mRowPaddingBottom:I

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1    # Landroid/graphics/Typeface;

    iput-object p1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mTypeface:Landroid/graphics/Typeface;

    return-void
.end method
