.class Lcom/sec/android/app/camera/CropImage$4;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CropImage;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CropImage;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CropImage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CropImage$4;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "delete-image"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$4;->this$0:Lcom/sec/android/app/camera/CropImage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$4;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method
