.class Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;
.super Landroid/os/AsyncTask;
.source "MessageListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentDiscriptionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/mms/ui/MessageItem;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageListItem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/android/mms/ui/MessageItem;

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;->doInBackground([Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 14

    const v13, 0x7f0c04f4

    const v12, 0x7f0c0488

    const/16 v11, 0x20

    const/4 v9, 0x0

    aget-object v5, p1, v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v5, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, v5, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getCachedFormattedSubject()Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getCachedFormattedSubject()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getCachedFormattedSubject()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v5, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v5, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, v5, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v9, :cond_5

    iget-object v9, v5, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v9, v9, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    iget-boolean v9, v5, Lcom/android/mms/ui/MessageItem;->mHasAttachment:Z

    if-eqz v9, :cond_6

    iget-object v9, v5, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v9, :cond_6

    iget-object v9, v5, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v9, v9, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v4}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    iget-boolean v9, v5, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0097

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c03a3

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isScheduledMessage()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c02e6

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDelaySending()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isDelayedMessage()Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0442

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v9, v5, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    if-nez v9, :cond_14

    const-string v8, ""

    :goto_2
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v9

    if-eqz v9, :cond_15

    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c002a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isFreeMessageChat()Z

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isFreeMessageFt()Z

    move-result v9

    if-eqz v9, :cond_16

    :cond_b
    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isFreeMessageChat()Z

    move-result v9

    if-nez v9, :cond_c

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isFreeMessageFt()Z

    move-result v9

    if-eqz v9, :cond_17

    :cond_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_d
    :goto_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isRcsChat()Z

    move-result v9

    if-nez v9, :cond_e

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isRcsFt()Z

    move-result v9

    if-eqz v9, :cond_19

    :cond_e
    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v9

    if-nez v9, :cond_1a

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isRcsChat()Z

    move-result v9

    if-nez v9, :cond_f

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isRcsFt()Z

    move-result v9

    if-eqz v9, :cond_1a

    :cond_f
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_10
    :goto_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_11

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_11
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_12

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_12
    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/mms/ui/MessageListItem;->access$200(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/mms/ui/MessageListItem;->urlIncluded(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_13

    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c04be

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    :cond_14
    iget-object v8, v5, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    goto/16 :goto_2

    :cond_15
    const-string v3, ""

    goto/16 :goto_3

    :cond_16
    const-string v1, ""

    goto/16 :goto_4

    :cond_17
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_18
    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_19
    const-string v6, ""

    goto/16 :goto_6

    :cond_1a
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_1b
    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_7
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$ContentDiscriptionTask;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$100(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
