.class Lcom/android/mms/util/HandleComposerAttachment$33;
.super Ljava/lang/Thread;
.source "HandleComposerAttachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/HandleComposerAttachment;->nativeAccessForShareviaObj(Lcom/samsung/app/share/via/external/ShareviaObj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/HandleComposerAttachment;

.field final synthetic val$obj:Lcom/samsung/app/share/via/external/ShareviaObj;


# direct methods
.method constructor <init>(Lcom/android/mms/util/HandleComposerAttachment;Lcom/samsung/app/share/via/external/ShareviaObj;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment$33;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iput-object p2, p0, Lcom/android/mms/util/HandleComposerAttachment$33;->val$obj:Lcom/samsung/app/share/via/external/ShareviaObj;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$33;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # getter for: Lcom/android/mms/util/HandleComposerAttachment;->mNativeAccess:Lcom/samsung/app/share/via/external/NativeAccess;
    invoke-static {v0}, Lcom/android/mms/util/HandleComposerAttachment;->access$900(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/samsung/app/share/via/external/NativeAccess;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment$33;->val$obj:Lcom/samsung/app/share/via/external/ShareviaObj;

    invoke-virtual {v0, v1}, Lcom/samsung/app/share/via/external/NativeAccess;->startProcessing(Lcom/samsung/app/share/via/external/ShareviaObj;)I

    move-result v0

    sput v0, Lcom/android/mms/util/HandleComposerAttachment;->mNativeAccessReturnValue:I

    return-void
.end method
