.class Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;
.super Ljava/lang/Object;
.source "EmoticonContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/EmoticonContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StickerPagerView"
.end annotation


# instance fields
.field private cancelButton:Landroid/widget/Button;

.field private downloadLayout:Landroid/view/View;

.field private gridView:Landroid/widget/GridView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private progressLayout:Landroid/view/View;

.field private progressText:Landroid/widget/TextView;

.field private stickerAdapter:Lcom/android/mms/freemessage/FreeMessageStickerAdapter;

.field private stickerId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/EmoticonContainer;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/EmoticonContainer;Ljava/lang/String;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->stickerId:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->setDownloadLayout(Landroid/view/View;)V

    invoke-virtual {p0, p4}, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->setProgressLayout(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/mms/ui/EmoticonContainer;Ljava/lang/String;Landroid/widget/GridView;Lcom/android/mms/freemessage/FreeMessageStickerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->stickerId:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->gridView:Landroid/widget/GridView;

    iput-object p4, p0, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->stickerAdapter:Lcom/android/mms/freemessage/FreeMessageStickerAdapter;

    return-void
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->downloadLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->progressLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->cancelButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->progressText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->gridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;)Lcom/android/mms/freemessage/FreeMessageStickerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->stickerAdapter:Lcom/android/mms/freemessage/FreeMessageStickerAdapter;

    return-object v0
.end method


# virtual methods
.method public setDownloadLayout(Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->downloadLayout:Landroid/view/View;

    const v1, 0x7f0b03a5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->onDownloadButtonClick:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/android/mms/ui/EmoticonContainer;->access$4000(Lcom/android/mms/ui/EmoticonContainer;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->stickerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setProgressLayout(Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->progressLayout:Landroid/view/View;

    const v0, 0x7f0b03aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->cancelButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->cancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->onCancelButtonClick:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/android/mms/ui/EmoticonContainer;->access$3900(Lcom/android/mms/ui/EmoticonContainer;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->cancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->stickerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0b03a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->progressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f0b03a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$StickerPagerView;->progressText:Landroid/widget/TextView;

    return-void
.end method
