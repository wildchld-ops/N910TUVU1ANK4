.class Lcom/android/phone/callsettings/CaptureImageViewer$3;
.super Ljava/lang/Object;
.source "CaptureImageViewer.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/CaptureImageViewer;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/CaptureImageViewer;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/CaptureImageViewer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/CaptureImageViewer$3;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .param p1    # Landroid/widget/AdapterView;
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/phone/callsettings/CaptureImageViewer$3;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    # getter for: Lcom/android/phone/callsettings/CaptureImageViewer;->isLongKeypress:Z
    invoke-static {v1}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$100(Lcom/android/phone/callsettings/CaptureImageViewer;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/callsettings/CaptureImageViewer$3;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    # getter for: Lcom/android/phone/callsettings/CaptureImageViewer;->mImageGallery:Landroid/widget/Gallery;
    invoke-static {v1}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$200(Lcom/android/phone/callsettings/CaptureImageViewer;)Landroid/widget/Gallery;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/CaptureImageViewer$3;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    # getter for: Lcom/android/phone/callsettings/CaptureImageViewer;->mImageGallery:Landroid/widget/Gallery;
    invoke-static {v2}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$200(Lcom/android/phone/callsettings/CaptureImageViewer;)Landroid/widget/Gallery;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Gallery;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->getPositionForView(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/callsettings/CaptureImageViewer$3;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    # getter for: Lcom/android/phone/callsettings/CaptureImageViewer;->mImageGallery:Landroid/widget/Gallery;
    invoke-static {v1}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$200(Lcom/android/phone/callsettings/CaptureImageViewer;)Landroid/widget/Gallery;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Gallery;->setSelection(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/CaptureImageViewer$3;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-virtual {v1, p2, v0, p4, p5}, Lcom/android/phone/callsettings/CaptureImageViewer;->imageSelected(Landroid/view/View;IJ)V

    iget-object v1, p0, Lcom/android/phone/callsettings/CaptureImageViewer$3;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    # getter for: Lcom/android/phone/callsettings/CaptureImageViewer;->mSelectedFilePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$000(Lcom/android/phone/callsettings/CaptureImageViewer;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/CaptureImageViewer$3;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-virtual {v1, v3}, Lcom/android/phone/callsettings/CaptureImageViewer;->showDialog(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/CaptureImageViewer$3;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    # setter for: Lcom/android/phone/callsettings/CaptureImageViewer;->isLongKeypress:Z
    invoke-static {v1, v3}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$102(Lcom/android/phone/callsettings/CaptureImageViewer;Z)Z

    :cond_1
    :goto_0
    return v3

    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/CaptureImageViewer$3;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    # getter for: Lcom/android/phone/callsettings/CaptureImageViewer;->mImageGallery:Landroid/widget/Gallery;
    invoke-static {v1}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$200(Lcom/android/phone/callsettings/CaptureImageViewer;)Landroid/widget/Gallery;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/Gallery;->setSelection(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/CaptureImageViewer$3;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/android/phone/callsettings/CaptureImageViewer;->imageSelected(Landroid/view/View;IJ)V

    iget-object v1, p0, Lcom/android/phone/callsettings/CaptureImageViewer$3;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    # getter for: Lcom/android/phone/callsettings/CaptureImageViewer;->mSelectedFilePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$000(Lcom/android/phone/callsettings/CaptureImageViewer;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/CaptureImageViewer$3;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-virtual {v1, v3}, Lcom/android/phone/callsettings/CaptureImageViewer;->showDialog(I)V

    goto :goto_0
.end method
