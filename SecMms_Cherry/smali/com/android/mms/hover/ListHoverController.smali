.class public Lcom/android/mms/hover/ListHoverController;
.super Ljava/lang/Object;
.source "ListHoverController.java"

# interfaces
.implements Landroid/widget/HoverPopupWindow$HoverPopupListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/hover/ListHoverController$PostTaskCallBack;
    }
.end annotation


# static fields
.field public static final LIST_HOVER_TYPE_FROM_AND_SUBJECT:I = 0x0

.field public static final LIST_HOVER_TYPE_TEXTVIEW_IDS:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mListHoverType:I

.field private mPostTask:Lcom/android/mms/hover/ListHoverController$PostTaskCallBack;

.field private mShowStylusHoverPopup:Z

.field private mTextViewIds:[I

.field private mUseCustomHoverPopupSize:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/mms/hover/ListHoverController;->mUseCustomHoverPopupSize:Z

    iput-boolean v0, p0, Lcom/android/mms/hover/ListHoverController;->mShowStylusHoverPopup:Z

    iput-object p1, p0, Lcom/android/mms/hover/ListHoverController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private makeHoverText(Landroid/view/View;[I)Ljava/lang/StringBuffer;
    .locals 7
    .param p1    # Landroid/view/View;
    .param p2    # [I

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-object v1

    :cond_1
    move-object v0, p2

    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget v3, v0, v2

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_2

    const/16 v6, 0xa

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private makeHoverText(Landroid/widget/TextView;Landroid/view/View;)Ljava/lang/StringBuffer;
    .locals 13
    .param p1    # Landroid/widget/TextView;
    .param p2    # Landroid/view/View;

    const/16 v12, 0x21

    const/4 v11, 0x1

    const/4 v10, 0x0

    if-nez p1, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const v7, 0x7f0b004a

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v7, 0x7f0b006e

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v7, p0, Lcom/android/mms/hover/ListHoverController;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v7, :cond_e

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/hover/ListHoverController;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v8}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v8

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/mms/hover/ListHoverController;->IsMMS(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/hover/ListHoverController;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v8}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v8

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/mms/hover/ListHoverController;->getbodyFromMMS(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v7, p0, Lcom/android/mms/hover/ListHoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00c8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    if-eqz v3, :cond_4

    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    :goto_2
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v7

    if-eqz v7, :cond_9

    if-eqz v0, :cond_9

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/text/style/StyleSpan;

    invoke-direct {v7, v11}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-interface {v4, v7, v10, v8, v12}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    const-string v7, "("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v7

    if-eqz v7, :cond_a

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v7

    if-eqz v7, :cond_a

    if-nez v0, :cond_a

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/text/style/StyleSpan;

    invoke-direct {v7, v11}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-interface {v4, v7, v10, v8, v12}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_a
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v7

    if-nez v7, :cond_c

    :cond_b
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_c
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_d
    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_e
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_f

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_f
    if-eqz v5, :cond_11

    invoke-virtual {v5}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v7

    if-eqz v7, :cond_10

    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_10
    if-eqz v6, :cond_11

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_11
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v7

    if-eqz v7, :cond_12

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v7

    if-eqz v7, :cond_12

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/text/style/StyleSpan;

    invoke-direct {v7, v11}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-interface {v4, v7, v10, v8, v12}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_12
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v7

    if-nez v7, :cond_14

    :cond_13
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_14
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private setDefaultHoverPopupStyle(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    const/4 v2, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/View;->setHoverPopupType(I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->getHoverPopupWindow(I)Landroid/widget/HoverPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f04006b

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setContent(I)V

    const/16 v1, 0x3031

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    invoke-virtual {v0, v2}, Landroid/widget/HoverPopupWindow;->setFHGuideLineEnabled(Z)V

    invoke-virtual {v0, p0}, Landroid/widget/HoverPopupWindow;->setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setHoverDetectTime(I)V

    goto :goto_0
.end method

.method private setHoverTextWidth(Landroid/widget/TextView;)V
    .locals 3
    .param p1    # Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/hover/ListHoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/hover/ListHoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/mms/hover/ListHoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method


# virtual methods
.method public IsMMS(Landroid/content/Context;J)Z
    .locals 12
    .param p1    # Landroid/content/Context;
    .param p2    # J

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const-string v2, "content://mms-sms/hover_pdu"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    cmp-long v2, v8, p2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    :goto_2
    return v2

    :cond_3
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2

    :cond_5
    const/4 v2, 0x1

    goto :goto_2
.end method

.method public getbodyFromMMS(Landroid/content/Context;J)Ljava/lang/String;
    .locals 12
    .param p1    # Landroid/content/Context;
    .param p2    # J

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, ""

    const/4 v7, 0x0

    const-wide/16 v9, 0x0

    const-string v2, "content://mms-sms/hover_body"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    cmp-long v2, v9, p2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    if-nez v6, :cond_6

    const/4 v6, 0x0

    :cond_3
    :goto_2
    return-object v6

    :cond_4
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2

    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v6, 0x0

    goto :goto_2
.end method

.method public onSetContentView(Landroid/view/View;Landroid/widget/HoverPopupWindow;)Z
    .locals 7
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/widget/HoverPopupWindow;

    const/4 v6, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/widget/HoverPopupWindow;->getContent()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const v5, 0x7f0b0261

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/mms/hover/ListHoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/android/mms/hover/ListHoverController;->mPostTask:Lcom/android/mms/hover/ListHoverController$PostTaskCallBack;

    if-eqz v3, :cond_6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_2
    :goto_1
    iget-boolean v3, p0, Lcom/android/mms/hover/ListHoverController;->mUseCustomHoverPopupSize:Z

    if-eqz v3, :cond_3

    invoke-direct {p0, v2}, Lcom/android/mms/hover/ListHoverController;->setHoverTextWidth(Landroid/widget/TextView;)V

    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, ""

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/mms/hover/ListHoverController;->mListHoverType:I

    if-nez v3, :cond_9

    invoke-direct {p0, v2, p1}, Lcom/android/mms/hover/ListHoverController;->makeHoverText(Landroid/widget/TextView;Landroid/view/View;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p2}, Landroid/widget/HoverPopupWindow;->dismiss()V

    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/mms/hover/ListHoverController;->mPostTask:Lcom/android/mms/hover/ListHoverController$PostTaskCallBack;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/mms/hover/ListHoverController;->mPostTask:Lcom/android/mms/hover/ListHoverController$PostTaskCallBack;

    invoke-interface {v3, p1}, Lcom/android/mms/hover/ListHoverController$PostTaskCallBack;->doTask(Landroid/view/View;)V

    :cond_5
    move v3, v4

    goto :goto_0

    :cond_6
    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/android/mms/hover/ListHoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_1

    :cond_8
    invoke-virtual {p2, v1}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_9
    iget v3, p0, Lcom/android/mms/hover/ListHoverController;->mListHoverType:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/mms/hover/ListHoverController;->mTextViewIds:[I

    invoke-direct {p0, p1, v3}, Lcom/android/mms/hover/ListHoverController;->makeHoverText(Landroid/view/View;[I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p2}, Landroid/widget/HoverPopupWindow;->dismiss()V

    goto :goto_2

    :cond_a
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v1}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public setHoverPopupStyle(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/hover/ListHoverController;->mListHoverType:I

    invoke-direct {p0, p1}, Lcom/android/mms/hover/ListHoverController;->setDefaultHoverPopupStyle(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/android/mms/hover/ListHoverController;->setStylusHoverPopupStyle(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setHoverPopupStyle(Landroid/view/View;Lcom/android/mms/data/Conversation;)V
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Lcom/android/mms/data/Conversation;

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/android/mms/hover/ListHoverController;->mConversation:Lcom/android/mms/data/Conversation;

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/hover/ListHoverController;->mListHoverType:I

    invoke-direct {p0, p1}, Lcom/android/mms/hover/ListHoverController;->setDefaultHoverPopupStyle(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/android/mms/hover/ListHoverController;->setStylusHoverPopupStyle(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setHoverPopupStyle(Landroid/view/View;[I)V
    .locals 8
    .param p1    # Landroid/view/View;
    .param p2    # [I

    const/4 v7, 0x1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v7, p0, Lcom/android/mms/hover/ListHoverController;->mListHoverType:I

    invoke-direct {p0, p1}, Lcom/android/mms/hover/ListHoverController;->setDefaultHoverPopupStyle(Landroid/view/View;)V

    move-object v0, p2

    array-length v4, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_3

    aget v3, v0, v2

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_2

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->getHoverPopupWindow(I)Landroid/widget/HoverPopupWindow;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v7}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    iput-object v6, p0, Lcom/android/mms/hover/ListHoverController;->mTextViewIds:[I

    goto :goto_0
.end method

.method public setPostTask(Lcom/android/mms/hover/ListHoverController$PostTaskCallBack;)V
    .locals 0
    .param p1    # Lcom/android/mms/hover/ListHoverController$PostTaskCallBack;

    iput-object p1, p0, Lcom/android/mms/hover/ListHoverController;->mPostTask:Lcom/android/mms/hover/ListHoverController$PostTaskCallBack;

    return-void
.end method

.method public setShowStylusHoverPopup(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/hover/ListHoverController;->mShowStylusHoverPopup:Z

    return-void
.end method

.method public setStylusHoverPopupStyle(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;

    const/4 v5, 0x2

    const/4 v4, 0x1

    const v3, 0x7f0b004a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-boolean v3, p0, Lcom/android/mms/hover/ListHoverController;->mShowStylusHoverPopup:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->getHoverPopupWindow(I)Landroid/widget/HoverPopupWindow;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    :cond_0
    const v3, 0x7f0b006e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-boolean v3, p0, Lcom/android/mms/hover/ListHoverController;->mShowStylusHoverPopup:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->getHoverPopupWindow(I)Landroid/widget/HoverPopupWindow;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public setUseCustomHoverPopupSize(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/hover/ListHoverController;->mUseCustomHoverPopupSize:Z

    return-void
.end method
