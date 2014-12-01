.class public Lcom/android/mms/ui/ViewTitleHeader;
.super Landroid/widget/LinearLayout;
.source "ViewTitleHeader.java"


# static fields
.field static final CACHE_SIZE:I = 0x32


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field mCursor:Landroid/database/Cursor;

.field mDisplayAddress:Ljava/lang/String;

.field mMsgID:J

.field mMsgItem:Lcom/android/mms/ui/MessageItem;

.field mMsgType:Ljava/lang/String;

.field mTitleIcon01:Landroid/widget/ImageView;

.field mTitleIcon02:Landroid/widget/ImageView;

.field mTitleIcon03:Landroid/widget/ImageView;

.field mTitleSender:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private createViewTitleHeader()V
    .locals 4

    const/16 v1, 0x8

    const v0, 0x7f0b03bd

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon01:Landroid/widget/ImageView;

    const v0, 0x7f0b03be

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon02:Landroid/widget/ImageView;

    const v0, 0x7f0b03bf

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon03:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon01:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon02:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon03:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/mms/ui/ViewTitleHeader;->setTitleSender()V

    iget-wide v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ViewTitleHeader;->setTitleIcon()V

    :cond_0
    return-void
.end method

.method private setTitleIcon()V
    .locals 7

    const/4 v6, 0x0

    const-wide/16 v0, 0x0

    const-string v2, "ViewTitleHeader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTitleIcon,mMsgType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "wpm"

    iget-object v3, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgType:Ljava/lang/String;

    iget-wide v3, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgID:J

    iget-object v5, p0, Lcom/android/mms/ui/ViewTitleHeader;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->isLockmessage(Ljava/lang/String;JLandroid/content/ContentResolver;)J

    move-result-wide v0

    :cond_0
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon02:Landroid/widget/ImageView;

    const v3, 0x7f020296

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon02:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon01:Landroid/widget/ImageView;

    const v3, 0x7f020295

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon01:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDisplaySimIcon()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mSimSlotForIcon:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon03:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/mms/ui/ViewTitleHeader;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v4, v4, Lcom/android/mms/ui/MessageItem;->mSimSlotForIcon:I

    const/4 v5, 0x2

    invoke-static {v3, v4, v5, v6}, Lcom/android/mms/ui/MessageUtils;->getSimIcon(Landroid/content/Context;IIZ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon03:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private setTitleSender()V
    .locals 4

    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mDisplayAddress:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "mms"

    iget-object v1, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0045

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mDisplayAddress:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mContext:Landroid/content/Context;

    const v1, 0x7f0c000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mDisplayAddress:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public ViewTitleHeaderCreate(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V
    .locals 10

    iput-object p1, p0, Lcom/android/mms/ui/ViewTitleHeader;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mContentResolver:Landroid/content/ContentResolver;

    iput-wide p3, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgID:J

    iput-object p5, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgType:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgID:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    const-string v4, ""

    iget-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v6, v6, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v5, ""

    iget-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v6, v6, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    invoke-static {p1, v6, v7}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ";"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v6, v1

    if-ge v2, v6, :cond_0

    aget-object v6, v1, v2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    const/4 v6, 0x0

    invoke-static {v0, v6}, Lcom/android/mms/data/Contact;->get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    iput-object v4, p0, Lcom/android/mms/ui/ViewTitleHeader;->mDisplayAddress:Ljava/lang/String;

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/ViewTitleHeader;->createViewTitleHeader()V

    return-void

    :cond_3
    const-string v6, "mms"

    iget-object v7, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v6, :cond_4

    const v6, 0x7f0c000d

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v7, v7, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mContext:Landroid/content/Context;

    invoke-static {v6, p3, p4}, Lcom/android/mms/ui/MessageUtils;->getViewTitleStrings(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcom/android/mms/data/Contact;->get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mDisplayAddress:Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v6, v6, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    const v6, 0x7f0c013b

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mDisplayAddress:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v6, v6, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v6, v6, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mDisplayAddress:Ljava/lang/String;

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v6, v6, Lcom/android/mms/ui/MessageItem;->mIsCbSms:Z

    if-eqz v6, :cond_7

    const v6, 0x7f0c0100

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mDisplayAddress:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v6, v6, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    const v6, 0x7f0c013b

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mDisplayAddress:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    iget-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v6, v6, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/ViewTitleHeader;->mDisplayAddress:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public getSenderString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mDisplayAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibleIconCount()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon01:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon01:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon02:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon02:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon03:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon03:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    return v0
.end method

.method public isNeededVisible()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon01:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon01:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon02:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon02:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon03:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon03:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon01:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon01:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon02:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon02:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v4, :cond_2

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public setFailedeIcon(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon01:Landroid/widget/ImageView;

    const v1, 0x7f020295

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon01:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon01:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setLockIcon(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon02:Landroid/widget/ImageView;

    const v1, 0x7f020296

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon02:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ViewTitleHeader;->mTitleIcon02:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
