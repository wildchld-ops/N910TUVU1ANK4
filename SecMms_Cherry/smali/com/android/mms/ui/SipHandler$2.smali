.class Lcom/android/mms/ui/SipHandler$2;
.super Ljava/lang/Object;
.source "SipHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SipHandler;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SipHandler;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SipHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SipHandler$2;->this$0:Lcom/android/mms/ui/SipHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SipHandler$2;->this$0:Lcom/android/mms/ui/SipHandler;

    # getter for: Lcom/android/mms/ui/SipHandler;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/ui/SipHandler;->access$000(Lcom/android/mms/ui/SipHandler;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->onSipStatusChanged()V

    return-void
.end method
