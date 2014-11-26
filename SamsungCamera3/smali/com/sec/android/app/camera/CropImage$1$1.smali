.class Lcom/sec/android/app/camera/CropImage$1$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CropImage$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/CropImage$1;

.field final synthetic val$b:Landroid/graphics/Bitmap;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CropImage$1;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CropImage$1$1;->this$1:Lcom/sec/android/app/camera/CropImage$1;

    iput-object p2, p0, Lcom/sec/android/app/camera/CropImage$1$1;->val$b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/sec/android/app/camera/CropImage$1$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage$1$1;->val$b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$1$1;->this$1:Lcom/sec/android/app/camera/CropImage$1;

    iget-object v1, v1, Lcom/sec/android/app/camera/CropImage$1;->this$0:Lcom/sec/android/app/camera/CropImage;

    # getter for: Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$100(Lcom/sec/android/app/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage$1$1;->val$b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage$1$1;->this$1:Lcom/sec/android/app/camera/CropImage$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage$1;->this$0:Lcom/sec/android/app/camera/CropImage;

    # getter for: Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;
    invoke-static {v0}, Lcom/sec/android/app/camera/CropImage;->access$200(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/CropImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$1$1;->val$b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage$1$1;->this$1:Lcom/sec/android/app/camera/CropImage$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage$1;->this$0:Lcom/sec/android/app/camera/CropImage;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CropImage;->access$102(Lcom/sec/android/app/camera/CropImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage$1$1;->this$1:Lcom/sec/android/app/camera/CropImage$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage$1;->this$0:Lcom/sec/android/app/camera/CropImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$1$1;->val$b:Landroid/graphics/Bitmap;

    # setter for: Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CropImage;->access$102(Lcom/sec/android/app/camera/CropImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage$1$1;->this$1:Lcom/sec/android/app/camera/CropImage$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage$1;->this$0:Lcom/sec/android/app/camera/CropImage;

    # getter for: Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;
    invoke-static {v0}, Lcom/sec/android/app/camera/CropImage;->access$200(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getScale()F

    move-result v0

    const/high16 v1, 0x3f800000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage$1$1;->this$1:Lcom/sec/android/app/camera/CropImage$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage$1;->this$0:Lcom/sec/android/app/camera/CropImage;

    # getter for: Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;
    invoke-static {v0}, Lcom/sec/android/app/camera/CropImage;->access$200(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/CropImageView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/app/camera/ImageViewTouchBase;->center(ZZ)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage$1$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
