.class public Lcom/android/phone/WiredHeadsetManager;
.super Ljava/lang/Object;
.source "WiredHeadsetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/WiredHeadsetManager$1;,
        Lcom/android/phone/WiredHeadsetManager$WiredHeadsetListener;,
        Lcom/android/phone/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mIsHeadsetPlugged:Z

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/WiredHeadsetManager$WiredHeadsetListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Lcom/android/phone/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/phone/WiredHeadsetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/WiredHeadsetManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/WiredHeadsetManager;->mIsHeadsetPlugged:Z

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/WiredHeadsetManager;->mListeners:Ljava/util/List;

    new-instance v1, Lcom/android/phone/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;-><init>(Lcom/android/phone/WiredHeadsetManager;Lcom/android/phone/WiredHeadsetManager$1;)V

    iput-object v1, p0, Lcom/android/phone/WiredHeadsetManager;->mReceiver:Lcom/android/phone/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/WiredHeadsetManager;->mReceiver:Lcom/android/phone/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/phone/WiredHeadsetManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/WiredHeadsetManager;Z)V
    .locals 0
    .param p0    # Lcom/android/phone/WiredHeadsetManager;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/phone/WiredHeadsetManager;->onHeadsetConnection(Z)V

    return-void
.end method

.method private notifyListeners()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/WiredHeadsetManager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/WiredHeadsetManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/WiredHeadsetManager$WiredHeadsetListener;

    iget-boolean v2, p0, Lcom/android/phone/WiredHeadsetManager;->mIsHeadsetPlugged:Z

    invoke-interface {v1, v2}, Lcom/android/phone/WiredHeadsetManager$WiredHeadsetListener;->onWiredHeadsetConnection(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onHeadsetConnection(Z)V
    .locals 3
    .param p1    # Z

    sget-object v0, Lcom/android/phone/WiredHeadsetManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wired headset connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iput-boolean p1, p0, Lcom/android/phone/WiredHeadsetManager;->mIsHeadsetPlugged:Z

    invoke-direct {p0}, Lcom/android/phone/WiredHeadsetManager;->notifyListeners()V

    return-void
.end method


# virtual methods
.method public addWiredHeadsetListener(Lcom/android/phone/WiredHeadsetManager$WiredHeadsetListener;)V
    .locals 1
    .param p1    # Lcom/android/phone/WiredHeadsetManager$WiredHeadsetListener;

    iget-object v0, p0, Lcom/android/phone/WiredHeadsetManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/WiredHeadsetManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public isHeadsetPlugged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/WiredHeadsetManager;->mIsHeadsetPlugged:Z

    return v0
.end method
