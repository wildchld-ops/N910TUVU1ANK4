.class Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardDataPasteEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IClipboardDataPasteEventImpl"
.end annotation


# instance fields
.field private final mBinder:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl$1;-><init>(Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;->mBinder:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;->mBinder:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

    return-object v0
.end method

.method public onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 3
    .param p1    # Landroid/sec/clipboard/data/ClipboardData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mClipboardHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14100(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl$2;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl$2;-><init>(Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;Landroid/sec/clipboard/data/ClipboardData;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
