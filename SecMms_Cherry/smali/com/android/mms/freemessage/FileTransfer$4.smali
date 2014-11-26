.class Lcom/android/mms/freemessage/FileTransfer$4;
.super Ljava/lang/Thread;
.source "FileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/freemessage/FileTransfer;->nativeAccessForShareviaObj(Lcom/samsung/app/share/via/external/ShareviaObj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/freemessage/FileTransfer;

.field final synthetic val$obj:Lcom/samsung/app/share/via/external/ShareviaObj;


# direct methods
.method constructor <init>(Lcom/android/mms/freemessage/FileTransfer;Lcom/samsung/app/share/via/external/ShareviaObj;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/freemessage/FileTransfer$4;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    iput-object p2, p0, Lcom/android/mms/freemessage/FileTransfer$4;->val$obj:Lcom/samsung/app/share/via/external/ShareviaObj;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/freemessage/FileTransfer$4;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    # getter for: Lcom/android/mms/freemessage/FileTransfer;->mNativeAccess:Lcom/samsung/app/share/via/external/NativeAccess;
    invoke-static {v0}, Lcom/android/mms/freemessage/FileTransfer;->access$1300(Lcom/android/mms/freemessage/FileTransfer;)Lcom/samsung/app/share/via/external/NativeAccess;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/freemessage/FileTransfer$4;->val$obj:Lcom/samsung/app/share/via/external/ShareviaObj;

    invoke-virtual {v0, v1}, Lcom/samsung/app/share/via/external/NativeAccess;->startProcessing(Lcom/samsung/app/share/via/external/ShareviaObj;)I

    move-result v0

    sput v0, Lcom/android/mms/freemessage/FileTransfer;->mNativeAccessReturnValue:I

    return-void
.end method
