.class public Lcom/android/mms/menu/SelectionMenu;
.super Ljava/lang/Object;
.source "SelectionMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SelectionMenu"


# instance fields
.field private final mButton:Landroid/widget/Button;

.field private final mContext:Landroid/content/Context;

.field private final mPopupList:Lcom/android/mms/menu/PopupList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Button;Lcom/android/mms/menu/PopupList$OnPopupItemClickListener;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/mms/menu/SelectionMenu;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/menu/SelectionMenu;->mButton:Landroid/widget/Button;

    new-instance v0, Lcom/android/mms/menu/PopupList;

    iget-object v1, p0, Lcom/android/mms/menu/SelectionMenu;->mButton:Landroid/widget/Button;

    invoke-direct {v0, p1, v1}, Lcom/android/mms/menu/PopupList;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/mms/menu/SelectionMenu;->mPopupList:Lcom/android/mms/menu/PopupList;

    iget-object v0, p0, Lcom/android/mms/menu/SelectionMenu;->mPopupList:Lcom/android/mms/menu/PopupList;

    const v1, 0x7f0b03fa

    const v2, 0x7f0c00f1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/menu/PopupList;->addItem(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/menu/SelectionMenu;->mPopupList:Lcom/android/mms/menu/PopupList;

    const v1, 0x7f0b03fb

    const v2, 0x7f0c043f

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/menu/PopupList;->addItem(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/menu/SelectionMenu;->mPopupList:Lcom/android/mms/menu/PopupList;

    invoke-virtual {v0, p3}, Lcom/android/mms/menu/PopupList;->setOnPopupItemClickListener(Lcom/android/mms/menu/PopupList$OnPopupItemClickListener;)V

    iget-object v0, p0, Lcom/android/mms/menu/SelectionMenu;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public clearPopupList()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/menu/SelectionMenu;->mPopupList:Lcom/android/mms/menu/PopupList;

    invoke-virtual {v0}, Lcom/android/mms/menu/PopupList;->clearItems()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/menu/SelectionMenu;->mPopupList:Lcom/android/mms/menu/PopupList;

    invoke-virtual {v0}, Lcom/android/mms/menu/PopupList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/menu/SelectionMenu;->mPopupList:Lcom/android/mms/menu/PopupList;

    invoke-virtual {v0}, Lcom/android/mms/menu/PopupList;->show()V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/menu/SelectionMenu;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleTextSize(IF)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/menu/SelectionMenu;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public updateSelectAllMode(II)V
    .locals 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v8, 0x7f0b03fb

    const v7, 0x7f0b03fa

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-ne p1, p2, :cond_2

    move v0, v4

    :goto_0
    if-nez p1, :cond_3

    move v1, v4

    :goto_1
    iget-object v4, p0, Lcom/android/mms/menu/SelectionMenu;->mPopupList:Lcom/android/mms/menu/PopupList;

    invoke-virtual {v4}, Lcom/android/mms/menu/PopupList;->clearItems()V

    iget-object v4, p0, Lcom/android/mms/menu/SelectionMenu;->mPopupList:Lcom/android/mms/menu/PopupList;

    invoke-virtual {v4, v7}, Lcom/android/mms/menu/PopupList;->findItem(I)Lcom/android/mms/menu/PopupList$Item;

    move-result-object v2

    iget-object v4, p0, Lcom/android/mms/menu/SelectionMenu;->mPopupList:Lcom/android/mms/menu/PopupList;

    invoke-virtual {v4, v8}, Lcom/android/mms/menu/PopupList;->findItem(I)Lcom/android/mms/menu/PopupList$Item;

    move-result-object v3

    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    iget-object v4, p0, Lcom/android/mms/menu/SelectionMenu;->mPopupList:Lcom/android/mms/menu/PopupList;

    iget-object v5, p0, Lcom/android/mms/menu/SelectionMenu;->mContext:Landroid/content/Context;

    const v6, 0x7f0c00f1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lcom/android/mms/menu/PopupList;->addItem(ILjava/lang/String;)V

    iget-object v4, p0, Lcom/android/mms/menu/SelectionMenu;->mPopupList:Lcom/android/mms/menu/PopupList;

    invoke-virtual {v4, v7}, Lcom/android/mms/menu/PopupList;->findItem(I)Lcom/android/mms/menu/PopupList$Item;

    move-result-object v2

    :cond_0
    if-eqz v1, :cond_1

    if-nez v3, :cond_1

    iget-object v4, p0, Lcom/android/mms/menu/SelectionMenu;->mPopupList:Lcom/android/mms/menu/PopupList;

    iget-object v5, p0, Lcom/android/mms/menu/SelectionMenu;->mContext:Landroid/content/Context;

    const v6, 0x7f0c043f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Lcom/android/mms/menu/PopupList;->addItem(ILjava/lang/String;)V

    iget-object v4, p0, Lcom/android/mms/menu/SelectionMenu;->mPopupList:Lcom/android/mms/menu/PopupList;

    invoke-virtual {v4, v8}, Lcom/android/mms/menu/PopupList;->findItem(I)Lcom/android/mms/menu/PopupList$Item;

    move-result-object v3

    :cond_1
    iget-object v4, p0, Lcom/android/mms/menu/SelectionMenu;->mPopupList:Lcom/android/mms/menu/PopupList;

    invoke-virtual {v4}, Lcom/android/mms/menu/PopupList;->notifyChanged()V

    return-void

    :cond_2
    move v0, v5

    goto :goto_0

    :cond_3
    move v1, v5

    goto :goto_1
.end method
