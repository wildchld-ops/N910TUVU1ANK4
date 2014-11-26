.class Lcom/android/phone/PhotoRingScreen$5$1;
.super Ljava/lang/Object;
.source "PhotoRingScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhotoRingScreen$5;->onReceive(Lcom/android/phone/CallMessageConstants$RequestType;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/PhotoRingScreen$5;


# direct methods
.method constructor <init>(Lcom/android/phone/PhotoRingScreen$5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhotoRingScreen$5$1;->this$1:Lcom/android/phone/PhotoRingScreen$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen$5$1;->this$1:Lcom/android/phone/PhotoRingScreen$5;

    iget-object v0, v0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->mPM:Lcom/android/phone/PhotoRingMgr;
    invoke-static {v0}, Lcom/android/phone/PhotoRingScreen;->access$100(Lcom/android/phone/PhotoRingScreen;)Lcom/android/phone/PhotoRingMgr;

    move-result-object v1

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen$5$1;->this$1:Lcom/android/phone/PhotoRingScreen$5;

    iget-object v0, v0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->PRUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/PhotoRingScreen;->access$2200(Lcom/android/phone/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/com.android.phone/files/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen$5$1;->this$1:Lcom/android/phone/PhotoRingScreen$5;

    iget-object v0, v0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->PRUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/PhotoRingScreen;->access$2200(Lcom/android/phone/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhotoringUtil;->isImagePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "photoring_data.png"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/PhotoRingMgr;->downloadContent(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen$5$1;->this$1:Lcom/android/phone/PhotoRingScreen$5;

    iget-object v0, v0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    const/4 v1, 0x1

    # setter for: Lcom/android/phone/PhotoRingScreen;->needDownContent:Z
    invoke-static {v0, v1}, Lcom/android/phone/PhotoRingScreen;->access$1802(Lcom/android/phone/PhotoRingScreen;Z)Z

    return-void

    :cond_0
    const-string v0, "photoring_data.mp4"

    goto :goto_0
.end method
