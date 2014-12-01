.class Lcom/android/settings/PenDetachmentOption$1;
.super Ljava/lang/Object;
.source "PenDetachmentOption.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PenDetachmentOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PenDetachmentOption;


# direct methods
.method constructor <init>(Lcom/android/settings/PenDetachmentOption;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/PenDetachmentOption$1;->this$0:Lcom/android/settings/PenDetachmentOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/PenDetachmentOption$1;->this$0:Lcom/android/settings/PenDetachmentOption;

    new-instance v1, Lcom/android/settings/PenDetachmentOption$PanelDragShadowBuilder;

    iget-object v2, p0, Lcom/android/settings/PenDetachmentOption$1;->this$0:Lcom/android/settings/PenDetachmentOption;

    invoke-direct {v1, v2, p1}, Lcom/android/settings/PenDetachmentOption$PanelDragShadowBuilder;-><init>(Lcom/android/settings/PenDetachmentOption;Landroid/view/View;)V

    # setter for: Lcom/android/settings/PenDetachmentOption;->mShadowBuilder:Lcom/android/settings/PenDetachmentOption$PanelDragShadowBuilder;
    invoke-static {v0, v1}, Lcom/android/settings/PenDetachmentOption;->access$002(Lcom/android/settings/PenDetachmentOption;Lcom/android/settings/PenDetachmentOption$PanelDragShadowBuilder;)Lcom/android/settings/PenDetachmentOption$PanelDragShadowBuilder;

    iget-object v0, p0, Lcom/android/settings/PenDetachmentOption$1;->this$0:Lcom/android/settings/PenDetachmentOption;

    # getter for: Lcom/android/settings/PenDetachmentOption;->mShadowBuilder:Lcom/android/settings/PenDetachmentOption$PanelDragShadowBuilder;
    invoke-static {v0}, Lcom/android/settings/PenDetachmentOption;->access$000(Lcom/android/settings/PenDetachmentOption;)Lcom/android/settings/PenDetachmentOption$PanelDragShadowBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v3, v0, v3, v1}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    iget-object v0, p0, Lcom/android/settings/PenDetachmentOption$1;->this$0:Lcom/android/settings/PenDetachmentOption;

    # setter for: Lcom/android/settings/PenDetachmentOption;->mLongClickedView:Landroid/view/View;
    invoke-static {v0, p1}, Lcom/android/settings/PenDetachmentOption;->access$102(Lcom/android/settings/PenDetachmentOption;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/PenDetachmentOption$1;->this$0:Lcom/android/settings/PenDetachmentOption;

    # getter for: Lcom/android/settings/PenDetachmentOption;->mLongClickedView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/PenDetachmentOption;->access$100(Lcom/android/settings/PenDetachmentOption;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x1

    return v0
.end method
