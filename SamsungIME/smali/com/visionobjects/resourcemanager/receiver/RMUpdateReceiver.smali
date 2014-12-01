.class public Lcom/visionobjects/resourcemanager/receiver/RMUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RMUpdateReceiver.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mlanguagePacksManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/visionobjects/resourcemanager/receiver/RMUpdateReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/visionobjects/resourcemanager/receiver/RMUpdateReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/resourcemanager/VOLanguagePackManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/visionobjects/resourcemanager/receiver/RMUpdateReceiver;->mlanguagePacksManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    return-void
.end method

.method private processUpdateFailure(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/resourcemanager/receiver/RMUpdateReceiver;->mlanguagePacksManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    invoke-virtual {v0, p1}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->updateFailure(Ljava/lang/String;)V

    return-void
.end method

.method private processUpdateSuccess(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/visionobjects/resourcemanager/receiver/RMUpdateReceiver;->mlanguagePacksManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    invoke-virtual {v0, p1}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->updateSuccess(Ljava/lang/String;)V

    sget-object v0, Lcom/visionobjects/resourcemanager/receiver/RMUpdateReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected update success received for language "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, -0x2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.visionobjects.resourcemanager.EXTRA_LANG"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.visionobjects.resourcemanager.EXTRA_UPDATE_RESULT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/visionobjects/resourcemanager/receiver/RMUpdateReceiver;->processUpdateSuccess(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-ne v1, v5, :cond_1

    invoke-direct {p0, v0, v5}, Lcom/visionobjects/resourcemanager/receiver/RMUpdateReceiver;->processUpdateFailure(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    if-ne v1, v4, :cond_2

    invoke-direct {p0, v0, v4}, Lcom/visionobjects/resourcemanager/receiver/RMUpdateReceiver;->processUpdateFailure(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/visionobjects/resourcemanager/receiver/RMUpdateReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown update result code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
