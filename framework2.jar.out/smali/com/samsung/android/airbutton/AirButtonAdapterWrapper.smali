.class public Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;
.super Ljava/lang/Object;
.source "AirButtonAdapterWrapper.java"


# instance fields
.field private mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

.field private mAttrs:Lcom/samsung/android/airbutton/Attributes;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsParentThemeDeviceDefault:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;Lcom/samsung/android/airbutton/Attributes;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mIsParentThemeDeviceDefault:Z

    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    iput-object p3, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    if-eqz p1, :cond_0

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101046a

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mIsParentThemeDeviceDefault:Z

    :cond_0
    return-void
.end method

.method private getDummyView()Landroid/view/View;
    .locals 4

    const/4 v3, -0x2

    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "You set wrong data for this UI type"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private getListView(I)Landroid/view/View;
    .locals 12

    const/4 v3, 0x0

    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    if-nez v9, :cond_0

    move-object v4, v3

    :goto_0
    return-object v4

    :cond_0
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v9, v9, Lcom/samsung/android/airbutton/Attributes;->dataType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    rem-int/lit8 v9, p1, 0x2

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x1090025

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    :goto_1
    const v9, 0x10202e5

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v9, p1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getItem(I)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v2, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    move-object v4, v3

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x1090026

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    :cond_3
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v9, v9, Lcom/samsung/android/airbutton/Attributes;->dataType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    rem-int/lit8 v9, p1, 0x2

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x109002e

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    :goto_3
    const v9, 0x10202ed

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_4

    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v9, p1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getItem(I)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v2, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_5
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x109002d

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_3

    :cond_6
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v9, v9, Lcom/samsung/android/airbutton/Attributes;->dataType:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_f

    rem-int/lit8 v9, p1, 0x2

    if-nez v9, :cond_b

    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x109002b

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    :goto_4
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v9, p1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getItem(I)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    move-result-object v1

    const v9, 0x10202e9

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    const v9, 0x10202ea

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v9, 0x10202eb

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v9, 0x10202ec

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getSubDescription()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_c

    if-eqz v7, :cond_8

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_8
    if-eqz v8, :cond_9

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getSubDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_9
    if-eqz v6, :cond_a

    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    :goto_5
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v2, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    :cond_b
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x109002c

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_4

    :cond_c
    if-eqz v6, :cond_d

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_d
    if-eqz v7, :cond_e

    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    if-eqz v8, :cond_a

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_f
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "You set wrong data type. You should set correct data set for this UI type"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method private getMenuView(I)Landroid/view/View;
    .locals 13

    const/4 v12, 0x0

    const/16 v11, 0x8

    const/4 v10, 0x0

    const/4 v9, -0x2

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    if-nez v7, :cond_0

    move-object v5, v4

    :goto_0
    return-object v5

    :cond_0
    iget-object v7, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    iget-object v7, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x1090029

    invoke-virtual {v7, v8, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    :goto_1
    const v7, 0x10202e8

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v7, 0x10202e6

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v7, 0x10202e7

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v7, p1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getItem(I)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getSubDescription()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "You set wrong data type. You can\'t use SubDescription for UI_MENU_TYPE"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x109002a

    invoke-virtual {v7, v8, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->dataType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    if-eqz v0, :cond_3

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    move-object v5, v4

    goto :goto_0

    :cond_6
    iget-object v7, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->dataType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_a

    if-eqz v1, :cond_7

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    if-eqz v6, :cond_9

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_9
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_a
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "You set wrong data type. You can\'t use only text data for UI_MENU_TYPE"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->getListView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->getMenuView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
