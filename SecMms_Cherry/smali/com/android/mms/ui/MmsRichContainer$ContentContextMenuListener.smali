.class Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;
.super Ljava/lang/Object;
.source "MmsRichContainer.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsRichContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentContextMenuListener"
.end annotation


# instance fields
.field private mSlideIndex:I

.field private mType:I

.field final synthetic this$0:Lcom/android/mms/ui/MmsRichContainer;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MmsRichContainer;II)V
    .locals 0
    .param p2    # I
    .param p3    # I

    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;->mType:I

    iput p3, p0, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;->mSlideIndex:I

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .param p1    # Landroid/view/ContextMenu;
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ContextMenu$ContextMenuInfo;

    const/16 v5, 0x14

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    # getter for: Lcom/android/mms/ui/MmsRichContainer;->removeMediaPort:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/mms/ui/MmsRichContainer;->access$800(Lcom/android/mms/ui/MmsRichContainer;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    # getter for: Lcom/android/mms/ui/MmsRichContainer;->removeMediaPort:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/mms/ui/MmsRichContainer;->access$800(Lcom/android/mms/ui/MmsRichContainer;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    const/4 v2, 0x0

    # setter for: Lcom/android/mms/ui/MmsRichContainer;->removeMediaPort:Landroid/widget/RelativeLayout;
    invoke-static {v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->access$802(Lcom/android/mms/ui/MmsRichContainer;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f0c001d

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$MsgMediaContextMenuClickListner;

    iget-object v1, p0, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget v2, p0, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;->mSlideIndex:I

    iget v3, p0, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;->mType:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/ui/MmsRichContainer$MsgMediaContextMenuClickListner;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isEmergencyMode()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->isUltraPowerSavingMode()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;->mType:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;->mType:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_3

    :cond_1
    const v1, 0x7f0c0026

    invoke-interface {p1, v4, v5, v4, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :goto_1
    const/16 v1, 0x15

    const v2, 0x7f0c0027

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_2
    const/16 v1, 0x16

    const v2, 0x7f0c0028

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    const v1, 0x7f0c004f

    invoke-interface {p1, v4, v5, v4, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1
.end method
