.class Lcom/android/mms/ui/MessageListItem$StickerDrawingAsyncTask;
.super Landroid/os/AsyncTask;
.source "MessageListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StickerDrawingAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private stickerId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$StickerDrawingAsyncTask;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/mms/ui/MessageListItem$StickerDrawingAsyncTask;->stickerId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListItem$StickerDrawingAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 3
    .param p1    # [Ljava/lang/Void;

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$StickerDrawingAsyncTask;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListItem;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$StickerDrawingAsyncTask;->stickerId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/orca/shop/client/library/StickerHelper;->createStickerDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/AnimationDrawable;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "Mms/MessageListItem"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .param p1    # Ljava/lang/Object;

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$StickerDrawingAsyncTask;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mStickerView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$1600(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f020048

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$StickerDrawingAsyncTask;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mStickerView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$1600(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    instance-of v2, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$StickerDrawingAsyncTask;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mStickerView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$1600(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$StickerDrawingAsyncTask;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mStickerView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$1600(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem$StickerDrawingAsyncTask;->stickerId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    instance-of v2, p1, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$StickerDrawingAsyncTask;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mStickerView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$1600(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$StickerDrawingAsyncTask;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListItem;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$StickerDrawingAsyncTask;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mStickerView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$1600(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$StickerDrawingAsyncTask;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mStickerView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$1600(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/ImageView;

    move-result-object v1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_0
    return-void
.end method
