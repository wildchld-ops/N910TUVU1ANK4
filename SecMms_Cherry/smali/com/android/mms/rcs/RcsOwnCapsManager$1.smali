.class Lcom/android/mms/rcs/RcsOwnCapsManager$1;
.super Landroid/database/ContentObserver;
.source "RcsOwnCapsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/RcsOwnCapsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/RcsOwnCapsManager;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/RcsOwnCapsManager;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/mms/rcs/RcsOwnCapsManager$1;->this$0:Lcom/android/mms/rcs/RcsOwnCapsManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1    # Z

    const-string v0, "Mms/RcsOwnCapsManager"

    const-string v1, "onChange, configuration"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/rcs/RcsOwnCapsManager;->getInstance()Lcom/android/mms/rcs/RcsOwnCapsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/rcs/RcsOwnCapsManager;->setRcsConfiguration()V

    return-void
.end method
