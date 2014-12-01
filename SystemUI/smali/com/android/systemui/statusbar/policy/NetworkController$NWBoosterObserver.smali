.class Lcom/android/systemui/statusbar/policy/NetworkController$NWBoosterObserver;
.super Landroid/database/ContentObserver;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NWBoosterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NWBoosterObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iget-object v2, p1, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smart_bonding"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    # setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterSettingEnabled:Z
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$002(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    const-string v0, "STATUSBAR-NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NWBoosterObserver NWBoosterObserver() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterSettingEnabled:Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$000(Lcom/android/systemui/statusbar/policy/NetworkController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NWBoosterObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NWBoosterObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_bonding"

    const/4 v5, -0x2

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    # setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterSettingEnabled:Z
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$002(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NWBoosterObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    const-string v0, "STATUSBAR-NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NWBoosterObserver onChange() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NWBoosterObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterSettingEnabled:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$000(Lcom/android/systemui/statusbar/policy/NetworkController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
