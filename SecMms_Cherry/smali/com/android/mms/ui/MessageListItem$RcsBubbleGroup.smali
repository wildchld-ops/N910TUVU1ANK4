.class Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;
.super Ljava/util/ArrayList;
.source "MessageListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RcsBubbleGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/mms/rcs/RcsBubbleView;",
        ">;"
    }
.end annotation


# instance fields
.field private mHasVisibleContent:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mRcsFileTransferModel:Lcom/android/mms/model/ImFileTransferModel;

.field private mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

.field private mThumbnailContainer:Landroid/widget/LinearLayout;

.field private mVisiblePageCount:I


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;)V
    .locals 1
    .param p1    # Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;->mVisiblePageCount:I

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;->mThumbnailContainer:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    invoke-direct {v0}, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/mms/rcs/RcsBubbleView;)Z
    .locals 1
    .param p1    # Lcom/android/mms/rcs/RcsBubbleView;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;->mThumbnailContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/android/mms/rcs/RcsBubbleView;

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;->add(Lcom/android/mms/rcs/RcsBubbleView;)Z

    move-result v0

    return v0
.end method

.method public addLinks(I)V
    .locals 3
    .param p1    # I

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iput p1, v2, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mLinkMask:I

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/rcs/RcsBubbleView;

    invoke-virtual {v1}, Lcom/android/mms/rcs/RcsBubbleView;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/widget/TextView;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public hasVisibleContent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;->mHasVisibleContent:Z

    return v0
.end method

.method public initRcsThumbnail(ILcom/android/mms/ui/MessageItem;)V
    .locals 13
    .param p1    # I
    .param p2    # Lcom/android/mms/ui/MessageItem;

    const/4 v9, 0x0

    const/4 v8, 0x1

    iput p1, p0, Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;->mVisiblePageCount:I

    iget-object v10, p2, Lcom/android/mms/ui/MessageItem;->mRcsFileTransferModel:Lcom/android/mms/model/ImFileTransferModel;

    iput-object v10, p0, Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;->mRcsFileTransferModel:Lcom/android/mms/model/ImFileTransferModel;

    invoke-virtual {p2}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v3

    iget-object v0, p2, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    iget v10, p2, Lcom/android/mms/ui/MessageItem;->mReserved:I

    if-ne v10, v8, :cond_1

    move v4, v8

    :goto_0
    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;->mThumbnailContainer:Landroid/widget/LinearLayout;

    iget v10, p0, Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;->mVisiblePageCount:I

    if-lez v10, :cond_2

    iget-boolean v10, p2, Lcom/android/mms/ui/MessageItem;->mHasAttachment:Z

    if-nez v10, :cond_2

    move v10, v8

    :goto_1
    invoke-static {v11, v10}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;->mInflater:Landroid/view/LayoutInflater;

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;->mThumbnailContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;->mInflater:Landroid/view/LayoutInflater;

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v5

    :goto_2
    iget v10, p0, Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;->mVisiblePageCount:I

    if-ge v1, v10, :cond_3

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f040086

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/mms/rcs/RcsBubbleView;

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;->add(Lcom/android/mms/rcs/RcsBubbleView;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    move v4, v9

    goto :goto_0

    :cond_2
    move v10, v9

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/rcs/RcsBubbleView;

    iget v10, p0, Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;->mVisiblePageCount:I

    if-ge v1, v10, :cond_4

    invoke-static {v7, v8}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    invoke-virtual {v7, v10}, Lcom/android/mms/rcs/RcsBubbleView;->applyTextProperty(Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;)V

    invoke-virtual {v7, v3}, Lcom/android/mms/rcs/RcsBubbleView;->setIsFailedMessage(Z)V

    invoke-virtual {v7, v4}, Lcom/android/mms/rcs/RcsBubbleView;->setIsReservedMessage(Z)V

    invoke-virtual {v7, v0}, Lcom/android/mms/rcs/RcsBubbleView;->setHighlight(Ljava/util/regex/Pattern;)V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    invoke-static {v7, v9}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto :goto_4

    :cond_5
    return-void
.end method

.method public present(Landroid/net/Uri;Ljava/lang/String;Lcom/android/mms/ui/MessageListItem;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
    .param p2    # Ljava/lang/String;
    .param p3    # Lcom/android/mms/ui/MessageListItem;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;->present(Landroid/net/Uri;Ljava/lang/String;Lcom/android/mms/ui/MessageListItem;Z)V

    return-void
.end method

.method public present(Landroid/net/Uri;Ljava/lang/String;Lcom/android/mms/ui/MessageListItem;Z)V
    .locals 7
    .param p1    # Landroid/net/Uri;
    .param p2    # Ljava/lang/String;
    .param p3    # Lcom/android/mms/ui/MessageListItem;
    .param p4    # Z

    const/4 v0, 0x0

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v5, p0, Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;->mVisiblePageCount:I

    if-ge v1, v5, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/rcs/RcsBubbleView;

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;->mRcsFileTransferModel:Lcom/android/mms/model/ImFileTransferModel;

    invoke-virtual {v5, v2, v6, p3}, Lcom/android/mms/rcs/RcsBubbleView;->present(ILcom/android/mms/model/ImFileTransferModel;Lcom/android/mms/ui/MessageListItem;)Z

    move-result v3

    const/4 v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;->mHasVisibleContent:Z

    return-void
.end method

.method public presentRCS(Lcom/android/mms/ui/MessageListItem;Z)V
    .locals 5
    .param p1    # Lcom/android/mms/ui/MessageListItem;
    .param p2    # Z

    const/4 v0, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v4, p0, Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;->mVisiblePageCount:I

    if-ge v1, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;->mHasVisibleContent:Z

    return-void
.end method

.method public setBodyTextSize(IF)V
    .locals 3
    .param p1    # I
    .param p2    # F

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iput p1, v2, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mTextSizeUnit:I

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iput p2, v2, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mTextSize:F

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/rcs/RcsBubbleView;

    invoke-virtual {v1}, Lcom/android/mms/rcs/RcsBubbleView;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTextMaxWidth(I)V
    .locals 3
    .param p1    # I

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/rcs/RcsBubbleView;

    invoke-virtual {v1}, Lcom/android/mms/rcs/RcsBubbleView;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTextOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 3
    .param p1    # Landroid/view/View$OnTouchListener;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$RcsBubbleGroup;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iput-object p1, v2, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mTextTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/rcs/RcsBubbleView;

    invoke-virtual {v1}, Lcom/android/mms/rcs/RcsBubbleView;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method
