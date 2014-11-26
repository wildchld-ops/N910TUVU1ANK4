.class Lcom/android/mms/ui/EmoticonContainer$StickerPagersAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "EmoticonContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/EmoticonContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StickerPagersAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/EmoticonContainer;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/EmoticonContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/EmoticonContainer$StickerPagersAdapter;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/EmoticonContainer;Lcom/android/mms/ui/EmoticonContainer$1;)V
    .locals 0
    .param p1    # Lcom/android/mms/ui/EmoticonContainer;
    .param p2    # Lcom/android/mms/ui/EmoticonContainer$1;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/EmoticonContainer$StickerPagersAdapter;-><init>(Lcom/android/mms/ui/EmoticonContainer;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
    .param p2    # I
    .param p3    # Ljava/lang/Object;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/EmoticonContainer;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroyItem : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p3

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$StickerPagersAdapter;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mPagerViewMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/mms/ui/EmoticonContainer;->access$2100(Lcom/android/mms/ui/EmoticonContainer;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    # getter for: Lcom/android/mms/ui/EmoticonContainer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/EmoticonContainer;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroyItem mPagerViewMap size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/EmoticonContainer$StickerPagersAdapter;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mPagerViewMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/mms/ui/EmoticonContainer;->access$2100(Lcom/android/mms/ui/EmoticonContainer;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$StickerPagersAdapter;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mStickerInfoList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer;->access$1700(Lcom/android/mms/ui/EmoticonContainer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;

    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6
    .param p1    # Landroid/view/ViewGroup;
    .param p2    # I

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/EmoticonContainer;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "instantiateItem : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/EmoticonContainer$StickerPagersAdapter;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mStickerInfoList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/EmoticonContainer;->access$1700(Lcom/android/mms/ui/EmoticonContainer;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/EmoticonContainer$StickerPagersAdapter;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mStickerInfoList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/EmoticonContainer;->access$1700(Lcom/android/mms/ui/EmoticonContainer;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, p2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/EmoticonContainer$StickerPagersAdapter;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mStickerInfoList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/EmoticonContainer;->access$1700(Lcom/android/mms/ui/EmoticonContainer;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/EmoticonContainer$StickerInfo;

    # getter for: Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->install:J
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->access$1800(Lcom/android/mms/ui/EmoticonContainer$StickerInfo;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/EmoticonContainer$StickerPagersAdapter;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->stickerId:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->access$600(Lcom/android/mms/ui/EmoticonContainer$StickerInfo;)Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->needUpdate:Z
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->access$1900(Lcom/android/mms/ui/EmoticonContainer$StickerInfo;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/EmoticonContainer;->inflateGridView(Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/EmoticonContainer$StickerPagersAdapter;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->stickerId:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->access$600(Lcom/android/mms/ui/EmoticonContainer$StickerInfo;)Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->isDownloading:Z
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->access$2000(Lcom/android/mms/ui/EmoticonContainer$StickerInfo;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/EmoticonContainer;->inflateDownloadView(Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Ljava/lang/Object;

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
