.class Lcom/android/phone/UsimDownload$10;
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

    iput-object p1, p0, Lcom/android/phone/UsimDownload$10;->this$0:Lcom/android/phone/UsimDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    const-string v0, "UsimDownload"

    const-string v1, "Press OK Button "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/UsimDownload$10;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;
    invoke-static {v0}, Lcom/android/phone/UsimDownload;->access$400(Lcom/android/phone/UsimDownload;)Lcom/android/phone/UsimDownload$ScreenMode;

    move-result-object v0

    sget-object v1, Lcom/android/phone/UsimDownload$ScreenMode;->KtRegister:Lcom/android/phone/UsimDownload$ScreenMode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/UsimDownload$10;->this$0:Lcom/android/phone/UsimDownload;

    # invokes: Lcom/android/phone/UsimDownload;->queryRequestKtOtaReg()V
    invoke-static {v0}, Lcom/android/phone/UsimDownload;->access$2100(Lcom/android/phone/UsimDownload;)V

    iget-object v0, p0, Lcom/android/phone/UsimDownload$10;->this$0:Lcom/android/phone/UsimDownload;

    sget-object v1, Lcom/android/phone/UsimDownload$ScreenMode;->KtNumRegistering:Lcom/android/phone/UsimDownload$ScreenMode;

    # invokes: Lcom/android/phone/UsimDownload;->updateScreen(Lcom/android/phone/UsimDownload$ScreenMode;)V
    invoke-static {v0, v1}, Lcom/android/phone/UsimDownload;->access$1400(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/UsimDownload$10;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;
    invoke-static {v0}, Lcom/android/phone/UsimDownload;->access$400(Lcom/android/phone/UsimDownload;)Lcom/android/phone/UsimDownload$ScreenMode;

    move-result-object v0

    sget-object v1, Lcom/android/phone/UsimDownload$ScreenMode;->LGTRegisterMain:Lcom/android/phone/UsimDownload$ScreenMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/UsimDownload$10;->this$0:Lcom/android/phone/UsimDownload;

    # invokes: Lcom/android/phone/UsimDownload;->placeCallforOTA()Z
    invoke-static {v0}, Lcom/android/phone/UsimDownload;->access$2200(Lcom/android/phone/UsimDownload;)Z

    iget-object v0, p0, Lcom/android/phone/UsimDownload$10;->this$0:Lcom/android/phone/UsimDownload;

    sget-object v1, Lcom/android/phone/UsimDownload$ScreenMode;->LGTNumRegistering:Lcom/android/phone/UsimDownload$ScreenMode;

    # invokes: Lcom/android/phone/UsimDownload;->updateScreen(Lcom/android/phone/UsimDownload$ScreenMode;)V
    invoke-static {v0, v1}, Lcom/android/phone/UsimDownload;->access$1400(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)V

    iget-object v0, p0, Lcom/android/phone/UsimDownload$10;->this$0:Lcom/android/phone/UsimDownload;

    const/4 v1, 0x1

    # invokes: Lcom/android/phone/UsimDownload;->queryRequestSetOtaReg(I)V
    invoke-static {v0, v1}, Lcom/android/phone/UsimDownload;->access$1300(Lcom/android/phone/UsimDownload;I)V

    goto :goto_0
.end method
