.class Lcom/android/mms/ui/MmsSinglePageActivity$14;
.super Ljava/lang/Object;
.source "MmsSinglePageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsSinglePageActivity;->setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/android/mms/model/VideoModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mm:Lcom/android/mms/model/MediaModel;

.field final synthetic this$0:Lcom/android/mms/ui/MmsSinglePageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageActivity$14;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/mms/ui/MmsSinglePageActivity;->staticVideoModel:Lcom/android/mms/model/VideoModel;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity$14;->mm:Lcom/android/mms/model/MediaModel;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity$14;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity$14;->mm:Lcom/android/mms/model/MediaModel;

    # invokes: Lcom/android/mms/ui/MmsSinglePageActivity;->saveAttachFile(Lcom/android/mms/model/MediaModel;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$800(Lcom/android/mms/ui/MmsSinglePageActivity;Lcom/android/mms/model/MediaModel;)V

    return-void
.end method
