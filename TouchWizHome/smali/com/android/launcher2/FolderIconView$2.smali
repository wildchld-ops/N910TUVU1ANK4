.class Lcom/android/launcher2/FolderIconView$2;
.super Ljava/lang/Object;
.source "FolderIconView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/FolderIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FolderIconView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/FolderIconView$2;->this$0:Lcom/android/launcher2/FolderIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView$2;->this$0:Lcom/android/launcher2/FolderIconView;

    # getter for: Lcom/android/launcher2/FolderIconView;->mDraggingOver:Z
    invoke-static {v0}, Lcom/android/launcher2/FolderIconView;->access$100(Lcom/android/launcher2/FolderIconView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView$2;->this$0:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView$2;->this$0:Lcom/android/launcher2/FolderIconView;

    # invokes: Lcom/android/launcher2/FolderIconView;->onDragEnter()V
    invoke-static {v0}, Lcom/android/launcher2/FolderIconView;->access$200(Lcom/android/launcher2/FolderIconView;)V

    :cond_0
    return-void
.end method
