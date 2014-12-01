.class public Lcom/visionobjects/resourcemanager/receiver/RMDeleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RMDeleteReceiver.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLanguagePacksManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/visionobjects/resourcemanager/receiver/RMDeleteReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/visionobjects/resourcemanager/receiver/RMDeleteReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/resourcemanager/VOLanguagePackManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/visionobjects/resourcemanager/receiver/RMDeleteReceiver;->mLanguagePacksManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.visionobjects.resourcemanager.ACTION_DELETE_LANG_RESULT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.visionobjects.resourcemanager.EXTRA_DELETE_RESULT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.visionobjects.resourcemanager.EXTRA_LANG"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/visionobjects/resourcemanager/receiver/RMDeleteReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "> onReceive = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/visionobjects/resourcemanager/receiver/RMDeleteReceiver;->mLanguagePacksManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    invoke-virtual {v2, v1}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->removeLanguage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
