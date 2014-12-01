.class Lcom/android/mms/ui/MmsSinglePageActivity$21;
.super Ljava/lang/Object;
.source "MmsSinglePageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsSinglePageActivity;->addAttachmentOneView(Lcom/android/mms/model/AttachmentModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private attachment:Lcom/android/mms/model/AttachmentModel;

.field final synthetic this$0:Lcom/android/mms/ui/MmsSinglePageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageActivity$21;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/mms/ui/MmsSinglePageActivity;->staticAttachment:Lcom/android/mms/model/AttachmentModel;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity$21;->attachment:Lcom/android/mms/model/AttachmentModel;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity$21;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity$21;->attachment:Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v1}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    # invokes: Lcom/android/mms/ui/MmsSinglePageActivity;->saveAttachFile(Landroid/net/Uri;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$1400(Lcom/android/mms/ui/MmsSinglePageActivity;Landroid/net/Uri;)V

    return-void
.end method
