.class public Lcom/android/settings/common/DeleteModeCallback;
.super Lcom/android/settings/common/ActionModeCallback;
.source "DeleteModeCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/common/DeleteModeCallback$OnDeleteListner;
    }
.end annotation


# static fields
.field private static mItem_trash:Landroid/view/MenuItem;


# instance fields
.field private listner:Lcom/android/settings/common/DeleteModeCallback$OnDeleteListner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/common/ActionModeCallback$OnAcionModeListner;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/common/ActionModeCallback;-><init>(Landroid/content/Context;Lcom/android/settings/common/ActionModeCallback$OnAcionModeListner;)V

    return-void
.end method

.method public static refreshTrashState(I)V
    .locals 2

    sget-object v0, Lcom/android/settings/common/DeleteModeCallback;->mItem_trash:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/settings/common/DeleteModeCallback;->mItem_trash:Landroid/view/MenuItem;

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public initOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings/common/DeleteModeCallback;->mItem_trash:Landroid/view/MenuItem;

    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/android/settings/common/ActionModeCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/common/DeleteModeCallback;->listner:Lcom/android/settings/common/DeleteModeCallback$OnDeleteListner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/common/DeleteModeCallback;->listner:Lcom/android/settings/common/DeleteModeCallback$OnDeleteListner;

    invoke-interface {v0}, Lcom/android/settings/common/DeleteModeCallback$OnDeleteListner;->delete()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const v0, 0x7f0916b5

    invoke-interface {p2, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings/common/DeleteModeCallback;->mItem_trash:Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Lcom/android/settings/common/ActionModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setOnDeleteListner(Lcom/android/settings/common/DeleteModeCallback$OnDeleteListner;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/common/DeleteModeCallback;->listner:Lcom/android/settings/common/DeleteModeCallback$OnDeleteListner;

    return-void
.end method

.method public updateSelectionMenu(I)V
    .locals 5

    move v0, p1

    iget-object v2, p0, Lcom/android/settings/common/ActionModeCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/common/ActionModeCallback;->setTitle(Ljava/lang/String;)V

    return-void
.end method
