.class public Lcom/android/phone/callsettings/SelectionMenu;
.super Ljava/lang/Object;
.source "SelectionMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mButton:Landroid/widget/Button;

.field private final mContext:Landroid/content/Context;

.field private final mPopupList:Lcom/android/phone/callsettings/PopupList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Button;Lcom/android/phone/callsettings/PopupList$OnPopupItemClickListener;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/widget/Button;
    .param p3    # Lcom/android/phone/callsettings/PopupList$OnPopupItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/callsettings/SelectionMenu;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/phone/callsettings/SelectionMenu;->mButton:Landroid/widget/Button;

    new-instance v0, Lcom/android/phone/callsettings/PopupList;

    iget-object v1, p0, Lcom/android/phone/callsettings/SelectionMenu;->mButton:Landroid/widget/Button;

    invoke-direct {v0, p1, v1}, Lcom/android/phone/callsettings/PopupList;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/SelectionMenu;->mPopupList:Lcom/android/phone/callsettings/PopupList;

    iget-object v0, p0, Lcom/android/phone/callsettings/SelectionMenu;->mPopupList:Lcom/android/phone/callsettings/PopupList;

    const v1, 0x7f0a000d

    const v2, 0x7f090829

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/callsettings/PopupList;->addItem(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SelectionMenu;->mPopupList:Lcom/android/phone/callsettings/PopupList;

    invoke-virtual {v0, p3}, Lcom/android/phone/callsettings/PopupList;->setOnPopupItemClickListener(Lcom/android/phone/callsettings/PopupList$OnPopupItemClickListener;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SelectionMenu;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/callsettings/SelectionMenu;->mPopupList:Lcom/android/phone/callsettings/PopupList;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/PopupList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SelectionMenu;->mPopupList:Lcom/android/phone/callsettings/PopupList;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/PopupList;->show()V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/phone/callsettings/SelectionMenu;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateSelectAllMode(ZI)V
    .locals 4
    .param p1    # Z
    .param p2    # I

    const v3, 0x7f0a000d

    const v2, 0x7f090829

    iget-object v0, p0, Lcom/android/phone/callsettings/SelectionMenu;->mPopupList:Lcom/android/phone/callsettings/PopupList;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/PopupList;->clearItems()V

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SelectionMenu;->mPopupList:Lcom/android/phone/callsettings/PopupList;

    iget-object v1, p0, Lcom/android/phone/callsettings/SelectionMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/callsettings/PopupList;->addItem(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/SelectionMenu;->mPopupList:Lcom/android/phone/callsettings/PopupList;

    iget-object v1, p0, Lcom/android/phone/callsettings/SelectionMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/callsettings/PopupList;->addItem(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/SelectionMenu;->mPopupList:Lcom/android/phone/callsettings/PopupList;

    const v1, 0x7f0a000e

    iget-object v2, p0, Lcom/android/phone/callsettings/SelectionMenu;->mContext:Landroid/content/Context;

    const v3, 0x7f090a36

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/callsettings/PopupList;->addItem(ILjava/lang/String;)V

    goto :goto_0
.end method
