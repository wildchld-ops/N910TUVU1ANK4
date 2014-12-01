.class Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;
.super Ljava/util/ArrayList;
.source "MessageListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MmsSlideGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/mms/ui/MmsSlideView;",
        ">;"
    }
.end annotation


# instance fields
.field private mHasVisibleContent:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

.field private mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

.field private mThumbnailContainer:Landroid/widget/LinearLayout;

.field private mVisiblePageCount:I


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mVisiblePageCount:I

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mThumbnailContainer:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    invoke-direct {v0}, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/mms/ui/MmsSlideView;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mThumbnailContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/android/mms/ui/MmsSlideView;

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->add(Lcom/android/mms/ui/MmsSlideView;)Z

    move-result v0

    return v0
.end method

.method public addLinks(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iput p1, v0, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mLinkMask:I

    return-void
.end method

.method public hasVisibleContent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mHasVisibleContent:Z

    return v0
.end method

.method public initMmsThumbnail(ILcom/android/mms/ui/MessageItem;)V
    .locals 12

    iput p1, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mVisiblePageCount:I

    iget-object v9, p2, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iput-object v9, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {p2}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v4

    iget-object v0, p2, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    invoke-virtual {p2}, Lcom/android/mms/ui/MessageItem;->isScheduledMessage()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {p2}, Lcom/android/mms/ui/MessageItem;->isDelayedMessage()Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v3, 0x1

    :goto_1
    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mThumbnailContainer:Landroid/widget/LinearLayout;

    iget v9, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mVisiblePageCount:I

    if-lez v9, :cond_3

    const/4 v9, 0x1

    :goto_2
    invoke-static {v10, v9}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mInflater:Landroid/view/LayoutInflater;

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mThumbnailContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mInflater:Landroid/view/LayoutInflater;

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v1, v6

    :goto_3
    iget v9, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mVisiblePageCount:I

    if-ge v1, v9, :cond_4

    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f04007d

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/MmsSlideView;

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->add(Lcom/android/mms/ui/MmsSlideView;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/ui/MmsSlideView;

    iget v9, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mVisiblePageCount:I

    if-ge v1, v9, :cond_5

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    invoke-virtual {v8, v9}, Lcom/android/mms/ui/MmsSlideView;->applyTextProperty(Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;)V

    invoke-virtual {v8, v4}, Lcom/android/mms/ui/MmsSlideView;->setIsFailedMessage(Z)V

    invoke-virtual {v8, v5}, Lcom/android/mms/ui/MmsSlideView;->setIsScheduledMessage(Z)V

    invoke-virtual {v8, v3}, Lcom/android/mms/ui/MmsSlideView;->setIsDelayedMessage(Z)V

    invoke-virtual {v8, v0}, Lcom/android/mms/ui/MmsSlideView;->setHighlight(Ljava/util/regex/Pattern;)V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    goto :goto_5

    :cond_6
    return-void
.end method

.method public present(Lcom/android/mms/ui/MessageListItem;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->present(Lcom/android/mms/ui/MessageListItem;Z)V

    return-void
.end method

.method public present(Lcom/android/mms/ui/MessageListItem;Z)V
    .locals 10

    const/4 v8, 0x0

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/LayoutModel;->getLayoutType()I

    move-result v2

    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->getAttachmentType(Lcom/android/mms/model/SlideshowModel;)I

    move-result v7

    const/16 v9, 0xa

    if-ne v7, v9, :cond_1

    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7, v8}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7, v8}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    :cond_0
    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7, v3}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v7, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mVisiblePageCount:I

    if-ge v1, v7, :cond_6

    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/MmsSlideView;

    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v9, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v9

    invoke-virtual {v7, v2, v9, p1, p2}, Lcom/android/mms/ui/MmsSlideView;->present(ILcom/android/mms/model/SlideModel;Lcom/android/mms/ui/MessageListItem;Z)Z

    move-result v4

    :goto_1
    if-nez v0, :cond_2

    if-eqz v4, :cond_5

    :cond_2
    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v7, "present page "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", hasContent "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "Mms/MessageListItem"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/MmsSlideView;

    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v9, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v9

    invoke-virtual {v7, v2, v9, p1}, Lcom/android/mms/ui/MmsSlideView;->present(ILcom/android/mms/model/SlideModel;Lcom/android/mms/ui/MessageListItem;)Z

    move-result v4

    goto :goto_1

    :cond_5
    move v0, v8

    goto :goto_2

    :cond_6
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mHasVisibleContent:Z

    return-void
.end method

.method public setBodyTextSize(IF)V
    .locals 3

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iput p1, v2, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mTextSizeUnit:I

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iput p2, v2, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mTextSize:F

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MmsSlideView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsSlideView;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTextMaxWidth(I)V
    .locals 3

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MmsSlideView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsSlideView;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getMaxWidth()I

    move-result v2

    if-eq v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsSlideView;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setTextOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 3

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$MmsSlideGroup;->mTextProperty:Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;

    iput-object p1, v2, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mTextTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MmsSlideView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsSlideView;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method
