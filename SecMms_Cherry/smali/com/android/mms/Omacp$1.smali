.class Lcom/android/mms/Omacp$1;
.super Landroid/database/ContentObserver;
.source "Omacp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/Omacp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/Omacp;


# direct methods
.method constructor <init>(Lcom/android/mms/Omacp;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/mms/Omacp$1;->this$0:Lcom/android/mms/Omacp;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1    # Z

    const-string v0, "Mms/Omacp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWsOmacpObserver.onChange(),selfUpdate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/Omacp$1;->this$0:Lcom/android/mms/Omacp;

    const/4 v1, 0x1

    # setter for: Lcom/android/mms/Omacp;->mIsOmacpChanged:Z
    invoke-static {v0, v1}, Lcom/android/mms/Omacp;->access$002(Lcom/android/mms/Omacp;Z)Z

    return-void
.end method
