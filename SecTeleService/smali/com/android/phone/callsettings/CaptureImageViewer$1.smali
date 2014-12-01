.class Lcom/android/phone/callsettings/CaptureImageViewer$1;
.super Ljava/lang/Object;
.source "CaptureImageViewer.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    iput-object p1, p0, Lcom/android/phone/callsettings/CaptureImageViewer$1;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1    # Landroid/view/View;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer$1;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    # getter for: Lcom/android/phone/callsettings/CaptureImageViewer;->mSelectedFilePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/callsettings/CaptureImageViewer;->access$000(Lcom/android/phone/callsettings/CaptureImageViewer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/CaptureImageViewer$1;->this$0:Lcom/android/phone/callsettings/CaptureImageViewer;

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/CaptureImageViewer;->showDialog(I)V

    :cond_0
    return v1
.end method
