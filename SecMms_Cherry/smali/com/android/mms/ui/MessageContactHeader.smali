.class public Lcom/android/mms/ui/MessageContactHeader;
.super Landroid/widget/LinearLayout;
.source "MessageContactHeader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MessageContactHeader"


# instance fields
.field private mContactList:Lcom/android/mms/data/ContactList;

.field protected mContactUri:Landroid/net/Uri;

.field protected mExcludeMimes:[Ljava/lang/String;

.field private mNameView:Landroid/widget/TextView;

.field private mRecipientStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MessageContactHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mExcludeMimes:[Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mRecipientStr:Ljava/lang/String;

    iput-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bindContactHeader(Lcom/android/mms/data/ContactList;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x1

    iput-object p1, p0, Lcom/android/mms/ui/MessageContactHeader;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    if-nez p1, :cond_0

    :goto_0
    return v3

    :cond_0
    const-string v2, ""

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v4, :cond_7

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CBmessages"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0100

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageContactHeader;->setDisplayName(Ljava/lang/CharSequence;)V

    move v3, v4

    goto :goto_0

    :cond_2
    const-string v3, "Pushmessage"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0163

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    const-string v3, "Unknown address"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v5, 0x7f0c013b

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isCmasPrefix(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategoryStringId(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isVZWHiddenContact(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v2, "Verizon Global Support"

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v4, :cond_1

    const-string v3, ", "

    invoke-virtual {p1, v3}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public getRecipientString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mRecipientStr:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 1

    const v0, 0x7f0b01f5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mNameView:Landroid/widget/TextView;

    return-void
.end method

.method public setContactList(Lcom/android/mms/data/ContactList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageContactHeader;->mContactList:Lcom/android/mms/data/ContactList;

    return-void
.end method

.method public setDisplayName(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mRecipientStr:Ljava/lang/String;

    :cond_0
    return-void
.end method
