.class Lcom/sec/android/app/camera/CropImage$5;
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

    iput-object p1, p0, Lcom/sec/android/app/camera/CropImage$5;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage$5;->this$0:Lcom/sec/android/app/camera/CropImage;

    # invokes: Lcom/sec/android/app/camera/CropImage;->onSaveClicked()V
    invoke-static {v0}, Lcom/sec/android/app/camera/CropImage;->access$500(Lcom/sec/android/app/camera/CropImage;)V

    return-void
.end method
