.class Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl$1;
.super Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

    invoke-direct {p0}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;->onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V

    return-void
.end method
