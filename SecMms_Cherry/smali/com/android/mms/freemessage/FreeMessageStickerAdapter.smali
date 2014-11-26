.class public Lcom/android/mms/freemessage/FreeMessageStickerAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "FreeMessageStickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/freemessage/FreeMessageStickerAdapter$StickerHolder;
    }
.end annotation


# instance fields
.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mResourceDispatcher:Lcom/sec/orca/shop/client/library/ResourceDispatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;ILcom/sec/orca/shop/client/library/ResourceDispatcher;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/database/Cursor;
    .param p3    # I
    .param p4    # Lcom/sec/orca/shop/client/library/ResourceDispatcher;

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/freemessage/FreeMessageStickerAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p4, p0, Lcom/android/mms/freemessage/FreeMessageStickerAdapter;->mResourceDispatcher:Lcom/sec/orca/shop/client/library/ResourceDispatcher;

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/content/Context;
    .param p3    # Landroid/database/Cursor;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/freemessage/FreeMessageStickerAdapter$StickerHolder;

    const-string v3, "sticker_id"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/mms/freemessage/FreeMessageStickerAdapter$StickerHolder;->stickerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v2, Lcom/android/mms/freemessage/FreeMessageStaticAniconDispatcherTask;

    iget-object v3, p0, Landroid/support/v4/widget/CursorAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/android/mms/freemessage/FreeMessageStaticAniconDispatcherTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageStickerAdapter;->mResourceDispatcher:Lcom/sec/orca/shop/client/library/ResourceDispatcher;

    iget-object v4, v0, Lcom/android/mms/freemessage/FreeMessageStickerAdapter$StickerHolder;->stickerImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v2}, Lcom/sec/orca/shop/client/library/ResourceDispatcher;->dispatch(Landroid/view/View;Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;)Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;

    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/database/Cursor;
    .param p3    # Landroid/view/ViewGroup;

    const/4 v6, -0x1

    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageStickerAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400b5

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    new-instance v0, Lcom/android/mms/freemessage/FreeMessageStickerAdapter$StickerHolder;

    invoke-direct {v0}, Lcom/android/mms/freemessage/FreeMessageStickerAdapter$StickerHolder;-><init>()V

    const v3, 0x7f0b03a3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/android/mms/freemessage/FreeMessageStickerAdapter$StickerHolder;->stickerImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v2
.end method
