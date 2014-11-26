.class Lcom/android/phone/UsimDownload$2;
.super Ljava/lang/Object;
.source "UsimDownload.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UsimDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UsimDownload;


# direct methods
.method constructor <init>(Lcom/android/phone/UsimDownload;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/UsimDownload$2;->this$0:Lcom/android/phone/UsimDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "UsimDownload"

    const-string v1, "mSMSRunnable!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/UsimDownload$2;->this$0:Lcom/android/phone/UsimDownload;

    # invokes: Lcom/android/phone/UsimDownload;->queryRequestKtOtaRegSendMsg()V
    invoke-static {v0}, Lcom/android/phone/UsimDownload;->access$000(Lcom/android/phone/UsimDownload;)V

    return-void
.end method
