.class public Lcom/android/mms/freemessage/FreeMessageStickerPanelDispatcherTask;
.super Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;
.source "FreeMessageStickerPanelDispatcherTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/mms/freemessage/FreeMessageStickerPanelDispatcherTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/freemessage/FreeMessageStickerPanelDispatcherTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/mms/freemessage/FreeMessageStickerPanelDispatcherTask;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getValue()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    invoke-super {p0}, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/mms/freemessage/FreeMessageStickerPanelDispatcherTask;->getValue()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/android/mms/freemessage/FreeMessageStickerPanelDispatcherTask;->getView()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/widget/ImageView;
    .locals 1

    invoke-super {p0}, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/mms/freemessage/FreeMessageStickerPanelDispatcherTask;->getValue()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->setView(Landroid/view/View;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public onDispatch()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageStickerPanelDispatcherTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/sec/orca/shop/client/library/StickerHelper;->createPanelDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public onPostDispatch(Ljava/lang/Object;Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/mms/freemessage/FreeMessageStickerPanelDispatcherTask;->getView()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/freemessage/FreeMessageStickerPanelDispatcherTask;->getValue()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/freemessage/FreeMessageStickerPanelDispatcherTask;->getView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageStickerPanelDispatcherTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public onPreDispatch()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/mms/freemessage/FreeMessageStickerPanelDispatcherTask;->getView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
