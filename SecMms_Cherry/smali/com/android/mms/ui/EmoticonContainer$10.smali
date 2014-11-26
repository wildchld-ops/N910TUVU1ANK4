.class Lcom/android/mms/ui/EmoticonContainer$10;
.super Landroid/os/Handler;
.source "EmoticonContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/EmoticonContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/EmoticonContainer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/EmoticonContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/EmoticonContainer$10;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1    # Landroid/os/Message;

    const/4 v13, 0x0

    iget-object v7, p0, Lcom/android/mms/ui/EmoticonContainer$10;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v7, "key_item_id"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v7, p0, Lcom/android/mms/ui/EmoticonContainer$10;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mPagerViewMap:Ljava/util/Map;
    invoke-static {v7}, Lcom/android/mms/ui/EmoticonContainer;->access$2100(Lcom/android/mms/ui/EmoticonContainer;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;

    if-eqz v6, :cond_0

    # getter for: Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->cancelButton:Landroid/widget/Button;
    invoke-static {v6}, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->access$2800(Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;)Landroid/widget/Button;

    move-result-object v7

    if-eqz v7, :cond_0

    # getter for: Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->cancelButton:Landroid/widget/Button;
    invoke-static {v6}, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->access$2800(Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v7, p0, Lcom/android/mms/ui/EmoticonContainer$10;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mPagerViewMap:Ljava/util/Map;
    invoke-static {v7}, Lcom/android/mms/ui/EmoticonContainer;->access$2100(Lcom/android/mms/ui/EmoticonContainer;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;

    if-eqz v6, :cond_0

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/EmoticonContainer;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "progress : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "key_progress"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "key_progress"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    # getter for: Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v6}, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->access$2900(Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;)Landroid/widget/ProgressBar;

    move-result-object v7

    if-eqz v7, :cond_2

    # getter for: Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v6}, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->access$2900(Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;)Landroid/widget/ProgressBar;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    # getter for: Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v6}, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->access$2900(Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;)Landroid/widget/ProgressBar;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_2
    # getter for: Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->progressText:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->access$3000(Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;)Landroid/widget/TextView;

    move-result-object v7

    if-eqz v7, :cond_0

    # getter for: Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->progressText:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->access$3000(Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/EmoticonContainer$10;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0c0568

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v7, p0, Lcom/android/mms/ui/EmoticonContainer$10;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mStickerInfoMap:Ljava/util/Map;
    invoke-static {v7}, Lcom/android/mms/ui/EmoticonContainer;->access$3100(Lcom/android/mms/ui/EmoticonContainer;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/ui/EmoticonContainer$StickerInfo;

    if-eqz v5, :cond_3

    const/4 v3, 0x0

    const-string v7, "key_install"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    # setter for: Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->install:J
    invoke-static {v5, v7, v8}, Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->access$1802(Lcom/android/mms/ui/EmoticonContainer$StickerInfo;J)J

    # setter for: Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->isDownloading:Z
    invoke-static {v5, v13}, Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->access$2002(Lcom/android/mms/ui/EmoticonContainer$StickerInfo;Z)Z

    # setter for: Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->needUpdate:Z
    invoke-static {v5, v13}, Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->access$1902(Lcom/android/mms/ui/EmoticonContainer$StickerInfo;Z)Z

    iget-object v7, p0, Lcom/android/mms/ui/EmoticonContainer$10;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/mms/ui/EmoticonContainer;->access$800(Lcom/android/mms/ui/EmoticonContainer;)Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v7}, Lcom/android/mms/ui/ConversationComposer;->isMultiWindowMode()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/mms/ui/EmoticonContainer$10;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mPanelImageMapDialog:Ljava/util/Map;
    invoke-static {v7}, Lcom/android/mms/ui/EmoticonContainer;->access$3200(Lcom/android/mms/ui/EmoticonContainer;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    :goto_1
    if-eqz v3, :cond_3

    const v7, 0x7f0b03a7

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v7, p0, Lcom/android/mms/ui/EmoticonContainer$10;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mPagerViewMap:Ljava/util/Map;
    invoke-static {v7}, Lcom/android/mms/ui/EmoticonContainer;->access$2100(Lcom/android/mms/ui/EmoticonContainer;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/mms/ui/EmoticonContainer$10;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mStickerPagersAdapter:Lcom/android/mms/ui/EmoticonContainer$StickerPagersAdapter;
    invoke-static {v7}, Lcom/android/mms/ui/EmoticonContainer;->access$3400(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/ui/EmoticonContainer$StickerPagersAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    :cond_4
    iget-object v7, p0, Lcom/android/mms/ui/EmoticonContainer$10;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mCurrentStickerId:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/ui/EmoticonContainer;->access$3500(Lcom/android/mms/ui/EmoticonContainer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/ui/EmoticonContainer$10;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mStickersViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v7}, Lcom/android/mms/ui/EmoticonContainer;->access$3600(Lcom/android/mms/ui/EmoticonContainer;)Landroid/support/v4/view/ViewPager;

    move-result-object v7

    # getter for: Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->itemPosition:I
    invoke-static {v5}, Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->access$2400(Lcom/android/mms/ui/EmoticonContainer$StickerInfo;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v7, p0, Lcom/android/mms/ui/EmoticonContainer$10;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mPanelImageMap:Ljava/util/Map;
    invoke-static {v7}, Lcom/android/mms/ui/EmoticonContainer;->access$3300(Lcom/android/mms/ui/EmoticonContainer;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    goto :goto_1

    :pswitch_3
    iget-object v7, p0, Lcom/android/mms/ui/EmoticonContainer$10;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0c0137

    invoke-static {v7, v8, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    iget-object v7, p0, Lcom/android/mms/ui/EmoticonContainer$10;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mStickerInfoMap:Ljava/util/Map;
    invoke-static {v7}, Lcom/android/mms/ui/EmoticonContainer;->access$3100(Lcom/android/mms/ui/EmoticonContainer;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/ui/EmoticonContainer$StickerInfo;

    if-eqz v5, :cond_6

    # setter for: Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->isDownloading:Z
    invoke-static {v5, v13}, Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->access$2002(Lcom/android/mms/ui/EmoticonContainer$StickerInfo;Z)Z

    :cond_6
    iget-object v7, p0, Lcom/android/mms/ui/EmoticonContainer$10;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mCurrentStickerId:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/ui/EmoticonContainer;->access$3500(Lcom/android/mms/ui/EmoticonContainer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/ui/EmoticonContainer$10;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # invokes: Lcom/android/mms/ui/EmoticonContainer;->setDownloadVisibility(Ljava/lang/String;Z)V
    invoke-static {v7, v2, v13}, Lcom/android/mms/ui/EmoticonContainer;->access$3700(Lcom/android/mms/ui/EmoticonContainer;Ljava/lang/String;Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
