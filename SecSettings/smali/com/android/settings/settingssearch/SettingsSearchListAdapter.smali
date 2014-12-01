.class public Lcom/android/settings/settingssearch/SettingsSearchListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SettingsSearchListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/settingssearch/SettingsSearchItem;",
        ">;"
    }
.end annotation


# static fields
.field private static mSupportHistory:Z


# instance fields
.field private final MENU_TYPE_DIABLE_FLAG:I

.field private final MENU_TYPE_MASK_FLAG:I

.field mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mContext:Landroid/content/Context;

.field private mKeyWord:Ljava/lang/String;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mResourceId:I

.field private mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mSupportHistory:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[Lcom/android/settings/settingssearch/SettingsSearchItem;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mKeyWord:Ljava/lang/String;

    const/16 v0, 0x100

    iput v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->MENU_TYPE_DIABLE_FLAG:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->MENU_TYPE_MASK_FLAG:I

    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$1;-><init>(Lcom/android/settings/settingssearch/SettingsSearchListAdapter;)V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$2;-><init>(Lcom/android/settings/settingssearch/SettingsSearchListAdapter;)V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;

    iput p2, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mResourceId:I

    iput-object p4, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mKeyWord:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mSupportHistory:Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/settingssearch/SettingsSearchListAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mSupportHistory:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/settingssearch/SettingsSearchListAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->setHistoryMenu(Ljava/lang/String;)V

    return-void
.end method

.method private getPrefixCharForIndianString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v0, p2, v3}, Landroid/text/TextUtils;->getPrefixCharForIndian(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private getSpannableTextIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const/4 v1, -0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "zh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ko"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_2

    const/4 v1, -0x1

    :cond_2
    return v1

    :cond_3
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private setHistoryMenu(Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    const-string v4, "search_history"

    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-interface {v0, p1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Lcom/android/settings/settingssearch/SettingsSearchItem;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->getItem(I)Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0d004e

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-object/from16 v28, v0

    if-eqz v28, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    if-nez v28, :cond_1

    :cond_0
    const/16 v19, 0x0

    :goto_0
    return-object v19

    :cond_1
    move-object/from16 v19, p2

    if-nez v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v29, "layout_inflater"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mResourceId:I

    move/from16 v28, v0

    const/16 v29, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    new-instance v13, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;

    const/16 v28, 0x0

    move-object/from16 v0, v28

    invoke-direct {v13, v0}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;-><init>(Lcom/android/settings/settingssearch/SettingsSearchListAdapter$1;)V

    const v28, 0x7f0b0533

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    move-object/from16 v0, v28

    iput-object v0, v13, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->tvMenuTitlte:Landroid/widget/TextView;

    const v28, 0x7f0b0534

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    move-object/from16 v0, v28

    iput-object v0, v13, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->tvMenuSummary:Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mSearchList:[Lcom/android/settings/settingssearch/SettingsSearchItem;

    move-object/from16 v28, v0

    aget-object v12, v28, p1

    if-eqz v12, :cond_12

    iget v0, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->iconResId:I

    move/from16 v28, v0

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_4

    const v28, 0x7f0b0536

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageView;

    move-object/from16 v0, v28

    iput-object v0, v13, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->ivMenuIcon:Landroid/widget/ImageView;

    iget-object v0, v13, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->ivMenuIcon:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    iget v0, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->iconResId:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v13, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->ivMenuIcon:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    const v28, 0x7f0b0532

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mKeyWord:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mKeyWord:Ljava/lang/String;

    :goto_3
    const/16 v24, 0x0

    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->title:Ljava/lang/String;

    move-object/from16 v28, v0

    if-nez v28, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    iget-wide v0, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->titleResId:J

    move-wide/from16 v29, v0

    move-wide/from16 v0, v29

    long-to-int v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    :goto_4
    new-instance v21, Landroid/text/SpannableString;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-string v28, " "

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v10, -0x1

    const/16 v16, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_5
    array-length v0, v6

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v9, v0, :cond_9

    iget-object v0, v13, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->tvMenuTitlte:Landroid/widget/TextView;

    move-object/from16 v28, v0

    aget-object v29, v6, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v24

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->getPrefixCharForIndianString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_7

    aget-object v28, v6, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->getSpannableTextIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    aget-object v28, v6, v9

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v10, v0, :cond_2

    new-instance v28, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, v28

    invoke-direct {v0, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v29, v16, v10

    const/16 v30, 0x12

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-interface {v0, v1, v10, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_3
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;

    goto/16 :goto_1

    :cond_4
    const v28, 0x7f0b0536

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageView;

    move-object/from16 v0, v28

    iput-object v0, v13, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->ivMenuIcon:Landroid/widget/ImageView;

    iget-object v0, v13, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->ivMenuIcon:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_5
    const-string v14, ""

    goto/16 :goto_3

    :cond_6
    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->title:Ljava/lang/String;

    move-object/from16 v24, v0

    goto/16 :goto_4

    :cond_7
    const/16 v22, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v26, v24

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v28

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_8

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v28

    add-int v7, v22, v28

    :goto_7
    if-ltz v22, :cond_2

    new-instance v28, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, v28

    invoke-direct {v0, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v29, v22, v5

    add-int v30, v7, v5

    const/16 v31, 0x21

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    add-int/2addr v5, v7

    goto :goto_6

    :cond_8
    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v28

    add-int v7, v22, v28

    goto :goto_7

    :cond_9
    iget-object v0, v13, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->tvMenuTitlte:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v13, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->tvMenuTitlte:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 v23, 0x0

    const/4 v5, 0x0

    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    move-object/from16 v28, v0

    if-nez v28, :cond_c

    iget-wide v0, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->summaryResId:J

    move-wide/from16 v28, v0

    const-wide/16 v30, -0x1

    cmp-long v28, v28, v30

    if-eqz v28, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    iget-wide v0, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->summaryResId:J

    move-wide/from16 v29, v0

    move-wide/from16 v0, v29

    long-to-int v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    :cond_a
    :goto_8
    new-instance v20, Landroid/text/SpannableString;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v9, 0x0

    :goto_9
    array-length v0, v6

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v9, v0, :cond_f

    iget-object v0, v13, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->tvMenuSummary:Landroid/widget/TextView;

    move-object/from16 v28, v0

    aget-object v29, v6, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v23

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->getPrefixCharForIndianString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_d

    aget-object v28, v6, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->getSpannableTextIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    aget-object v28, v6, v9

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v10, v0, :cond_b

    new-instance v28, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, v28

    invoke-direct {v0, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v29, v16, v10

    const/16 v30, 0x12

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-interface {v0, v1, v10, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_b
    :goto_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_c
    iget-object v0, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    move-object/from16 v23, v0

    goto :goto_8

    :cond_d
    const/16 v22, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v26, v23

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v28

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_e

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v28

    add-int v7, v22, v28

    :goto_b
    if-ltz v22, :cond_b

    new-instance v28, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, v28

    invoke-direct {v0, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v29, v22, v5

    add-int v30, v7, v5

    const/16 v31, 0x21

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    add-int/2addr v5, v7

    goto :goto_a

    :cond_e
    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v28

    add-int v7, v22, v28

    goto :goto_b

    :cond_f
    const-string v28, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_10

    iget-object v0, v13, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->tvMenuSummary:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v13, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->tvMenuSummary:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_10
    const v28, 0x7f0b0535

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewGroup;->removeAllViews()V

    iget v0, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    move/from16 v28, v0

    and-int/lit8 v28, v28, 0x3

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_14

    new-instance v28, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v28

    iput-object v0, v13, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    iget-object v0, v13, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v28, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v13, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, v13, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v13, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v29, v0

    iget v0, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->value:I

    move/from16 v28, v0

    if-eqz v28, :cond_13

    const/16 v28, 0x1

    :goto_c
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, v13, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget v0, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    move/from16 v28, v0

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0x100

    move/from16 v28, v0

    const/16 v29, 0x100

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    iget-object v0, v13, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->checkboxMenuType:Landroid/widget/CheckBox;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_11
    :goto_d
    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_13
    const/16 v28, 0x0

    goto :goto_c

    :cond_14
    iget v0, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    move/from16 v28, v0

    and-int/lit8 v28, v28, 0x3

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_16

    new-instance v28, Landroid/widget/Switch;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v28

    iput-object v0, v13, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    iget-object v0, v13, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v28, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v13, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v13, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, v13, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v29, v0

    iget v0, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->value:I

    move/from16 v28, v0

    if-eqz v28, :cond_15

    const/16 v28, 0x1

    :goto_e
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, v13, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget v0, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    move/from16 v28, v0

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0x100

    move/from16 v28, v0

    const/16 v29, 0x100

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    iget-object v0, v13, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->switchMenuType:Landroid/widget/Switch;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_d

    :cond_15
    const/16 v28, 0x0

    goto :goto_e

    :cond_16
    iget v0, v12, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    move/from16 v28, v0

    and-int/lit8 v28, v28, 0x3

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v29, "layout_inflater"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    const v28, 0x7f040205

    const/16 v29, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_d
.end method
