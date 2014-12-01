.class public Lcom/android/mms/ui/EmoticonCustomView;
.super Landroid/widget/ListView;
.source "EmoticonCustomView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/EmoticonCustomView"


# instance fields
.field private mCategory:I

.field private mEmoticonAdapterListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mEmoticonsPager:Landroid/support/v4/view/ViewPager;

.field private mItemCountInRow:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/android/mms/ui/EmoticonCustomView;->mCategory:I

    iput-object v2, p0, Lcom/android/mms/ui/EmoticonCustomView;->mEmoticonAdapterListener:Landroid/widget/AdapterView$OnItemClickListener;

    iput v3, p0, Lcom/android/mms/ui/EmoticonCustomView;->mItemCountInRow:I

    iput-object v2, p0, Lcom/android/mms/ui/EmoticonCustomView;->mEmoticonsPager:Landroid/support/v4/view/ViewPager;

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, 0x2000000

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setScrollBarStyle(I)V

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v3}, Landroid/widget/AdapterView;->setFocusable(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/EmoticonCustomView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/EmoticonCustomView;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/EmoticonCustomView;->mItemCountInRow:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/EmoticonCustomView;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/EmoticonCustomView;->mItemCountInRow:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/mms/ui/EmoticonCustomView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/EmoticonCustomView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/EmoticonCustomView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/EmoticonCustomView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/EmoticonCustomView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/EmoticonCustomView;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonCustomView;->mEmoticonAdapterListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/EmoticonCustomView;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/EmoticonCustomView;->mCategory:I

    return v0
.end method


# virtual methods
.method public getEmoticonCountInRow()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->isMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenOrientation()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/16 v0, 0xd

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    goto :goto_0
.end method

.method public setCategory(I)V
    .locals 5

    const-string v2, "Mms/EmoticonCustomView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCategory() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput p1, p0, Lcom/android/mms/ui/EmoticonCustomView;->mCategory:I

    const/4 v2, -0x1

    iget v3, p0, Lcom/android/mms/ui/EmoticonCustomView;->mCategory:I

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFavoriteEmoticons(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/android/mms/ui/EmoticonList;->hasEmojiString(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->unicodeToUTF16(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/mms/ui/EmoticonCustomView;->mCategory:I

    invoke-static {v2}, Lcom/android/mms/ui/EmoticonList;->getEmoticonUTFCategory(I)[Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/EmoticonCustomView;->getEmoticonCountInRow()I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/EmoticonCustomView;->mItemCountInRow:I

    new-instance v2, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v0}, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;-><init>(Lcom/android/mms/ui/EmoticonCustomView;Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setEmoticonsPager(Landroid/support/v4/view/ViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/EmoticonCustomView;->mEmoticonsPager:Landroid/support/v4/view/ViewPager;

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/EmoticonCustomView;->mEmoticonAdapterListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method
