.class Lcom/android/launcher2/Folder$FolderVertScroller;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderVertScroller"
.end annotation


# static fields
.field public static final DIR_DOWN:I = 0x1

.field public static final DIR_UP:I = -0x1

.field public static final SCROLL_DELAY:I = 0x19


# instance fields
.field private mDir:I

.field private mInQueue:Z

.field final synthetic this$0:Lcom/android/launcher2/Folder;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Folder;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mDir:I

    iput-boolean v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mInQueue:Z

    return-void
.end method


# virtual methods
.method public canScrollDown()Z
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    # getter for: Lcom/android/launcher2/Folder;->mScrollView:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/android/launcher2/Folder;->access$000(Lcom/android/launcher2/Folder;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    iget-object v1, v1, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    # getter for: Lcom/android/launcher2/Folder;->mScrollView:Landroid/widget/ScrollView;
    invoke-static {v2}, Lcom/android/launcher2/Folder;->access$000(Lcom/android/launcher2/Folder;)Landroid/widget/ScrollView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canScrollUp()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    # getter for: Lcom/android/launcher2/Folder;->mScrollView:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/android/launcher2/Folder;->access$000(Lcom/android/launcher2/Folder;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mInQueue:Z

    iget v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mDir:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    # getter for: Lcom/android/launcher2/Folder;->mScrollView:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/android/launcher2/Folder;->access$000(Lcom/android/launcher2/Folder;)Landroid/widget/ScrollView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    # getter for: Lcom/android/launcher2/Folder;->mScrollView:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/android/launcher2/Folder;->access$000(Lcom/android/launcher2/Folder;)Landroid/widget/ScrollView;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mDir:I

    iget-object v2, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    iget-object v2, v2, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getCellHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    mul-int/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->scrollBy(II)V

    iget v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mDir:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Folder$FolderVertScroller;->canScrollUp()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mDir:I

    if-ne v0, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Folder$FolderVertScroller;->canScrollDown()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iput-boolean v4, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mInQueue:Z

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    const-wide/16 v1, 0x19

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public scrollDown()V
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/Folder$FolderVertScroller;->canScrollDown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->cancelRealTimeReorder()V

    iput v1, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mDir:I

    iget-boolean v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mInQueue:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mInQueue:Z

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    const-wide/16 v1, 0x19

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public scrollUp()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/Folder$FolderVertScroller;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->cancelRealTimeReorder()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mDir:I

    iget-boolean v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mInQueue:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mInQueue:Z

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    const-wide/16 v1, 0x19

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public unQueue()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mInQueue:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Folder$FolderVertScroller;->mInQueue:Z

    :cond_0
    return-void
.end method
