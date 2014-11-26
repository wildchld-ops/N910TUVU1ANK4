.class Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl$2;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;->onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

.field final synthetic val$dataInner:Landroid/sec/clipboard/data/ClipboardData;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl$2;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl$2;->val$dataInner:Landroid/sec/clipboard/data/ClipboardData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl$2;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl$2;->val$dataInner:Landroid/sec/clipboard/data/ClipboardData;

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->pasteClipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14000(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/sec/clipboard/data/ClipboardData;)V

    return-void
.end method
