.class Lcom/android/mms/util/HandleComposerAttachment$46;
.super Ljava/lang/Object;
.source "HandleComposerAttachment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/HandleComposerAttachment;->getMyLocation()V
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

    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment$46;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$46;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # getter for: Lcom/android/mms/util/HandleComposerAttachment;->mMyAddress:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/util/HandleComposerAttachment;->access$1900(Lcom/android/mms/util/HandleComposerAttachment;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Mms/HandleComposerAttachment"

    const-string v1, "find my location - Time out"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$46;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    const/4 v1, 0x1

    # invokes: Lcom/android/mms/util/HandleComposerAttachment;->finishGetMyLocation(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->access$2000(Lcom/android/mms/util/HandleComposerAttachment;Z)V

    :cond_0
    return-void
.end method
