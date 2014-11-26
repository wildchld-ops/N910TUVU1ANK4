.class Lcom/android/server/am/MultiWindowPolicy$3;
.super Landroid/database/ContentObserver;
.source "MultiWindowPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiWindowPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiWindowPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowPolicy;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/am/MultiWindowPolicy$3;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .param p1    # Z

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy$3;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    # getter for: Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/am/MultiWindowPolicy;->access$000(Lcom/android/server/am/MultiWindowPolicy;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "multi_window_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy$3;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    # getter for: Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/am/MultiWindowPolicy;->access$000(Lcom/android/server/am/MultiWindowPolicy;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "kids_home_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy$3;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    # getter for: Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/am/MultiWindowPolicy;->access$000(Lcom/android/server/am/MultiWindowPolicy;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "car_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    # getter for: Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z
    invoke-static {}, Lcom/android/server/am/MultiWindowPolicy;->access$100()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "MultiWindowPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bMultiWindow="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,bKidsMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,bCarMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v2, :cond_1

    if-gtz v1, :cond_1

    if-lez v0, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy$3;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v4, v4, Lcom/android/server/am/MultiWindowPolicy;->mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy$3;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v5, v5, Lcom/android/server/am/MultiWindowPolicy;->mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    if-eqz v2, :cond_3

    const/4 v3, 0x1

    :cond_3
    sput-boolean v3, Lcom/android/server/am/MultiWindowPolicy;->sExposuerTitleBarMenu:Z

    return-void
.end method
