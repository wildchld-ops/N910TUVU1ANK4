.class public Lcom/android/mms/ui/RecipientFilterItem;
.super Landroid/widget/LinearLayout;
.source "RecipientFilterItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/RecipientFilterItem$1;,
        Lcom/android/mms/ui/RecipientFilterItem$PhotoQuery;,
        Lcom/android/mms/ui/RecipientFilterItem$ContactProfileSyncTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/RecipientFilterItem"


# instance fields
.field private mAdapter:Lcom/android/mms/ui/RecipientsAdapter;

.field private mAvatar:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mDivider:Landroid/widget/ImageView;

.field private mImageLoadingTask:Lcom/android/mms/ui/RecipientFilterItem$ContactProfileSyncTask;

.field private mLabel:Landroid/widget/TextView;

.field private mName:Landroid/widget/TextView;

.field private mNumber:Landroid/widget/TextView;

.field private mSelectedNameSpan:Landroid/text/style/ForegroundColorSpan;

.field private mSelectedNumberSpan:Landroid/text/style/ForegroundColorSpan;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/RecipientFilterItem;->mImageLoadingTask:Lcom/android/mms/ui/RecipientFilterItem$ContactProfileSyncTask;

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v1, -0xff7b5b

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientFilterItem;->mSelectedNumberSpan:Landroid/text/style/ForegroundColorSpan;

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientFilterItem;->mSelectedNameSpan:Landroid/text/style/ForegroundColorSpan;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/RecipientFilterItem;->mImageLoadingTask:Lcom/android/mms/ui/RecipientFilterItem$ContactProfileSyncTask;

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v1, -0xff7b5b

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientFilterItem;->mSelectedNumberSpan:Landroid/text/style/ForegroundColorSpan;

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientFilterItem;->mSelectedNameSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/RecipientFilterItem;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/RecipientFilterItem;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/RecipientFilterItem;->mAvatar:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/RecipientFilterItem;)Lcom/android/mms/ui/RecipientsAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/RecipientFilterItem;->mAdapter:Lcom/android/mms/ui/RecipientsAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/RecipientFilterItem;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/RecipientFilterItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private findSearchKeywordPosition(Ljava/util/regex/Pattern;Ljava/lang/String;[I)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    aput v4, p3, v3

    aget v3, p3, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    aput v3, p3, v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePinyinSearch()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    aget v3, p3, v2

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_0

    aget v3, p3, v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    aget v3, p3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x900

    if-lt v3, v4, :cond_0

    aget v3, p3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xbff

    if-ge v3, v4, :cond_0

    aget v3, p3, v2

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/RecipientFilterItem;->isDependentVowel(C)Z

    move-result v3

    if-eqz v3, :cond_0

    aget v3, p3, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, p3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method private isDependentVowel(C)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x93a -> :sswitch_0
        0x93b -> :sswitch_0
        0x93e -> :sswitch_0
        0x93f -> :sswitch_0
        0x940 -> :sswitch_0
        0x941 -> :sswitch_0
        0x942 -> :sswitch_0
        0x943 -> :sswitch_0
        0x944 -> :sswitch_0
        0x945 -> :sswitch_0
        0x946 -> :sswitch_0
        0x947 -> :sswitch_0
        0x948 -> :sswitch_0
        0x949 -> :sswitch_0
        0x94a -> :sswitch_0
        0x94b -> :sswitch_0
        0x94c -> :sswitch_0
        0x94d -> :sswitch_0
        0x94e -> :sswitch_0
        0x94f -> :sswitch_0
        0x9be -> :sswitch_0
        0x9bf -> :sswitch_0
        0x9c0 -> :sswitch_0
        0x9c1 -> :sswitch_0
        0x9c2 -> :sswitch_0
        0x9c3 -> :sswitch_0
        0x9c4 -> :sswitch_0
        0x9c5 -> :sswitch_0
        0x9c6 -> :sswitch_0
        0x9c7 -> :sswitch_0
        0x9c8 -> :sswitch_0
        0x9cb -> :sswitch_0
        0x9cc -> :sswitch_0
        0xa3e -> :sswitch_0
        0xa3f -> :sswitch_0
        0xa40 -> :sswitch_0
        0xa41 -> :sswitch_0
        0xa42 -> :sswitch_0
        0xa43 -> :sswitch_0
        0xa44 -> :sswitch_0
        0xa45 -> :sswitch_0
        0xa46 -> :sswitch_0
        0xa47 -> :sswitch_0
        0xa48 -> :sswitch_0
        0xa49 -> :sswitch_0
        0xa4a -> :sswitch_0
        0xa4b -> :sswitch_0
        0xa4c -> :sswitch_0
        0xabe -> :sswitch_0
        0xabf -> :sswitch_0
        0xac0 -> :sswitch_0
        0xac1 -> :sswitch_0
        0xac2 -> :sswitch_0
        0xac3 -> :sswitch_0
        0xac4 -> :sswitch_0
        0xac5 -> :sswitch_0
        0xac6 -> :sswitch_0
        0xac7 -> :sswitch_0
        0xac8 -> :sswitch_0
        0xac9 -> :sswitch_0
        0xaca -> :sswitch_0
        0xacb -> :sswitch_0
        0xacc -> :sswitch_0
        0xb3e -> :sswitch_0
        0xb3f -> :sswitch_0
        0xb40 -> :sswitch_0
        0xb41 -> :sswitch_0
        0xb42 -> :sswitch_0
        0xb43 -> :sswitch_0
        0xb44 -> :sswitch_0
        0xb45 -> :sswitch_0
        0xb46 -> :sswitch_0
        0xb47 -> :sswitch_0
        0xb48 -> :sswitch_0
        0xb4b -> :sswitch_0
        0xb4c -> :sswitch_0
        0xbbe -> :sswitch_0
        0xbbf -> :sswitch_0
        0xbc0 -> :sswitch_0
        0xbc1 -> :sswitch_0
        0xbc2 -> :sswitch_0
        0xbc3 -> :sswitch_0
        0xbc4 -> :sswitch_0
        0xbc5 -> :sswitch_0
        0xbc6 -> :sswitch_0
        0xbc7 -> :sswitch_0
        0xbc8 -> :sswitch_0
        0xbca -> :sswitch_0
        0xbcb -> :sswitch_0
        0xbcc -> :sswitch_0
        0xc3e -> :sswitch_0
        0xc3f -> :sswitch_0
        0xc40 -> :sswitch_0
        0xc41 -> :sswitch_0
        0xc42 -> :sswitch_0
        0xc43 -> :sswitch_0
        0xc44 -> :sswitch_0
        0xc45 -> :sswitch_0
        0xc46 -> :sswitch_0
        0xc47 -> :sswitch_0
        0xc48 -> :sswitch_0
        0xc49 -> :sswitch_0
        0xc4a -> :sswitch_0
        0xc4b -> :sswitch_0
        0xc4c -> :sswitch_0
        0xcbe -> :sswitch_0
        0xcbf -> :sswitch_0
        0xcc0 -> :sswitch_0
        0xcc1 -> :sswitch_0
        0xcc2 -> :sswitch_0
        0xcc3 -> :sswitch_0
        0xcc4 -> :sswitch_0
        0xcc5 -> :sswitch_0
        0xcc6 -> :sswitch_0
        0xcc7 -> :sswitch_0
        0xcc8 -> :sswitch_0
        0xcc9 -> :sswitch_0
        0xcca -> :sswitch_0
        0xccb -> :sswitch_0
        0xccc -> :sswitch_0
        0xce2 -> :sswitch_0
        0xce3 -> :sswitch_0
        0xd3e -> :sswitch_0
        0xd40 -> :sswitch_0
        0xd41 -> :sswitch_0
        0xd42 -> :sswitch_0
        0xd43 -> :sswitch_0
        0xd44 -> :sswitch_0
        0xd45 -> :sswitch_0
        0xd46 -> :sswitch_0
        0xd47 -> :sswitch_0
        0xd48 -> :sswitch_0
        0xd62 -> :sswitch_0
        0xd63 -> :sswitch_0
        0xdef -> :sswitch_0
    .end sparse-switch
.end method

.method private simpleReplaceInvalidPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bind(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 27

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/RecipientFilterItem;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mCursor:Landroid/database/Cursor;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mAdapter:Lcom/android/mms/ui/RecipientsAdapter;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/android/mms/ui/RecipientsAdapter;->setRecipientsListishowing(Z)V

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mCursor:Landroid/database/Cursor;

    move-object/from16 v23, v0

    const/16 v24, 0x6

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mCursor:Landroid/database/Cursor;

    move-object/from16 v23, v0

    const/16 v24, 0x7

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/4 v15, 0x0

    if-eqz v21, :cond_7

    :try_start_0
    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    :goto_0
    const/4 v7, 0x0

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mAdapter:Lcom/android/mms/ui/RecipientsAdapter;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mAdapter:Lcom/android/mms/ui/RecipientsAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/ui/RecipientsAdapter;->getCache()Landroid/util/LruCache;

    move-result-object v23

    if-eqz v23, :cond_0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mAdapter:Lcom/android/mms/ui/RecipientsAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/ui/RecipientsAdapter;->getCache()Landroid/util/LruCache;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [B

    if-eqz v16, :cond_0

    const/4 v7, 0x1

    :cond_0
    if-nez v7, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mAvatar:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getPosition()I

    move-result v25

    invoke-static/range {v24 .. v25}, Lcom/android/mms/ui/MessageUtils;->getContactImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableYellowPage()Z

    move-result v23

    if-eqz v23, :cond_1

    if-eqz v21, :cond_1

    const-string v23, "yellowpage"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mAvatar:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f020077

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mImageLoadingTask:Lcom/android/mms/ui/RecipientFilterItem$ContactProfileSyncTask;

    move-object/from16 v23, v0

    if-nez v23, :cond_8

    new-instance v23, Lcom/android/mms/ui/RecipientFilterItem$ContactProfileSyncTask;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/RecipientFilterItem$ContactProfileSyncTask;-><init>(Lcom/android/mms/ui/RecipientFilterItem;Lcom/android/mms/ui/RecipientFilterItem$1;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/RecipientFilterItem;->mImageLoadingTask:Lcom/android/mms/ui/RecipientFilterItem$ContactProfileSyncTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mImageLoadingTask:Lcom/android/mms/ui/RecipientFilterItem$ContactProfileSyncTask;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Landroid/net/Uri;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v15, v24, v25

    invoke-virtual/range {v23 .. v24}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    const-string v23, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mCursor:Landroid/database/Cursor;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    invoke-interface/range {v24 .. v25}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move/from16 v1, v22

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v23

    if-eqz v23, :cond_2

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-interface {v9, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v23

    const/16 v24, 0xa0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mLabel:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableYellowPage()Z

    move-result v23

    if-eqz v23, :cond_3

    if-eqz v21, :cond_3

    const-string v23, "yellowpage"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mLabel:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mLabel:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mCursor:Landroid/database/Cursor;

    move-object/from16 v23, v0

    const/16 v24, 0x5

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mCursor:Landroid/database/Cursor;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/mms/data/Contact;->getEmptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/mms/ui/RecipientFilterItem;->simpleReplaceInvalidPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mName:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mAdapter:Lcom/android/mms/ui/RecipientsAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mAdapter:Lcom/android/mms/ui/RecipientsAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/mms/ui/RecipientsAdapter;->getPatternStringKor()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toCharArray()[C

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/mms/ui/RecipientsAdapter;->setHighlightedPrefix([C)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mName:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mAdapter:Lcom/android/mms/ui/RecipientsAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/mms/ui/RecipientsAdapter;->getHighlightedPrefix()[C

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v12, v1}, Landroid/text/TextUtils;->getPrefixCharForIndian(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v17

    const/4 v14, 0x0

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v8, v0, [I

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableChoseongSearch()Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mAdapter:Lcom/android/mms/ui/RecipientsAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/ui/RecipientsAdapter;->getPatternStringKor()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/mms/util/HangulUtils;->isIncludingKorean(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mAdapter:Lcom/android/mms/ui/RecipientsAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/ui/RecipientsAdapter;->getPatternStringKor()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/mms/util/HangulUtils;->haveKoreanConsonants(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mAdapter:Lcom/android/mms/ui/RecipientsAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/ui/RecipientsAdapter;->getPatternStringKor()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/mms/util/HangulUtils;->getConsonants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    invoke-static {v12}, Lcom/android/mms/util/HangulUtils;->getConsonants(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v10, v8}, Lcom/android/mms/ui/RecipientFilterItem;->findSearchKeywordPosition(Ljava/util/regex/Pattern;Ljava/lang/String;[I)Z

    move-result v23

    if-eqz v23, :cond_10

    if-eqz v17, :cond_4

    const/16 v23, 0x1

    const/16 v24, 0x0

    aget v24, v8, v24

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    add-int v24, v24, v25

    aput v24, v8, v23

    :cond_4
    new-instance v18, Landroid/text/SpannableString;

    move-object/from16 v0, v18

    invoke-direct {v0, v12}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mSelectedNumberSpan:Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget v24, v8, v24

    const/16 v25, 0x1

    aget v25, v8, v25

    const/16 v26, 0x21

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mName:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v14, v1, v8}, Lcom/android/mms/ui/RecipientFilterItem;->findSearchKeywordPosition(Ljava/util/regex/Pattern;Ljava/lang/String;[I)Z

    move-result v23

    if-eqz v23, :cond_12

    new-instance v18, Landroid/text/SpannableString;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mSelectedNumberSpan:Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget v24, v8, v24

    const/16 v25, 0x1

    aget v25, v8, v25

    const/16 v26, 0x21

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mNumber:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableRecipientSearchByCharMatchingDigit()Z

    move-result v23

    if-nez v23, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mLabel:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getVisibility()I

    move-result v23

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    new-instance v19, Landroid/text/SpannableString;

    move-object/from16 v0, v19

    invoke-direct {v0, v12}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v20, Landroid/text/SpannableString;

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mSelectedNumberSpan:Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x21

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mSelectedNameSpan:Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x21

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mName:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mNumber:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisplayRecipientVzwLayout()Z

    move-result v23

    if-eqz v23, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mName:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/high16 v25, 0x41900000

    invoke-virtual/range {v23 .. v25}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mNumber:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f09000f

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getColor(I)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mNumber:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/high16 v25, 0x41800000

    invoke-virtual/range {v23 .. v25}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_6
    :goto_7
    return-void

    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mImageLoadingTask:Lcom/android/mms/ui/RecipientFilterItem$ContactProfileSyncTask;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/RecipientFilterItem;->mImageLoadingTask:Lcom/android/mms/ui/RecipientFilterItem$ContactProfileSyncTask;

    new-instance v23, Lcom/android/mms/ui/RecipientFilterItem$ContactProfileSyncTask;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/RecipientFilterItem$ContactProfileSyncTask;-><init>(Lcom/android/mms/ui/RecipientFilterItem;Lcom/android/mms/ui/RecipientFilterItem$1;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/RecipientFilterItem;->mImageLoadingTask:Lcom/android/mms/ui/RecipientFilterItem$ContactProfileSyncTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mImageLoadingTask:Lcom/android/mms/ui/RecipientFilterItem$ContactProfileSyncTask;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Landroid/net/Uri;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v15, v24, v25

    invoke-virtual/range {v23 .. v24}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    :cond_9
    const-string v23, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mCursor:Landroid/database/Cursor;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    invoke-interface/range {v24 .. v25}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move/from16 v1, v22

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    goto/16 :goto_2

    :cond_a
    const-string v9, ""

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mLabel:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisplayRecipientVzwLayout()Z

    move-result v23

    if-eqz v23, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mLabel:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/high16 v25, 0x41800000

    invoke-virtual/range {v23 .. v25}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_c
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mLabel:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f09000f

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getColor(I)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mLabel:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/mms/MmsConfig;->getEnableEasyMode(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mLabel:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/high16 v25, 0x41a00000

    invoke-virtual/range {v23 .. v25}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_8

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mAdapter:Lcom/android/mms/ui/RecipientsAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/ui/RecipientsAdapter;->getPatternString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mAdapter:Lcom/android/mms/ui/RecipientsAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/ui/RecipientsAdapter;->getPatternString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_4

    :cond_10
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePinyinSearch()Z

    move-result v23

    if-eqz v23, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mAdapter:Lcom/android/mms/ui/RecipientsAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/ui/RecipientsAdapter;->getChineseHighlightHelper()Lcom/android/mms/encoding/ChineseHighlightHelper;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mAdapter:Lcom/android/mms/ui/RecipientsAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/mms/ui/RecipientsAdapter;->getPatternString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mAdapter:Lcom/android/mms/ui/RecipientsAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/ui/RecipientsAdapter;->getPatternStringRaw()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mName:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v12, v3}, Lcom/android/mms/encoding/ChineseHighlightHelper;->findHighlight(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;)V

    goto/16 :goto_5

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mName:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mNumber:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/mms/MmsConfig;->getEnableEasyMode(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mName:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/high16 v25, 0x41b00000

    invoke-virtual/range {v23 .. v25}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RecipientFilterItem;->mNumber:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/high16 v25, 0x41a00000

    invoke-virtual/range {v23 .. v25}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_7
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0b005b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/RecipientFilterItem;->mName:Landroid/widget/TextView;

    const v0, 0x7f0b0305

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/RecipientFilterItem;->mLabel:Landroid/widget/TextView;

    const v0, 0x7f0b0304

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/RecipientFilterItem;->mNumber:Landroid/widget/TextView;

    const v0, 0x7f0b0301

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/RecipientFilterItem;->mAvatar:Landroid/widget/ImageView;

    const v0, 0x7f0b0306

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/RecipientFilterItem;->mDivider:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/mms/MmsConfig;->isWhiteTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/RecipientFilterItem;->mDivider:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/RecipientFilterItem;->mDivider:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setAdapter(Lcom/android/mms/ui/RecipientsAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/RecipientFilterItem;->mAdapter:Lcom/android/mms/ui/RecipientsAdapter;

    return-void
.end method
