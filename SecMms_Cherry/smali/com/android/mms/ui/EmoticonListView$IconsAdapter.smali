.class public Lcom/android/mms/ui/EmoticonListView$IconsAdapter;
.super Landroid/widget/BaseAdapter;
.source "EmoticonListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/EmoticonListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IconsAdapter"
.end annotation


# instance fields
.field private mTexts:[Ljava/lang/String;

.field private mTextsUTF:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/EmoticonListView;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/EmoticonListView;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/EmoticonListView$IconsAdapter;->this$0:Lcom/android/mms/ui/EmoticonListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/mms/ui/EmoticonListView$IconsAdapter;->mTexts:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/ui/EmoticonListView$IconsAdapter;->mTextsUTF:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonListView$IconsAdapter;->mTexts:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonListView$IconsAdapter;->mTexts:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonListView$IconsAdapter;->mTexts:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    if-nez p2, :cond_0

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v1, 0x1

    const/high16 v2, 0x41f00000

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/EmoticonListView$IconsAdapter;->mTextsUTF:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonListView$IconsAdapter;->mTextsUTF:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/EmoticonListView$IconsAdapter;->mTexts:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/EmoticonListView$IconsAdapter;->mTexts:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->unicodeToUTF16(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setData([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/EmoticonListView$IconsAdapter;->mTexts:[Ljava/lang/String;

    return-void
.end method
