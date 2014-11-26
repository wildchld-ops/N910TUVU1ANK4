.class Lcom/android/phone/UsimDownload$11;
.super Ljava/lang/Object;
.source "UsimDownload.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/UsimDownload;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/android/phone/UsimDownload$11;->this$0:Lcom/android/phone/UsimDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    const-string v0, "UsimDownload"

    const-string v1, "Press YES Button "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/UsimDownload$11;->this$0:Lcom/android/phone/UsimDownload;

    const/4 v1, 0x1

    # setter for: Lcom/android/phone/UsimDownload;->mRetry:Z
    invoke-static {v0, v1}, Lcom/android/phone/UsimDownload;->access$2302(Lcom/android/phone/UsimDownload;Z)Z

    iget-object v0, p0, Lcom/android/phone/UsimDownload$11;->this$0:Lcom/android/phone/UsimDownload;

    # invokes: Lcom/android/phone/UsimDownload;->queryRequestKtOtaReg()V
    invoke-static {v0}, Lcom/android/phone/UsimDownload;->access$2100(Lcom/android/phone/UsimDownload;)V

    iget-object v0, p0, Lcom/android/phone/UsimDownload$11;->this$0:Lcom/android/phone/UsimDownload;

    sget-object v1, Lcom/android/phone/UsimDownload$ScreenMode;->KtNumRegistering:Lcom/android/phone/UsimDownload$ScreenMode;

    # setter for: Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;
    invoke-static {v0, v1}, Lcom/android/phone/UsimDownload;->access$402(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)Lcom/android/phone/UsimDownload$ScreenMode;

    iget-object v0, p0, Lcom/android/phone/UsimDownload$11;->this$0:Lcom/android/phone/UsimDownload;

    iget-object v1, p0, Lcom/android/phone/UsimDownload$11;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;
    invoke-static {v1}, Lcom/android/phone/UsimDownload;->access$400(Lcom/android/phone/UsimDownload;)Lcom/android/phone/UsimDownload$ScreenMode;

    move-result-object v1

    # invokes: Lcom/android/phone/UsimDownload;->updateScreen(Lcom/android/phone/UsimDownload$ScreenMode;)V
    invoke-static {v0, v1}, Lcom/android/phone/UsimDownload;->access$1400(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)V

    return-void
.end method
