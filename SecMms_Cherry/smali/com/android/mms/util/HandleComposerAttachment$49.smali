.class Lcom/android/mms/util/HandleComposerAttachment$49;
.super Landroid/os/Handler;
.source "HandleComposerAttachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/HandleComposerAttachment;
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

    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment$49;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const-string v0, "Mms/HandleComposerAttachment"

    const-string v1, "mMyLocationHandler"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$49;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # getter for: Lcom/android/mms/util/HandleComposerAttachment;->mMyAddress:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/util/HandleComposerAttachment;->access$1900(Lcom/android/mms/util/HandleComposerAttachment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$49;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iget-boolean v0, v0, Lcom/android/mms/util/HandleComposerAttachment;->mIsRemovedLocationListener:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$49;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/mms/util/HandleComposerAttachment;->mIsRemovedLocationListener:Z

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$49;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment$49;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # getter for: Lcom/android/mms/util/HandleComposerAttachment;->mMyAddress:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/util/HandleComposerAttachment;->access$1900(Lcom/android/mms/util/HandleComposerAttachment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$49;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    const/4 v1, 0x0

    # invokes: Lcom/android/mms/util/HandleComposerAttachment;->finishGetMyLocation(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->access$2000(Lcom/android/mms/util/HandleComposerAttachment;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
