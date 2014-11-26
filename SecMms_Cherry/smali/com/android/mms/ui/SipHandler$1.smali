.class Lcom/android/mms/ui/SipHandler$1;
.super Ljava/lang/Object;
.source "SipHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SipHandler;->showSipDelayed(Landroid/os/Handler;I)V
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

    iput-object p1, p0, Lcom/android/mms/ui/SipHandler$1;->this$0:Lcom/android/mms/ui/SipHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SipHandler$1;->this$0:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v0}, Lcom/android/mms/ui/SipHandler;->showSip()V

    return-void
.end method
