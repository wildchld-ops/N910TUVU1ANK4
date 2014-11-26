.class Lcom/android/mms/ui/EmoticonContainer$12;
.super Ljava/lang/Object;
.source "EmoticonContainer.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


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

    iput-object p1, p0, Lcom/android/mms/ui/EmoticonContainer$12;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1    # I
    .param p2    # F
    .param p3    # I

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$12;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mStickerInfoList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer;->access$1700(Lcom/android/mms/ui/EmoticonContainer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$12;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$12;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mStickerInfoList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer;->access$1700(Lcom/android/mms/ui/EmoticonContainer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/EmoticonContainer$StickerInfo;

    # getter for: Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->stickerId:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->access$600(Lcom/android/mms/ui/EmoticonContainer$StickerInfo;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/mms/ui/EmoticonContainer;->changePanel(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/mms/ui/EmoticonContainer;->access$2500(Lcom/android/mms/ui/EmoticonContainer;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
