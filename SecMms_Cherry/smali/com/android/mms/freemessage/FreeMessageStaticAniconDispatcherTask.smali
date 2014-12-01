.class public Lcom/android/mms/freemessage/FreeMessageStaticAniconDispatcherTask;
.super Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;
.source "FreeMessageStaticAniconDispatcherTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOADING_PRESENT_DELAY:I = 0x1f4

.field private static final TAG:Ljava/lang/String;

.field private static final TRANSITION_DURATION:I = 0x64


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/mms/freemessage/FreeMessageStaticAniconDispatcherTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/freemessage/FreeMessageStaticAniconDispatcherTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/mms/freemessage/FreeMessageStaticAniconDispatcherTask;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/mms/freemessage/FreeMessageStaticAniconDispatcherTask;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/mms/freemessage/FreeMessageStaticAniconDispatcherTask;->getView()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageStaticAniconDispatcherTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02009c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public getValue()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    invoke-super {p0}, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/mms/freemessage/FreeMessageStaticAniconDispatcherTask;->getValue()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/android/mms/freemessage/FreeMessageStaticAniconDispatcherTask;->getView()Landroid/widget/ImageView;

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
    .locals 2

    invoke-virtual {p0}, Lcom/android/mms/freemessage/FreeMessageStaticAniconDispatcherTask;->getView()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->setView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/freemessage/FreeMessageStaticAniconDispatcherTask;->getValue()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/sec/orca/shop/client/library/GraphicUtils;->recycleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public onDispatch()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, p0, v1, v2}, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->runOnUiThread(Ljava/util/concurrent/Callable;J)V

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageStaticAniconDispatcherTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/orca/shop/client/library/AbstractResourceDispatcherTask;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/sec/orca/shop/client/library/StickerHelper;->createShortcutAniconDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public onPostDispatch(Ljava/lang/Object;Z)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/mms/freemessage/FreeMessageStaticAniconDispatcherTask;->getView()Landroid/widget/ImageView;

    move-result-object v4

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v0, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz p1, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/Drawable;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    new-instance v3, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v5, v7

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-direct {v3, v5}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v5, 0x64

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/mms/freemessage/FreeMessageStaticAniconDispatcherTask;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020048

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method

.method public onPreDispatch()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/mms/freemessage/FreeMessageStaticAniconDispatcherTask;->getView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void
.end method
