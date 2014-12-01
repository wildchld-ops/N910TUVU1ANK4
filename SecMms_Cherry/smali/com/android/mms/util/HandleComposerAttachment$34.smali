.class Lcom/android/mms/util/HandleComposerAttachment$34;
.super Ljava/lang/Object;
.source "HandleComposerAttachment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/HandleComposerAttachment;->showVideoResizingProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/HandleComposerAttachment;


# direct methods
.method constructor <init>(Lcom/android/mms/util/HandleComposerAttachment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment$34;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$34;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # getter for: Lcom/android/mms/util/HandleComposerAttachment;->mNativeAccess:Lcom/samsung/app/share/via/external/NativeAccess;
    invoke-static {v0}, Lcom/android/mms/util/HandleComposerAttachment;->access$900(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/samsung/app/share/via/external/NativeAccess;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$34;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    const/4 v1, 0x1

    # setter for: Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeCanceled:Z
    invoke-static {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->access$1002(Lcom/android/mms/util/HandleComposerAttachment;Z)Z

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$34;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # getter for: Lcom/android/mms/util/HandleComposerAttachment;->mNativeAccess:Lcom/samsung/app/share/via/external/NativeAccess;
    invoke-static {v0}, Lcom/android/mms/util/HandleComposerAttachment;->access$900(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/samsung/app/share/via/external/NativeAccess;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/share/via/external/NativeAccess;->stopProcessing()I

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$34;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # getter for: Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/util/HandleComposerAttachment;->access$1100(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
